package com.dataligence.autoremit.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.model.RevenueItem;
import com.dataligence.autoremit.service.AgencyService;
import com.dataligence.autoremit.service.PayerService;
import com.dataligence.autoremit.service.RevenueItemService;

@Controller
@RequestMapping(value = "autocomp")
public class AutoCompleteController {
	
	@Autowired
	private PayerService payerService;
	
	@Autowired
	private AgencyService agencyService;
	
	@Autowired
	private RevenueItemService revenueItemService;
	
	@RequestMapping(value = "/searchPayers", method = RequestMethod.GET)
	@ResponseBody
	public List<Payer> searchPayers(@RequestParam(value ="term", required=true) String term) {
		List<Payer> payers =  payerService.findByPinContaining(term);
			return payers;

	}
	
	@RequestMapping(value = "/searchAgency", method = RequestMethod.GET)
	@ResponseBody
	public List<Agency> searchAgency(@RequestParam(value ="term", required=true) String term) {
		List<Agency> agencies =  agencyService.findByNameContaining(term);
			return agencies;

	}
	
	@RequestMapping(value = "/searchRevItems", method = RequestMethod.GET)
	@ResponseBody
	public List<RevenueItem> searchRevenueItem(@RequestParam(value ="term", required=true) String term) {
		List<RevenueItem> items =  revenueItemService.findByNameContaining(term);
			return items;

	}

}
