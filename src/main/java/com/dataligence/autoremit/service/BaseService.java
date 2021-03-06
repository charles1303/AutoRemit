package com.dataligence.autoremit.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.dataligence.autoremit.model.BaseModel;
import com.dataligence.autoremit.repository.springdata.jpa.BaseRepository;

@Service
public class BaseService {
	
	@Autowired
	//@Qualifier("baseRepositoryBean")
	private BaseRepository<?> baseRepository;
	
	
	public BaseModel getObject(Long id){
		return baseRepository.findById(id);
	}
		
	public Authentication getCurrentUser(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    return authentication;
		}
		return null;
	}
	
	public String getCurrentUserName(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
		    String currentUserName = authentication.getName();
		    return currentUserName;
		    
		}
		return null;
	}

}
