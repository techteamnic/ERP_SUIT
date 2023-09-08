package org.nic.rb.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.nic.rb.constants.ApplicationStatus;
import org.nic.rb.dao.AppointmentDao;
import org.nic.rb.dao.MasterDao;
import org.nic.rb.entity.AdditionalVisitorsEntity;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.entity.EventDetailsEntity;
import org.nic.rb.entity.MessageDetailsEntity;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.ApplicationStatusModel;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.model.AppointmentsModel;
import org.nic.rb.mongo.MongoOperations;
import org.nic.rb.utils.DateUtils;
import org.nic.rb.utils.RandomUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class AppointmentServiceImpl implements AppointmentService{
	
	@Autowired
	private AppointmentDao appointmentDao;
	
	@Autowired
	private ApplicationStatus applicationStatus;
	
	@Autowired
	private MongoOperations mongoOperations;
	
	@Autowired
	private MasterDao masterDao;
	
	@Override
	public AppointmentEntity submitAppointment(AppointmentModel appointment_model, HttpServletRequest request) {
		AdditionalVisitorsEntity add_entity = null;
		List<AdditionalVisitorsEntity> add_visitors = null;
		
		EventDetailsEntity event_entity = null;
		MessageDetailsEntity msg_entity = null;
		
		AppointmentEntity app_entity = new AppointmentEntity();
		
		if(appointment_model.getAddl_visitor_document() != null && appointment_model.getAddl_visitor_document().length > 0)
		   add_visitors = new ArrayList<AdditionalVisitorsEntity>(appointment_model.getAddl_visitor_document().length);
		
		for(int  i = 0; appointment_model.getAddl_visitor_document() != null && i < appointment_model.getAddl_visitor_document().length; i++) {
			add_entity = new AdditionalVisitorsEntity();
			
			if(!appointment_model.getAddl_visitor_document()[i].isEmpty()) {
				add_entity.setAddl_visitor_name(appointment_model.getAddl_visitor_name()[i]);
				add_entity.setAddl_visitor_identity_type(appointment_model.getAddl_visitor_identity_type()[i]);
				add_entity.setAddl_visitor_id_number(appointment_model.getAddl_visitor_id_number()[i]);
				add_entity.setAddl_visitor_doc_id(RandomUtils.getUUID());
				add_entity.setAddl_visitor_mobile(appointment_model.getAddl_visitor_mobile()[i]);
				add_entity.setAppoint_id(app_entity);
				
				if(add_visitors != null)
					   add_visitors.add(add_entity);
			}
		}
		
		BeanUtils.copyProperties(appointment_model, app_entity);
		app_entity.setPurpose_visit(Integer.parseInt(appointment_model.getPurpose_visit()));
		app_entity.setApplicant_type(Integer.parseInt(appointment_model.getApplicant_type()));
		
		if(appointment_model.getDistrict() != null && !appointment_model.getDistrict().isEmpty())
			app_entity.setDistrict(Integer.parseInt(appointment_model.getDistrict()));
		
		app_entity.setAdd_visitors(add_visitors);
		
		if(Integer.parseInt(appointment_model.getPurpose_visit()) == 6) {
			event_entity = new EventDetailsEntity();
			BeanUtils.copyProperties(appointment_model, event_entity);
			event_entity.setEvent_type_invitation(Integer.parseInt(appointment_model.getEvent_type_invitation()));
			event_entity.setEvent_desc_doc_id(RandomUtils.getUUID());
			event_entity.setEvent_date(DateUtils.getDateFromStringYTD(appointment_model.getEvent_date()));
			app_entity.setEvent_details(event_entity);
		}
		
		if(Integer.parseInt(appointment_model.getPurpose_visit()) == 3) {
			msg_entity = new MessageDetailsEntity();
			BeanUtils.copyProperties(appointment_model, msg_entity);
			msg_entity.setMessage_doc_id(RandomUtils.getUUID());
			msg_entity.setOrg_evnt_celb_doc_id(RandomUtils.getUUID());
			app_entity.setMessage_details(msg_entity);
		}
		
		if(appointment_model.getPref_date_1() != null && !appointment_model.getPref_date_1().isEmpty())
			app_entity.setPref_date_1(DateUtils.getDateFromStringYTD(appointment_model.getPref_date_1()));
		if(appointment_model.getPref_date_2() != null && !appointment_model.getPref_date_2().isEmpty())
			app_entity.setPref_date_2(DateUtils.getDateFromStringYTD(appointment_model.getPref_date_2()));
		if(appointment_model.getPref_date_3() != null && !appointment_model.getPref_date_3().isEmpty())
			app_entity.setPref_date_3(DateUtils.getDateFromStringYTD(appointment_model.getPref_date_3()));
		
		
		/*app_entity.setPref_date_1(appointment_model.getPref_date_1());
		app_entity.setPref_date_2(appointment_model.getPref_date_2());
		app_entity.setPref_date_3(appointment_model.getPref_date_3());
		*/
		
		Date reg_date = DateUtils.getCurrentDate();
		app_entity.setReg_date(reg_date);
		app_entity.setIp(request.getRemoteAddr());
		app_entity.setTs(reg_date);
		app_entity.setIs_active(true);
		app_entity.setAppl_status(applicationStatus.getAction());
		
		// Reciept
		if(appointment_model.getReceipt_mode() == null || appointment_model.getReceipt_mode().isEmpty())
			app_entity.setReceipt_mode(0);
		else {
			app_entity.setReceipt_mode(Integer.parseInt(appointment_model.getReceipt_mode()));
			app_entity.setReceipt_date(DateUtils.getDateFromStringYTD(appointment_model.getReceipt_date()));
		}
			
		
		app_entity.setApplication_no(RandomUtils.getApplicationRegNo(Integer.parseInt(appointment_model.getPurpose_visit())));
		/*while (!this.isApplicationNoAlreadyExist(app_entity.getApplication_no())) {
			app_entity.setApplication_no(RandomUtils.getApplicationRegNo());
		}*/
		
		//Documents Store
		app_entity.setVisitor_doc_id(RandomUtils.getUUID());
		app_entity.setVisit_support_doc_id(RandomUtils.getUUID());
		
		
		if(appointmentDao.registerAppointment(app_entity) > 0) {
				if(appointment_model.getVisitor_document() != null && !appointment_model.getVisitor_document().isEmpty())
					mongoOperations.inserDocument(appointment_model.getVisitor_document(), app_entity, app_entity.getVisitor_doc_id(), "personal_img_tab");
				
				if(appointment_model.getVisit_support_document() != null && !appointment_model.getVisit_support_document().isEmpty())
					mongoOperations.inserDocument(appointment_model.getVisit_support_document(), app_entity, app_entity.getVisit_support_doc_id(), "visitor_support_doc");
			
				if(appointment_model.getEvent_desc_document() != null && !appointment_model.getEvent_desc_document().isEmpty())
					mongoOperations.inserDocument(appointment_model.getEvent_desc_document(), app_entity, app_entity.getEvent_details().getEvent_desc_doc_id(), "event_desc_doc");
				
				if(appointment_model.getOrg_evnt_celb_document() != null && !appointment_model.getOrg_evnt_celb_document().isEmpty()) {
					mongoOperations.inserDocument(appointment_model.getOrg_evnt_celb_document(), app_entity, app_entity.getMessage_details().getOrg_evnt_celb_doc_id(), "org_evnt_celb_doc");
				}
				
				if(appointment_model.getDraft_document() != null && !appointment_model.getDraft_document().isEmpty())
					mongoOperations.inserDocument(appointment_model.getDraft_document(), app_entity, app_entity.getMessage_details().getMessage_doc_id(), "message_doc");
				
				for(int  i = 0; appointment_model.getAddl_visitor_name() != null && i < appointment_model.getAddl_visitor_name().length; i++) {
					if(appointment_model.getAddl_visitor_document() != null && appointment_model.getAddl_visitor_document()[i] != null && !appointment_model.getAddl_visitor_document()[i].isEmpty())
						mongoOperations.inserDocument(appointment_model.getAddl_visitor_document()[i], app_entity, app_entity.getAdd_visitors().get(i).getAddl_visitor_doc_id(), "addl_visitor_doc");
				}
				app_entity.setPrint_reg_Date(DateUtils.printRegDate(app_entity.getReg_date()));
			return app_entity;
		}
		else 
			return null;
	}

	@Override
	public List<AppointmentsModel> loadAllRegAppointments(Integer appl_status) {
		return appointmentDao.getAllRegAppointmentsByStatus(appl_status);
	}

	@Override
	public AppointmentEntity loadAppointmentById(Integer visitor_id) {
		
		AppointmentEntity appoint_entity = appointmentDao.getAppointmentById(visitor_id);
		
		appoint_entity.setApplicant_type_mst(masterDao.getmasterLabelByIdAndTable(appoint_entity.getApplicant_type(), "applicant_type_mst", "applicant_type"));
		appoint_entity.setPurpose_visit_mst(masterDao.getmasterLabelByIdAndTable(appoint_entity.getPurpose_visit(), "purpose_visit_mst", "purpose_visit"));
		if(appoint_entity.getDistrict() != null)
			appoint_entity.setDistrict_mst(masterDao.getmasterLabelByIdAndTable(appoint_entity.getDistrict(), "district_mst", "district"));
		
		if(appoint_entity.getEvent_details() != null)
			appoint_entity.setEvent_type_mst(masterDao.getmasterLabelByIdAndTable(appoint_entity.getEvent_details().getEvent_type_invitation(), "type_invitaion_mst", "type_invitaion"));
		
		return appoint_entity;
	}

	@Override
	public Integer appointmentAction(ActionAppModel actionmodel, HttpServletRequest request) {
		return appointmentDao.appointmentActionStatus(actionmodel);
	}

	@Override
	public ApplicationStatusModel getApplStatusReportService() {
		return appointmentDao.getApplStatusReport();
	}
	
	public boolean isApplicationNoAlreadyExist(String appl_Reg) {
		return appointmentDao.getApplicationByApplNo(appl_Reg) == null;
	}

	@Override
	public Integer appointmentConformService(ActionAppModel actionmodel) {
		if(actionmodel.getAppoint_file() == null || actionmodel.getAppoint_file().isEmpty())
			return appointmentDao.appointmentConformDate(actionmodel);
		else
			return appointmentDao.appointmentConformMessage(actionmodel);
	}

	@Override
	public List<ApplicationStatusModel> getApplApprovedListService() {
		return appointmentDao.getApplApprovedList();
	}

	@Override
	public List<AppointmentEntity> getAppointmentByDateService(String input_date) {
		return appointmentDao.getAppointmentByDate(input_date);
	}

	@Override
	public List<AppointmentsModel> changeDashBoardAppointments(Integer appl_status, Integer visit_type) {
		return appointmentDao.changeDashBoardAppointments(appl_status, visit_type);
	}

	@Override
	public List<AppointmentsModel> changeDashBoardByMonth(Integer appl_status, Integer month, Integer purpose) {
		return appointmentDao.changeDashBoardByMonth(appl_status, month, purpose);
	}

	@Override
	public List<AppointmentsModel> loadAllRegAppointmentsByPurpose(Integer appl_status, Integer pupose) {
		return appointmentDao.getAllRegAppointmentsByStatusAndPurpose(appl_status, pupose);
	}

	@Override
	public List<AppointmentsModel> loadAllRegAppointments(Integer appl_status, Integer forwarded_id) {
		return appointmentDao.getAllRegAppointmentsByStatus(appl_status, forwarded_id);
	}
}
