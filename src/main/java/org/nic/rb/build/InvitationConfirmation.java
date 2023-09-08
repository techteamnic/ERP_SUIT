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

public class InvitationConfirmation extends AbstractITextPdfView {
	
	
	public InvitationConfirmation() {
	}
    
	@Override
    protected void buildPdfDocument(Map<String, Object> model, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
		Chunk letter_head = new Chunk("Invitation Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
        doc.add(letter_face);
        doc.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        doc.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer to your letter dated on 2nd December,2019.\r\n" + 
        		"The Hon’ble Governor is pleased to give her kind tentatively consent to be the Chief Guest for  “Valedictory function of Diamond Jubilee celebration” scheduled on 27th January,2020 at St. Francis College for Women, Begumpet ,Hyderabad..\r\n" + 
        		"	Please arrange to send the following immediately.\r\n" + 
        		"	1. A comprehensive note on the program.\r\n" + 
        		"	2. Draft speech / talking points.\r\n" + 
        		"	3. Draft minute to minute program.\r\n" + 
        		"	4. Dais plan.\r\n" + 
        		"For any queries you may please contact ADC to Governor on phone number 040-23310521.");
        doc.add(subject_letter);
        
        doc.close();
   }
}