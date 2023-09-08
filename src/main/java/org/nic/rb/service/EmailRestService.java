package org.nic.rb.service;

import java.util.ArrayList;
import java.util.List;

import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.model.EmailModel;
import org.nic.rb.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class EmailRestService {
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Value("${app.mail.url}")
	String email_url;
	
	List<EmailModel> emailList = null;
	EmailModel emailModel = null;
	String subject = null;
	String text = null;
	
	ObjectMapper objectMapper = new ObjectMapper();
	
	
	public void applicationConfirm(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Application Confirmation";
        text = "Sir / Madam,\r\n Thank You, Your Application is received in Telangana Raj Bhavan on "+appointment.getPrint_reg_Date()+". The decision will be conveyed shortly.";
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
        
    }
	
	public void appointmentConfirm(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Appointment Confirmation";
        text = "Sir / Madam,\r\n Please refer your mail dated "+appointment.getPrint_reg_Date() + 
        		", The Honorable Governor of Telangana is pleased to give an appointment at "+appointment.getAppoint_time()+" hrs on " + DateUtils.printRegDate(appointment.getAppoint_date()) +
        		". Please reach Raj Bhavan at least 30 min in advance.";
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
    }
	
	public void regretAppointment(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Regret Appointment";
        text = "Sir / Madam,\r\n Please refer your email dated on "+appointment.getPrint_reg_Date() + 
        		". We regret to inform you that due to pre occupied schedule, the Honorable Governor of Telangana is not in a position to give appointment." + 
        		"However, The Honorable Governor of Telangana has conveyed her best wishes to you in all your present and future Endeavors.";
        
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
    }
	
	public void regretMessage(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Regret Message";
        text =  "Sir / Madam,\r\n Please refer your email dated on "+appointment.getPrint_reg_Date() + 
        		". We regret to inform you that due to pre occupied schedule, the Honorable Governor of Telangana is not in a position to attend the function." + 
        		"However, The Honorable Governor of Telangana has conveyed her best wishes to you in all your present and future Endeavors.";
        
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
    }
	
	public void invitationConfirmation(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Invitation Confirmation";
        text = "Sir / Madam,\r\n Please refer to your letter dated on "+appointment.getPrint_reg_Date() + 
        		". The Honorable Governor is pleased to give her kind tentatively consent to be the Chief Guest for  "+appointment.getEvent_details().getEvent_name()+" scheduled on "+DateUtils.printRegDate(appointment.getAppoint_date())+" at " + appointment.getEvent_details().getEvent_location() 
    	   +	". Please arrange to send the following immediately.\r\n" + 
        		"1. A comprehensive note on the program.\r\n" + 
        		"2. Draft speech talking points.\r\n" + 
        		"3. Draft minute to minute program.\r\n" + 
        		"4. Dais plan.\r\n" + 
        		"For any queries you may please contact ADC to Governor on phone number 040-23310521.";
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
	}
	
	public void pendingMessage(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Pending Message";
        text =  "Sir / Madam,\r\n Please refer your email dated on "+appointment.getPrint_reg_Date() + 
        		". We regret to inform you that due to pre occupied schedule, the Honorable Governor of Telangana is not in a position to give appointment. your application in pending, further decision will be conveyed shortly.";
        
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
    }
	
	public void requestForMessage(AppointmentEntity appointment) throws Exception {
		appointment.setPrint_reg_Date(DateUtils.printRegDate(appointment.getReg_date()));
		emailList = new ArrayList<EmailModel>();
		emailModel = new EmailModel();
        subject = "Request for Message";
        text =  "Sir / madam, Please refer your mail dated on "+appointment.getPrint_reg_Date() + 
        		". The Message of the Honorable Governor is enclosed here with as requested With best wishes.";
    
        emailModel.setToemail(appointment.getEmail());
        emailModel.setSubject(subject);
        emailModel.setText(text);
        emailList.add(emailModel);
        restTemplate.postForObject(email_url, objectMapper.writeValueAsString(emailList), String.class);
    }
}
