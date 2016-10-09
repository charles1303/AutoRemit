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

}
