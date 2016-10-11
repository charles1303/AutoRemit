package com.dataligence.autoremit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.Astate;
import com.dataligence.autoremit.model.Lga;
import com.dataligence.autoremit.repository.springdata.jpa.LgaRepository;
import com.dataligence.autoremit.repository.springdata.jpa.StateRepository;

@Service
public class StateService {
	
	@Autowired
	private StateRepository stateRepository;
	
	@Autowired
	private LgaRepository lgaRepository;
	
	@Transactional(readOnly=true)
	 public List<Astate> getAllStates() {
		return stateRepository.findAll();
		
	}
	
	@Transactional(readOnly=true)
	 public List<Lga> getAllLgas() {
		return lgaRepository.findAll();
		
	}

}
