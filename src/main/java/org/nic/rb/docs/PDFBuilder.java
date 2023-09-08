package org.nic.rb.docs;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nic.rb.entity.AdditionalVisitorsEntity;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.utils.DateUtils;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PDFBuilder extends AbstractITextPdfView {
	
	private static final String APPLICANT = " - APP";
	private static final String ADDLVISITOR = " - ADD";
	
	public PDFBuilder() {
	}
 
	@Override
    protected void buildPdfDocument(Map<String, Object> model, Document doc,
            PdfWriter writer, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
		int index = 1;
        doc.add(new Paragraph("Approved List"));
        
        response.setHeader("Content-Disposition", "attachment; filename=\"Approvrd List.pdf\"");
        
       PdfPTable table = new PdfPTable(6);
       table.setWidthPercentage(100.0f);
       table.setWidths(new float[] {1.0f,3.0f, 3.0f, 2.0f, 2.0f, 1.5f});
       table.setSpacingBefore(10);
        
       // define font for table header row
       Font font = FontFactory.getFont(FontFactory.HELVETICA);
       font.setColor(BaseColor.WHITE);
        
       // define table header cell
       PdfPCell cell = new PdfPCell();
       cell.setBackgroundColor(BaseColor.BLUE);
       cell.setPadding(5);
        
       // write table header
       cell.setPhrase(new Phrase("S.No", font));
       table.addCell(cell);
       
       cell.setPhrase(new Phrase("Application No", font));
       table.addCell(cell);
        
       cell.setPhrase(new Phrase("Applicant Name", font));
       table.addCell(cell);
       
       cell.setPhrase(new Phrase("ID Proof No", font));
       table.addCell(cell);
       
       cell.setPhrase(new Phrase("Date", font));
       table.addCell(cell);
       
       cell.setPhrase(new Phrase("Time", font));
       table.addCell(cell);
       @SuppressWarnings("unchecked")
       List<AppointmentEntity> approved_appoints = (List<AppointmentEntity>) model.get("approved_appoint");
       // write table row data
       for (AppointmentEntity approved_appoint : approved_appoints) {
    	   table.addCell(String.valueOf(index));
           table.addCell(approved_appoint.getApplication_no().concat(APPLICANT));
           table.addCell(approved_appoint.getApplicant_name());
           table.addCell(approved_appoint.getApplicant_id_no());
//           System.out.println(approved_appoint.getAppoint_date().toString());
           table.addCell(DateUtils.getStringDTYFromStringYTD(approved_appoint.getAppoint_date().toString()));
           table.addCell(approved_appoint.getAppoint_time());
           if(!approved_appoint.getAdd_visitors().isEmpty()) {
        	   for (AdditionalVisitorsEntity addl_visitor : approved_appoint.getAdd_visitors()) {
        		   table.addCell("");
        		   table.addCell(approved_appoint.getApplication_no().concat(ADDLVISITOR));
                   table.addCell(addl_visitor.getAddl_visitor_name());
                   table.addCell(addl_visitor.getAddl_visitor_id_number());
                   table.addCell(DateUtils.getStringDTYFromStringYTD(approved_appoint.getAppoint_date().toString()));
                   table.addCell(approved_appoint.getAppoint_time());
        	   }
           }
           index++;
       }
       doc.add(table);
    }
}