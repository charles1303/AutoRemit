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
	
	public List<Agency> findByNameContaining(String searchString){
		return agencyRepository.findByNameContaining(searchString);
	}
	
}
