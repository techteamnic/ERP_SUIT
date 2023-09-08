package org.nic.rb.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.ApplicationStatusModel;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.model.AppointmentsModel;

public interface AppointmentService {
	public AppointmentEntity submitAppointment(AppointmentModel appointment_model, HttpServletRequest request);
	public List<AppointmentsModel> loadAllRegAppointments(Integer appl_status);
	public List<AppointmentsModel> loadAllRegAppointmentsByPurpose(Integer appl_status, Integer pupose);
	public AppointmentEntity loadAppointmentById(Integer visitor_id);
	public Integer appointmentAction(ActionAppModel actionmodel, HttpServletRequest request);
	public ApplicationStatusModel getApplStatusReportService();
	
	public Integer appointmentConformService(ActionAppModel actionmodel);
	public List<ApplicationStatusModel> getApplApprovedListService();
	public List<AppointmentEntity> getAppointmentByDateService(String input_date);
	
	public List<AppointmentsModel> changeDashBoardAppointments(Integer appl_status, Integer visit_type);
	public List<AppointmentsModel> changeDashBoardByMonth(Integer appl_status, Integer month, Integer purpose);
	
	
	//SECRETARY
	public List<AppointmentsModel> loadAllRegAppointments(Integer appl_status, Integer forwarded_id);
}
