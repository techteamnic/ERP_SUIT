package org.nic.rb.build;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

public class AppointmentConfirmation extends AbstractITextPdfView {
	
	
	public AppointmentConfirmation() {
	}
    
	@Override
    protected void buildPdfDocument(Map<String, Object> model, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
		Chunk letter_head = new Chunk("Appointment Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
        doc.add(letter_face);
        doc.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        doc.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your mail dated 09th April, 2020.\r\n" + 
        		"The Hon’ble Governor of Telangana is pleased to give an appointment at 16.00 hrs on 10th April 2020.\r\n" + 
        		"Please reach Raj Bhavan at least 30 min in advance.");
        doc.add(subject_letter);
        
        doc.close();
   }
}