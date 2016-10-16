package com.dataligence.autoremit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dataligence.autoremit.model.Transaction;
import com.dataligence.autoremit.repository.springdata.jpa.TransactionRepository;

@Service
public class TransactionService {
	
	@Autowired
	private TransactionRepository transactionRepository;
	
	@Transactional
	public void recordTransaction(Transaction transaction) throws Exception{
		transactionRepository.saveAndFlush(transaction);
	}

}
