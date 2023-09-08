package org.nic.rb.docs;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.awt.geom.Rectangle;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.ExceptionConverter;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class LetterGeneration extends AbstractITextPdfView {

	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		PdfPTable header = new PdfPTable(1);
        try {
            // set defaults
            header.setWidths(new int[]{24});
            header.setTotalWidth(527);
            header.setLockedWidth(true);
            header.getDefaultCell().setFixedHeight(40);
            header.getDefaultCell().setBorder(Rectangle.OUT_BOTTOM);
            header.getDefaultCell().setBorderColor(BaseColor.LIGHT_GRAY);

            // add text
            PdfPCell text = new PdfPCell();
            text.setBackgroundColor(BaseColor.BLUE);
            text.setPaddingBottom(15);
            text.setPaddingLeft(10);
            text.setBorder(Rectangle.OUT_BOTTOM);
            text.setBorderColor(BaseColor.LIGHT_GRAY);
            text.setHorizontalAlignment(Element.ALIGN_CENTER);
            
            Font head_font = new Font(FontFamily.HELVETICA, 12, Font.NORMAL, BaseColor.WHITE);
            Font letter_app = new Font(FontFamily.HELVETICA, 10, Font.NORMAL | Font.UNDERLINE, BaseColor.BLUE);
            
            Font align_text = new Font(FontFamily.HELVETICA, 8, Font.NORMAL, BaseColor.BLACK);
            
            Paragraph p_govt = new Paragraph("Government of Telangana");
            p_govt.setAlignment(Element.ALIGN_CENTER);
            p_govt.setFont(head_font);
            text.addElement(p_govt);
            
            Paragraph p_sec = new Paragraph("Governor's Secretariat, Raj Bhavan, Hyderabad.");
            p_sec.setAlignment(Element.ALIGN_CENTER);
            p_sec.setFont(head_font);
            text.addElement(p_sec);
            
//            text.addElement(new Phrase("Government of Telangana", new Font(FontFamily.HELVETICA, 12, Font.NORMAL, BaseColor.WHITE)));
//            text.addElement(new Phrase("Governor's Secretariat, Raj Bhavan, Hyderabad.", new Font(FontFamily.HELVETICA, 12, Font.NORMAL, BaseColor.WHITE)));
            header.addCell(text);
            document.add(header);
            
            Paragraph p_letter = new Paragraph("Letter No.2996/T2/S/2020, Dated:20.02.2020.", letter_app);
            p_letter.setAlignment(Element.ALIGN_CENTER);
            
            document.add(p_letter);
            
            document.add(new Paragraph("From", align_text));
            document.add(new Paragraph("The Secretary to Governor,", align_text));
            document.add(new Paragraph("Telangana Secretariat,", align_text));
            document.add(new Paragraph("Raj Bhavan, Hyderabad.", align_text));
            
            document.add( Chunk.NEWLINE );
            
            document.add(new Paragraph("To", align_text));
            document.add(new Paragraph("The Chief Secretary to Government,", align_text));
            document.add(new Paragraph("Telangana Secretariat, Hyderabad (w.e.)", align_text));
            
            document.add( Chunk.NEWLINE );
            
            document.add(new Paragraph("Sir,", align_text));
            document.add(new Paragraph("            Sub :- Request for appointment of 27 BC candidates of Nalgonda District as Secondary Grade Teachers under DSC, 1996 by implementing G.O.Rt.No.1294, Education (Ser.VIII) Department, dated: 09.1.2020- Petition- Forwarded.,", align_text));
            
            document.add( Chunk.NEWLINE );
            
            document.add(new Paragraph("            Ref :- Petition dt:27-1-2020 received from Sri D.Satyanarayana,State Vice President, Telangana B.C Sankshema Sangam (Youth Wing), Nalgonda.", align_text));
            
            document.add( Chunk.NEWLINE );
            
            document.add(new Paragraph("            Kindly find herewith the reference cited in original along with enclosures, which is self explanatory, for appropriate action as deemed fit.", align_text));
            
            document.add( Chunk.NEWLINE );
            
            document.add(new Paragraph("Copy to:", align_text));
            document.add(new Paragraph("The Principal Secretary to Chief Minister,", align_text));
            document.add(new Paragraph("Government of Telangana,", align_text));
            document.add(new Paragraph("Telangan Secretariat, Hyderabad.", align_text));
            
            document.add( Chunk.NEWLINE );
            
            Paragraph meta_faith = new Paragraph("Yours faithfully,", align_text);
            meta_faith.setAlignment(Element.ALIGN_RIGHT);
            document.add(meta_faith);
            Paragraph meta_name = new Paragraph("SD/- K.SURENDRA MOHAN.", align_text);
            meta_name.setAlignment(Element.ALIGN_RIGHT);
            document.add(meta_name);
            Paragraph meta_desig = new Paragraph("Secretary to Governor.", align_text);
            meta_desig.setAlignment(Element.ALIGN_RIGHT);
            document.add(meta_desig);
            // write content
            header.writeSelectedRows(0, -1, 34, 803, writer.getDirectContent());
        } catch(DocumentException de) {
            throw new ExceptionConverter(de);
        }
        document.close();
        response.setHeader("Content-Disposition", "attachment; filename=\"Appointment Confirmation.pdf\"");
        
	}

}
