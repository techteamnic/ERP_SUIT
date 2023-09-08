package org.nic.rb.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TemporalType;

import org.hibernate.Session;
import org.hibernate.transform.Transformers;
import org.nic.rb.constants.ApplicationStatus;
import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.entity.AppointmentDateEntity;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.exceptions.AppointmentAtSameTimeException;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.ApplicationStatusModel;
import org.nic.rb.model.AppointmentsModel;
import org.nic.rb.mongo.MongoOperations;
import org.nic.rb.utils.DateUtils;
import org.nic.rb.utils.RandomUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AppointmentDaoImpl implements AppointmentDao{
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private EntityManager entityManager;
	
	@Autowired
	private ApplicationStatus applicationStatus;
	
	@Autowired
	private MongoOperations mongoOperations;
	
	@Override
	public Integer registerAppointment(AppointmentEntity appointment) {
		AppointmentDateEntity app_date = null;
		/*TypedQuery<Integer> q = entityManager.createQuery("function ('day_seq_id',?)", Integer.class);
		q.setParameter(0, DateUtils.getCurrDate());*/
		
		StoredProcedureQuery query = entityManager
				.createStoredProcedureQuery("day_seq_id")
				.registerStoredProcedureParameter(
				    "app_date",
				    Date.class,
				    ParameterMode.IN
				)
				.registerStoredProcedureParameter(
				    "seq_id",
				    Integer.class,
				    ParameterMode.OUT
				)
				.setParameter("app_date", DateUtils.getCurrDateYTD());
				query.execute();
				
			Integer	seq_id = (Integer) query.getOutputParameterValue("seq_id");
			if(seq_id == null) {
				app_date = new AppointmentDateEntity();
				app_date.setAppoint_date(DateUtils.getCurrentDate());
				app_date.setDay_seq(1);
				entityManager.unwrap(Session.class).save(app_date);
				seq_id = app_date.getDay_seq();
			}
			appointment.setApplication_no(appointment.getApplication_no().concat(String.format("%04d", seq_id)));
				
		return (Integer) entityManager.unwrap(Session.class).save(appointment);
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<AppointmentsModel> getAllRegAppointmentsByStatus(Integer appl_status) {
	 //return entityManager.unwrap(Session.class).createQuery("from AppointmentEntity").list();
		if(appl_status == 4)
			return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,pref_date_1,pref_date_2,pref_date_3,appoint_date,\r\n" + 
			 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
			 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
			 		"(select message_doc_id from messagedetails where msg_id = app.msg_id), (select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status = :appl_status and appoint_date < :curr_date")
					 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
					 .setParameter("appl_status", appl_status+1)
					 .setParameter("curr_date", DateUtils.getCurrentDate(), TemporalType.DATE)
					 .list();
		else 
			return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,pref_date_1,pref_date_2,pref_date_3,appoint_date,\r\n" + 
		 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
		 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
		 		"(select message_doc_id from messagedetails where msg_id = app.msg_id), (select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status = :appl_status")
				 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
				 .setParameter("appl_status", appl_status)
				 .list();
	}

	@Override
	public AppointmentEntity getAppointmentById(Integer visitor_id) {
		return entityManager.unwrap(Session.class).get(AppointmentEntity.class, visitor_id);
	}

	@Override
	public Integer appointmentActionStatus(ActionAppModel actionmodel) {
		String SQL_ACTIONSTATUS = "update AppointmentEntity set appl_status=:appl_status, appl_forward_to=:appl_forward_to, "
				+ "appl_status_remark=:appl_status_remark, letter_sent=:letter_sent, "
				+ "sms_sent=:sms_sent where visit_id=:visit_id";
		Integer count = entityManager.unwrap(Session.class).createQuery(SQL_ACTIONSTATUS)
		.setParameter("appl_status", actionmodel.getAppl_status())
		.setParameter("appl_forward_to", actionmodel.getAppl_forward_to())
		.setParameter("appl_status_remark", actionmodel.getAppl_status_remark())
		.setParameter("letter_sent", actionmodel.isLetter_sent())
		.setParameter("sms_sent", true)
		.setParameter("visit_id", actionmodel.getVisit_id()).executeUpdate();
		return count; 
	}

	@SuppressWarnings("deprecation")
	@Override
	public ApplicationStatusModel getApplStatusReport() {
		String SQL_STATUS = "select count(*) as appl_action,(select count(*) as appl_accepted from appointments where appl_status = :appl_accepted), (select count(*) as appl_regretted \r\n" + 
				"from appointments where appl_status = :appl_regretted), (select count(*) as appl_pending from appointments where appl_status = :appl_pending), (select count(*) \r\n" + 
				"as appl_closed from appointments where appl_status = :appl_closed),(select count(*) as appl_approved from appointments where appl_status = :appl_approved) from appointments where appl_status = :appl_action";
		return (ApplicationStatusModel) entityManager.unwrap(Session.class).createSQLQuery(SQL_STATUS).setResultTransformer(Transformers.aliasToBean(ApplicationStatusModel.class))
				.setParameter("appl_action", applicationStatus.getAction())
				.setParameter("appl_accepted", applicationStatus.getAccepted())
				.setParameter("appl_regretted", applicationStatus.getRegretted())
				.setParameter("appl_pending", applicationStatus.getPending())
				.setParameter("appl_closed", applicationStatus.getClosed())
				.setParameter("appl_approved", applicationStatus.getApproved())
				.getSingleResult();	
	}

	@Override
	public AppointmentEntity getApplicationByApplNo(String appl_Reg) {
		/*return (AppointmentEntity) entityManager.unwrap(Session.class).createQuery("from AppointmentEntity where application_no = :appl_Reg")
				.setParameter("appl_Reg", appl_Reg).getSingleResult();
				// if no result found throws exception
				*/
		return (AppointmentEntity) entityManager.unwrap(Session.class).createQuery("from AppointmentEntity where application_no = :appl_Reg")
				.setParameter("appl_Reg", appl_Reg).uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public Integer appointmentConformDate(ActionAppModel actionmodel) {
		List<AppointmentEntity> appoint_cond = null;
		appoint_cond = entityManager.unwrap(Session.class).createQuery("from AppointmentEntity where appoint_date = :appoint_date and appoint_time = :appoint_time")
					.setParameter("appoint_date", DateUtils.getDateFromStringDTY(actionmodel.getAppoint_date()), TemporalType.DATE)
					.setParameter("appoint_time", actionmodel.getAppoint_time())
					.list();
		if(appoint_cond != null && appoint_cond.size() > 0) {
			throw new AppointmentAtSameTimeException("Appointment already exists at the given time. please choose another.");
		}else {
			//appoint_date_time=:appoint_date_time
			String SQL_ACTIONSTATUS = "update AppointmentEntity set appl_status=:appl_status,appoint_date=:appoint_date,"
					+ "appoint_time=:appoint_time,appl_appv_status_remark=:appl_appv_status_remark,letter_sent=:letter_sent,"
					+ "sms_sent=:sms_sent where visit_id=:visit_id";
			Integer count = entityManager.unwrap(Session.class).createQuery(SQL_ACTIONSTATUS)
					.setParameter("appl_status", applicationStatus.getApproved())
					.setParameter("appoint_date", DateUtils.getDateFromStringDTY(actionmodel.getAppoint_date()))
					.setParameter("appoint_time", actionmodel.getAppoint_time())
					.setParameter("appl_appv_status_remark", actionmodel.getAppl_appv_status_remark())
					.setParameter("letter_sent", actionmodel.isLetter_sent())
					.setParameter("sms_sent", true)
					.setParameter("visit_id", actionmodel.getVisit_id()).executeUpdate();
			return count;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ApplicationStatusModel> getApplApprovedList() {
		String SQL_STATUS = "select count(*) as appl_approved,appoint_date from appointments where appl_status=:approved_status group by appoint_date order by appoint_date";
		return (List<ApplicationStatusModel>) entityManager.unwrap(Session.class).createSQLQuery(SQL_STATUS).setResultTransformer(Transformers.aliasToBean(ApplicationStatusModel.class))
				.setParameter("approved_status", applicationStatus.getApproved())
				.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AppointmentEntity> getAppointmentByDate(String appoint_date) {
		return entityManager.unwrap(Session.class)
				.createQuery("from AppointmentEntity where appl_status=:approved_status and appoint_date=:appoint_date")
				.setParameter("approved_status", applicationStatus.getApproved())
				.setParameter("appoint_date", DateUtils.getDateFromStringDTY(appoint_date)).list();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<AppointmentsModel> changeDashBoardAppointments(Integer appl_status, Integer visit_type) {
		return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,\r\n" + 
		 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
		 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
		 		"(select message_doc_id from messagedetails where msg_id = app.msg_id), (select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status = :appl_status AND purpose_visit = :purpose_visit")
				 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
				 .setParameter("appl_status", appl_status)
				 .setParameter("purpose_visit", visit_type)
				 .list();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<AppointmentsModel> changeDashBoardByMonth(Integer appl_status, Integer month, Integer purpose) {
		if(purpose == null)
			return entityManager.unwrap(Session.class).createSQLQuery(
				"select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,\r\n" + 
				"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
				"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
				"(select message_doc_id from messagedetails where msg_id = app.msg_id), (select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app \r\n" + 
				"where appl_status = :appl_status AND EXTRACT(MONTH FROM reg_date) = :sel_month and EXTRACT(YEAR FROM reg_date) = :curr_year")
				 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
				 .setParameter("appl_status", appl_status)
				 .setParameter("sel_month", month)
				 .setParameter("curr_year", DateUtils.getyearFromDate())
				 .list();
		else
			return entityManager.unwrap(Session.class).createSQLQuery(
					"select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,\r\n" + 
					"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
					"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
					"(select message_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app \r\n" + 
					"where appl_status = :appl_status AND purpose_visit = :purpose AND EXTRACT(MONTH FROM reg_date) = :sel_month and EXTRACT(YEAR FROM reg_date) = :curr_year")
					 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
					 .setParameter("appl_status", appl_status)
					 .setParameter("purpose", purpose)
					 .setParameter("sel_month", month)
					 .setParameter("curr_year", DateUtils.getyearFromDate())
					 .list();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<AppointmentsModel> getAllRegAppointmentsByStatusAndPurpose(Integer appl_status, Integer purpose) {
		//return entityManager.unwrap(Session.class).createQuery("from AppointmentEntity").list();
		/*if(appl_status == 4)
			return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,pref_date_1,pref_date_2,pref_date_3,appoint_date,\r\n" + 
			 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
			 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
			 		"(select message_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status = :appl_status and appoint_date < :curr_date")
					 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
					 .setParameter("appl_status", appl_status+1)
					 .setParameter("curr_date", DateUtils.getCurrentDate(), TemporalType.DATE)
					 .list();
		else */
			return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,pref_date_1,pref_date_2,pref_date_3,appoint_date,\r\n" + 
		 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
		 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
		 		"(select message_doc_id from messagedetails where msg_id = app.msg_id),\r\n" + 
		 		"(select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status = :appl_status and purpose_visit = :purpose")
				 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
				 .setParameter("appl_status", appl_status)
				 .setParameter("purpose", purpose)
				 .list();
	}

	@Override
	public Integer appointmentConformMessage(ActionAppModel actionmodel) {
		String doc_id = RandomUtils.getUUID().toString();
		String SQL_ACTIONSTATUS = "update AppointmentEntity set appl_status=:appl_status,"
				+ "appl_appv_status_remark=:appl_appv_status_remark,letter_sent=:letter_sent,"
				+ "sms_sent=:sms_sent,appoint_msgdoc_id=:doc_id where visit_id=:visit_id";
		Integer count = entityManager.unwrap(Session.class).createQuery(SQL_ACTIONSTATUS)
				.setParameter("appl_status", applicationStatus.getApproved())
				.setParameter("appl_appv_status_remark", actionmodel.getAppl_appv_status_remark())
				.setParameter("letter_sent", actionmodel.isLetter_sent())
				.setParameter("sms_sent", true)
				.setParameter("doc_id", doc_id)
				.setParameter("visit_id", actionmodel.getVisit_id()).executeUpdate();
		
		if(count > 0) {
			if(actionmodel.getAppoint_file() != null && !actionmodel.getAppoint_file().isEmpty())
				mongoOperations.inserDocumentMsg(actionmodel.getAppoint_file(), actionmodel, doc_id, "appoint_message_doc");
		}
		return count;
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<AppointmentsModel> getAllRegAppointmentsByStatus(Integer appl_status, Integer forwarded_to) {
		return entityManager.unwrap(Session.class).createSQLQuery("select applicant_name,application_no,visit_id,visit_support_doc_id as support_doc_id,reg_date,pref_date_1,pref_date_2,pref_date_3,appoint_date,\r\n" + 
		 		"(select atm.applicant_type from applicant_type_mst as atm where atm.id = app.applicant_type),\r\n" + 
		 		"(select pvm.purpose_visit from purpose_visit_mst as pvm where pvm.id = app.purpose_visit),\r\n" + 
		 		"(select message_doc_id from messagedetails where msg_id = app.msg_id), (select org_evnt_celb_doc_id from messagedetails where msg_id = app.msg_id) from appointments as app where appl_status IS NULL AND appl_forward_to= :forward_id")
				 .setResultTransformer(Transformers.aliasToBean(AppointmentsModel.class))
				 .setParameter("forward_id", forwarded_to)
				 .list();
	}
}
