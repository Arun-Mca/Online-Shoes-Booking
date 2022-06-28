package com.example.demo.report;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import com.example.demo.model.KidsProduct;
import com.example.demo.model.MensProducts;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class ExportPdfKids {

	public static ByteArrayInputStream productReport(ArrayList<KidsProduct> kidsShoesList,float amount,String userName) {

		Document document = new Document();
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		Font headFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
		
		Paragraph p1 = new Paragraph("Product Summary ", headFont);
        p1.setAlignment(Paragraph.ALIGN_CENTER);
		Paragraph p2 = new Paragraph("Bill Receipt", headFont);
        p2.setAlignment(Paragraph.ALIGN_CENTER);
        
        Paragraph p3 = new Paragraph("Name: "+ userName, headFont);
        p3.setAlignment(Paragraph.ALIGN_CENTER);

        Paragraph p4 = new Paragraph("Total: "+ amount,headFont);
        p4.setAlignment(Paragraph.ALIGN_CENTER);
        
               

      //To display time 
      		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm");
      		LocalDateTime now = LocalDateTime.now();
      		Paragraph p5 = new Paragraph("*This receipt was generated on " + dtf.format(now),headFont);
            p5.setAlignment(Paragraph.ALIGN_LEFT);
      		
       
		try {

			PdfPTable table = new PdfPTable(3);
			table.setWidthPercentage(80);
			table.setWidths(new int[] {4,4,4});
			
			PdfPCell hcell;
			hcell = new PdfPCell(new Phrase("Product ID", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Product Name", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			hcell = new PdfPCell(new Phrase("Price", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_CENTER);
			table.addCell(hcell);

			 

			for (KidsProduct kidsShoes : kidsShoesList) {

				PdfPCell cell;
				cell = new PdfPCell(new Phrase(String.valueOf(kidsShoes.getId())));
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(kidsShoes.getProductName()));
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);

				cell = new PdfPCell(new Phrase(kidsShoes.getPrice()));
				cell.setHorizontalAlignment(Element.ALIGN_CENTER);
				table.addCell(cell);
			
			}
            
			PdfWriter.getInstance(document, out);
			document.open();
			document.add(p1);
	        document.add(Chunk.NEWLINE );
	        document.add(p2);
	        document.add(Chunk.NEWLINE );
	        document.add(p3);
			document.add(Chunk.NEWLINE );
			document.add(table);
			document.add(Chunk.NEWLINE );
			document.add(p4);
			document.add(Chunk.NEWLINE );
	        document.add(p5);

			document.close();

			
}
		catch(DocumentException ex) {
			
		}
		return new ByteArrayInputStream(out.toByteArray());
	}
}