package com.dataligence.autoremit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.Corporate;
import com.dataligence.autoremit.model.Individual;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.repository.springdata.jpa.CorporateRepository;
import com.dataligence.autoremit.repository.springdata.jpa.IndividualRepository;
import com.dataligence.autoremit.repository.springdata.jpa.PayerRepository;

@Service
public class PayerService {
	
	@Autowired
	private PayerRepository payerRepository;
	
	@Autowired
	private IndividualRepository individualRepository;
	
	@Autowired
	private CorporateRepository corporateRepository;
	
	
	@Transactional(readOnly=true)
	 public List<Payer> getAll() {
		return payerRepository.findAll();
		
	}
	
	@Transactional
	 public Payer findPayer(Long id) {
		return payerRepository.findOne(id);
		
	}
	
	@Transactional(readOnly=true)
	 public List<Individual> getAllIndividuals() {
		return individualRepository.findAll();
		
	}
	
	@Transactional(readOnly=true)
	 public List<Corporate> getAllCorporates() {
		return corporateRepository.findAll();
		
	}
	
	@Transactional
	public void delete(Long id) {
		payerRepository.delete(id);
	}
	
	@Transactional
	public void createPayer(Payer payer) throws Exception{
		payerRepository.saveAndFlush(payer);
	}
	
	public String generatePIN(){
		//generate a 4 digit integer 1000 <10000
		int randomPIN = (int)(Math.random()*9000)+1000;
		return "AR"+"0000"+(this.getAll().size()+1)+String.valueOf(randomPIN);
	}
	
	public List<Payer> findByPinContaining(String searchString){
		return payerRepository.findByPinContaining(searchString);
	}
	
	
	public static void main(String args[]){
		System.out.println(System.currentTimeMillis());
		//generate a 4 digit integer 1000 <10000
        int randomPIN = (int)(Math.random()*9000)+1000;
        int randomPIN2 = (int)(Math.random()*9000)+1000;

        //Store integer in a string
        System.out.println(String.valueOf(randomPIN));
        System.out.println(String.valueOf(randomPIN));
        System.out.println(String.valueOf(randomPIN2));
	}

}
