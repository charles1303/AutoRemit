package com.dataligence.autoremit.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dataligence.autoremit.model.Transaction;
import com.dataligence.autoremit.service.BaseService;
import com.dataligence.autoremit.service.TransactionService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "trxn")
public class TransactionController extends BaseController{
	
	@Autowired
	private TransactionService transactionService;
	
	@Autowired
	private BaseService baseService;
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String payerList(ModelMap model) {
		model.addAttribute("title", "Transaction List");
		String currentUsername = baseService.getCurrentUserName();
		List<Transaction> transactions = new ArrayList<>();
		try {
			transactions = transactionService.getPendingTransactionsByAgency(currentUsername);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		final ObjectMapper mapper = new ObjectMapper();
	    String jsonString = "";

	    try {
	    	jsonString = mapper.writeValueAsString(transactions);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			model.addAttribute("trxnList", jsonString);
		
		
		return "trxn/trxnList";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewPayerDetails(HttpServletResponse response, ModelMap model, @RequestParam(value ="id", required=true) Long id) {
		model.addAttribute("title", "Transaction Details");
		byte[] fileContent = null;
		try {
			fileContent = transactionService.printTransaction(id);
			response.setContentType("application/pdf");
	        response.setHeader("Content-disposition", "attachment; filename=");
	        response.setContentLength(fileContent.length);
	        response.getOutputStream().write(fileContent);
	        response.getOutputStream().flush();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "payer/payerDetail";
	}

}
