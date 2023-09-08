package org.nic.rb.dao;

import java.util.List;

import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.ApplicationStatusModel;
import org.nic.rb.model.AppointmentsModel;

public interface AppointmentDao {
	
	public Integer registerAppointment(AppointmentEntity appointment);
	public List<AppointmentsModel> getAllRegAppointmentsByStatus(Integer appl_status);
	public List<AppointmentsModel> getAllRegAppointmentsByStatusAndPurpose(Integer appl_status, Integer purpose);
	public AppointmentEntity getAppointmentById(Integer visitor_id);
	public Integer appointmentActionStatus(ActionAppModel actionmodel);
	public ApplicationStatusModel getApplStatusReport();
	public AppointmentEntity getApplicationByApplNo(String appl_Reg);
	
	
	public Integer appointmentConformDate(ActionAppModel actionmodel);
	public Integer appointmentConformMessage(ActionAppModel actionmodel);
	
	public List<ApplicationStatusModel> getApplApprovedList();
	public List<AppointmentEntity> getAppointmentByDate(String appoint_date);
	public List<AppointmentsModel> changeDashBoardAppointments(Integer appl_status, Integer visit_type);
	public List<AppointmentsModel> changeDashBoardByMonth(Integer appl_status, Integer month, Integer purpose);

	//SECRETARY
	public List<AppointmentsModel> getAllRegAppointmentsByStatus(Integer appl_status, Integer forwarded_to);
}
