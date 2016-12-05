package com.dataligence.autoremit.service;

import org.springframework.stereotype.Service;

@Service
public class BankService {

	public String generateBankRef(){
		//generate a 4 digit integer 1000 <10000
		int randomPIN = (int)(Math.random()*9000)+1000;
		return "BR"+"0000"+String.valueOf(randomPIN);
	}
}
