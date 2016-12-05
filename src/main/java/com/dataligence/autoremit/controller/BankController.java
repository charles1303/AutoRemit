package com.dataligence.autoremit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.RevenueItem;
import com.dataligence.autoremit.model.Transaction;
import com.dataligence.autoremit.service.AgencyService;
import com.dataligence.autoremit.service.BankService;
import com.dataligence.autoremit.service.BaseService;
import com.dataligence.autoremit.service.PayerService;
import com.dataligence.autoremit.service.RevenueItemService;
import com.dataligence.autoremit.service.TransactionService;

@Controller
@RequestMapping(value = "bank")
public class BankController extends BaseController{
	
	@Autowired
	private TransactionService transactionService;
	
	@Autowired
	private PayerService payerService;
	
	@Autowired
	private BaseService baseService;
	
	@Autowired
	private BankService bankService;
	
	@Autowired
	private AgencyService agencyService;
	
	@Autowired
	private RevenueItemService revenueItemService;
	
	@RequestMapping(value = "/teller", method = RequestMethod.GET)
	public String tellerForm(ModelMap model){
			return "bank/tellerform";
	}
	
	@RequestMapping(value = "/recordPayment", method = RequestMethod.POST)
	public String recordPayment(HttpServletRequest request, ModelMap model){
		String statusMsg = "Error creating teller. Please Contact Administrator";
		try {
			Transaction t = new Transaction();
			String payerId = request.getParameter("payerId");
			String agencyId = request.getParameter("agencyId");
			String revItemId = request.getParameter("revItemId");
			String amount = request.getParameter("amount");
			String amtInWords = request.getParameter("amtInWords");
			
			t.setBankRef(bankService.generateBankRef());
			
			t.setAmtInWords(amtInWords);
			if(payerId != null && !payerId.equalsIgnoreCase("")){
				t.setPayer(payerService.findPayer(Long.valueOf(payerId)));
			}
			if(agencyId != null && !agencyId.equalsIgnoreCase("")){
				t.setAgency(agencyService.findAgency(Long.valueOf(agencyId)));
			}
			if(revItemId != null && !revItemId.equalsIgnoreCase("")){
				t.setItem(revenueItemService.findRevenueItem(Long.valueOf(revItemId)));
			}
			if(amount != null && !amount.equalsIgnoreCase("")){
				t.setAmount(Float.parseFloat(amount));
			}
			transactionService.recordTransaction(t);
			statusMsg = "Successfully created teller";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("STATUS_MESSAGE", statusMsg);
		return "bank/tellerform";
	}

}
