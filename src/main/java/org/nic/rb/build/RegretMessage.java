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

public class RegretMessage extends AbstractITextPdfView {
	
	
	public RegretMessage() {
	}
    
	@Override
    protected void buildPdfDocument(Map<String, Object> model, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		
		Chunk letter_head = new Chunk("Regret Message");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
        doc.add(letter_face);
        doc.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        doc.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your email dated on 04.03.2020. \r\n" + 
        		" We regret to inform you that due to pre occupied schedule, the Hon’ble Governor of Telangana is not in a position to attend the function. \r\n" + 
        		" However, The Hon’ble Governor of Telangana has conveyed her best wishes to you in all your present and future Endeavors.");
        doc.add(subject_letter);
        
        doc.close();
   }
}