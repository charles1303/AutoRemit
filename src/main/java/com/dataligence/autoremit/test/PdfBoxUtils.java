package com.dataligence.autoremit.test;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDDocumentCatalog;
import org.apache.pdfbox.pdmodel.interactive.form.PDAcroForm;
import org.apache.pdfbox.pdmodel.interactive.form.PDField;
import org.apache.pdfbox.pdmodel.interactive.form.PDNonTerminalField;

import com.dataligence.autoremit.model.Transaction;

public class PdfBoxUtils {
	
	private static PDDocument _pdfDocument;
	
	
public static void main(String[] args) {
		
		String originalPdf = "/home/charles/Downloads/Docs/myprojects/Revenue_Autoremit/receipt_word3pdf.pdf";
		String targetPdf = "/home/charles/Downloads/Docs/myprojects/Revenue_Autoremit/receipt_word3pdfCopied.pdf";
		
		try {
			populateAndCopy(originalPdf, targetPdf);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("Complete");
	}

private static void generateReceiptFromTransaction(String originalPdf, String targetPdf,Transaction trxn) throws IOException {
	_pdfDocument = PDDocument.load(new File(originalPdf));
	
	_pdfDocument.getNumberOfPages();
	printFields();  //Uncomment to see the fields in this document in console
	
	setField("payer", "Payer 1");
	setField("entryDate", new java.util.Date().toString());
	_pdfDocument.save(targetPdf);
	_pdfDocument.close();
}
 
	private static void populateAndCopy(String originalPdf, String targetPdf) throws IOException {
		_pdfDocument = PDDocument.load(new File(originalPdf));
		
		_pdfDocument.getNumberOfPages();
		printFields();  //Uncomment to see the fields in this document in console
		
		
		setField("entryDate", new java.util.Date().toString());
		setField("assessRef", "Assess Reference Number");
		setField("payer", "Payer Full name");
		setField("payerId", "PAYER001");
		setField("address", "Payer Full Address");
		setField("amount", "3,000.00");
		setField("amtInWords", "Three Thousand Naira Only");
		setField("revenueCode", "REV-CODE001");
		setField("paymtDetails", "Payment made for Revenue Item Road Worthiness (REV-CODE001) for the year 2016");
		setField("chairmanSign", "Chairman signs here");
		setField("postedBy", "BankTeller 1 and Agency Staff 7");
		_pdfDocument.save(targetPdf);
		_pdfDocument.close();
	}
	
    public static void setField(String name, String value ) throws IOException {
        PDDocumentCatalog docCatalog = _pdfDocument.getDocumentCatalog();
        PDAcroForm acroForm = docCatalog.getAcroForm();
        PDField field = acroForm.getField( name );
        if( field != null ) {
            field.setValue(value);
        }
        else {
            System.err.println( "No field found with name:" + name );
        }
    }
 
    @SuppressWarnings("rawtypes")
	public static void printFields() throws IOException {
        PDDocumentCatalog docCatalog = _pdfDocument.getDocumentCatalog();
        PDAcroForm acroForm = docCatalog.getAcroForm();
        List fields = acroForm.getFields();
        Iterator fieldsIter = fields.iterator();
 
        System.out.println(new Integer(fields.size()).toString() + " top-level fields were found on the form");
 
        while( fieldsIter.hasNext()) {
            PDField field = (PDField)fieldsIter.next();
            list(field);
        }
    }
    
    private static void list(PDField field) throws IOException
    {
        System.out.println("Fully Qualified Name=============="+field.getFullyQualifiedName());
        System.out.println("Partial Name========="+field.getPartialName());
        if (field instanceof PDNonTerminalField)
        {
            PDNonTerminalField nonTerminalField = (PDNonTerminalField) field;
            for (PDField child : nonTerminalField.getChildren())
            {
                list(child);
            }
        }
    }
    
    
}
