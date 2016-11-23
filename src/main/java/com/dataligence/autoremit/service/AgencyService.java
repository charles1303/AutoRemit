package com.dataligence.autoremit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.AgencyStaff;
import com.dataligence.autoremit.model.Corporate;
import com.dataligence.autoremit.model.Individual;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.repository.springdata.jpa.AgencyRepository;
import com.dataligence.autoremit.repository.springdata.jpa.AgencyStaffRepository;
import com.dataligence.autoremit.repository.springdata.jpa.CorporateRepository;
import com.dataligence.autoremit.repository.springdata.jpa.IndividualRepository;
import com.dataligence.autoremit.repository.springdata.jpa.PayerRepository;

@Service
public class AgencyService {
	
	@Autowired
	private AgencyRepository agencyRepository;
	
	@Autowired
	private AgencyStaffRepository agencystaffRepository;
	
	@Autowired
	private IndividualRepository individualRepository;
	
	@Autowired
	private CorporateRepository corporateRepository;
	
	
	@Transactional(readOnly=true)
	 public List<Agency> getAll() {
		return agencyRepository.findAll();
		
	}
	@Transactional(readOnly=true)
	 public List<AgencyStaff> getAllAgencyStaff() {
		return agencystaffRepository.findAll();
		
	}
	
	@Transactional
	 public Agency findPayer(Long id) {
		return agencyRepository.findOne(id);
		
	}
	

	@Transactional
	 public AgencyStaff findAgencyStaff(Long id) {
		return agencystaffRepository.findOne(id);
		
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
		agencyRepository.delete(id);
	}
	
	@Transactional
	public void deleteAgencyStaff(Long id) {
		agencystaffRepository.delete(id);
	}
	
	@Transactional
	public void createPayer(Agency agency) throws Exception{
		agencyRepository.saveAndFlush(agency);
	}
	
	
	@Transactional
	public void createAgencyStaff(AgencyStaff agencystaff) throws Exception{
		agencystaffRepository.saveAndFlush(agencystaff);
	}
	
	public String generatePIN(Payer payer){
		//generate a 4 digit integer 1000 <10000
		int randomPIN = (int)(Math.random()*9000)+1000;
		return "AR"+payer.getUsername()+"0000"+(this.getAll().size()+1)+String.valueOf(randomPIN);
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
