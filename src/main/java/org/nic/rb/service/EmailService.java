package org.nic.rb.service;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

import org.nic.rb.entity.AppointmentEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailParseException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class EmailService {
	
	@Autowired
    private JavaMailSender javaMailSender;
	
	public void sendEmail(AppointmentEntity appointment, Integer type) {
		String fileName = null;
		
		MimeMessage message = javaMailSender.createMimeMessage();

		   try{
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setTo("");
			switch (type) {
			case 0:
				helper.setSubject("Application Confirmation");
				fileName =  "Application Confirmation.pdf";
				break;
			case 1:
				helper.setSubject("Appointment Confirmation");
				fileName =  "Appointment Confirmation.pdf";
				break;
			case 2:
				helper.setSubject("Regret Appointment");
				fileName =  "Regret Appointment.pdf";
				break;
			case 3:
				helper.setSubject("Regret Message");
				fileName =  "Regret Message.pdf";
				break;
			case 4:
				helper.setSubject("Invitation Confirmation");
				fileName =  "Invitation Confirmation.pdf";
				break;
			}
	        helper.setText("Greetings,");

			
			ByteArrayOutputStream outputStream = null;
	        
	            //construct the text body part
	            MimeBodyPart textBodyPart = new MimeBodyPart();

	            outputStream = new ByteArrayOutputStream();
	            switch (type) {
	            case 0:
	            	applicationConfirm(appointment, outputStream);
					break;
				case 1:
					appointmentConfirm(appointment, outputStream);
					break;
				case 2:
					regretAppointment(appointment, outputStream);
					break;
				case 3:
					regretMessage(appointment, outputStream);
					break;
				case 4:
					invitationConfirmation(appointment, outputStream);
					break;
				default:
					break;
				}
	            
	            byte[] bytes = outputStream.toByteArray();
	             
	            DataSource dataSource = new ByteArrayDataSource(bytes, "application/pdf");
	            MimeBodyPart pdfBodyPart = new MimeBodyPart();
	            pdfBodyPart.setDataHandler(new DataHandler(dataSource));
	            pdfBodyPart.setFileName(fileName);
	                         
	            MimeMultipart mimeMultipart = new MimeMultipart();
	            mimeMultipart.addBodyPart(textBodyPart);
	            mimeMultipart.addBodyPart(pdfBodyPart);
			
	            helper.addAttachment(fileName, dataSource);

		     }catch (Exception e) {
			throw new MailParseException(e);
		     }
		   javaMailSender.send(message);
	}
	
	public void applicationConfirm(AppointmentEntity appointment ,OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        Chunk letter_head = new Chunk("Application Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Thank You, Your Application is received in Telangana Raj Bhavan on "+appointment.getReg_date()+". The decision will be conveyed shortly.");
        document.add(subject_letter);
        
        document.close();
    }
	
	public void appointmentConfirm(AppointmentEntity appointment ,OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        Chunk letter_head = new Chunk("Appointment Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your mail dated "+appointment.getReg_date() + 
        		" The Hon’ble Governor of Telangana is pleased to give an appointment at "+appointment.getAppoint_time()+" hrs on " + appointment.getAppoint_date() +
        		" Please reach Raj Bhavan at least 30 min in advance.");
        document.add(subject_letter);
        
        document.close();
    }
	
	public void regretAppointment(AppointmentEntity appointment ,OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        Chunk letter_head = new Chunk("Regret Appointment");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your email dated on "+appointment.getReg_date() + 
        		" We regret to inform you that due to pre occupied schedule, the Hon’ble Governor of Telangana is not in a position to give appointment." + 
        		"However, The Hon’ble Governor of Telangana has conveyed her best wishes to you in all your present and future Endeavors.");
        document.add(subject_letter);
        
        document.close();
    }
	
	public void regretMessage(AppointmentEntity appointment ,OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        Chunk letter_head = new Chunk("Regret Message");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your email dated on "+appointment.getReg_date() + 
        		" We regret to inform you that due to pre occupied schedule, the Hon’ble Governor of Telangana is not in a position to attend the function." + 
        		"However, The Hon’ble Governor of Telangana has conveyed her best wishes to you in all your present and future Endeavors.");
        document.add(subject_letter);
        
        document.close();
    }
	
	public void invitationConfirmation(AppointmentEntity appointment ,OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        Chunk letter_head = new Chunk("Invitation Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer to your letter dated on "+appointment.getReg_date() + 
        		" The Hon’ble Governor is pleased to give her kind tentatively consent to be the Chief Guest for  "+appointment.getEvent_details().getEvent_name()+" scheduled on "+appointment.getAppoint_date()+" at St. Francis College for Women, Begumpet ,Hyderabad." + 
        		"Please arrange to send the following immediately.\r\n" + 
        		"1. A comprehensive note on the program.\r\n" + 
        		"2. Draft speech talking points.\r\n" + 
        		"3. Draft minute to minute program.\r\n" + 
        		"4. Dais plan.\r\n" + 
        		"For any queries you may please contact ADC to Governor on phone number 040-23310521.");
        document.add(subject_letter);
        
        document.close();
    }
}
