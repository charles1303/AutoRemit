package com.dataligence.autoremit.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.AgencyStaff;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.model.Transaction;
import com.dataligence.autoremit.model.User;
import com.dataligence.autoremit.repository.springdata.jpa.BaseRepository;
import com.dataligence.autoremit.repository.springdata.jpa.TransactionRepository;
import com.dataligence.autoremit.repository.springdata.jpa.UserRepository;
import com.dataligence.autoremit.utils.PdfBoxUtils;

@Service
public class TransactionService {
	
	public final static String originalPdf = "receipt_word3pdf.pdf";
	
		
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BaseRepository<?> baseRepository;
	
	@Transactional
	public void recordTransaction(Transaction transaction) throws Exception{
		transaction.setTransactionRef(generateTransactionReference(transaction.getPayer()));
		transactionRepository.saveAndFlush(transaction);
	}
	
	@Transactional
	public List<Transaction> getPendingTransactionsByAgency(String username) throws Exception{
		User user = userRepository.findByUsername(username);
		AgencyStaff staff = (AgencyStaff)user;
		
		return transactionRepository.find(staff.getAgency().getId());
	}
	
	@Transactional
	 public Transaction getTransaction(Long id) {
		return transactionRepository.findOne(id);
		
	}
	
	@Transactional(readOnly=true)
	 public List<Transaction> getAll() {
		return transactionRepository.findAll();
		
	}
	
	public Object getObject(Long id){
		return transactionRepository.findById(id);
	}
	
	@Transactional
	 public byte[] printTransaction(Long id) throws Exception {
		Transaction trxn =  transactionRepository.findOne(id);
		String generatedPdf = "receipt"+trxn.getTransactionRef()+".pdf";
		
		ClassLoader classLoader = this.getClass().getClassLoader();
        File fileSource = new File(classLoader.getResource(originalPdf).getFile());
        
		String filePath =  PdfBoxUtils.generateReceiptFromTransaction(fileSource.getAbsolutePath(), generatedPdf, trxn);
		
		File file = new File(filePath);
		FileInputStream fin = null;
		byte fileContent[] = new byte[(int)file.length()];
		try {
			fin = new FileInputStream(file);
			fin.read(fileContent);
			String s = new String(fileContent);
		}
		catch (FileNotFoundException e) {
			System.out.println("File not found" + e);
		}
		catch (IOException ioe) {
			System.out.println("Exception while reading file " + ioe);
		}
		finally {
			try {
				if (fin != null) {
					fin.close();
				}
			}
			catch (IOException ioe) {
				System.out.println("Error while closing stream: " + ioe);
			}
		}
		return fileContent;
	}
	
	public String generateTransactionReference(Payer payer){
		//generate a 4 digit integer 1000 <10000
		int randomPIN = (int)(Math.random()*9000)+1000;
		return "REF"+payer.getUsername()+"0000"+(this.getAll().size()+1)+String.valueOf(randomPIN);
	}

}
