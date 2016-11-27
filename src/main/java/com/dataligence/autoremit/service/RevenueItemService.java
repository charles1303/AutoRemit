package com.dataligence.autoremit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dataligence.autoremit.model.RevenueItem;
import com.dataligence.autoremit.repository.springdata.jpa.RevenueItemRepository;

@Service
public class RevenueItemService {
	
	@Autowired
	private RevenueItemRepository revenueItemRepository;
	
	public List<RevenueItem> findByNameContaining(String searchString){
		return revenueItemRepository.findByNameContaining(searchString);
	}

}
