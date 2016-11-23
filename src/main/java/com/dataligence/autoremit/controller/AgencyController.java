package com.dataligence.autoremit.controller;


import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import org.springframework.web.bind.annotation.ResponseBody;

import com.dataligence.autoremit.model.Agency;
import com.dataligence.autoremit.model.AgencyStaff;
import com.dataligence.autoremit.model.Corporate;
import com.dataligence.autoremit.model.Individual;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.service.AgencyService;
import com.dataligence.autoremit.service.BaseService;
import com.dataligence.autoremit.service.PayerService;
import com.dataligence.autoremit.service.StateService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "agency")
public class AgencyController extends BaseController<Agency> {

	@Autowired
	private PayerService payerService;
	
	@Autowired
	private AgencyService agencyService;
	
	 
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String newForm(ModelMap model) {
		model.addAttribute("title", "Agency Form");
 
		return "agency/agencyform";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String tableList(ModelMap model) {
		model.addAttribute("title", "Payer List");
		List<Payer> payers = payerService.getAll();
		
		final ObjectMapper mapper = new ObjectMapper();
	    String jsonString = "";

	    try {
	    	jsonString = mapper.writeValueAsString(payers);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			model.addAttribute("agencyList", jsonString);
		
		
		return "agency/agencylist";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String payerList(ModelMap model,@ModelAttribute("command") Agency agency) {
		model.addAttribute("title", "Agency List");
		List<Agency> agencies = agencyService.getAll();
		
		final ObjectMapper mapper = new ObjectMapper();
	    String jsonString = "";

	    try {
	    	jsonString = mapper.writeValueAsString(agencies);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			model.addAttribute("agencyList", jsonString);
		
		
		return "agency/agencylist";
	}
	
	@RequestMapping(value = "/listagstaff", method = RequestMethod.GET)
	public String agencyStaffList(ModelMap model,@ModelAttribute("command") AgencyStaff agencystaff) {
		model.addAttribute("title", "Agency List");
		List<AgencyStaff> agencies = agencyService.getAllAgencyStaff();
		List<Agency> agencylist =agencyService.getAll();
		
		final ObjectMapper mapper = new ObjectMapper();
	    String jsonString = "";

	    try {
	    	jsonString = mapper.writeValueAsString(agencies);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			model.addAttribute("agencystaffList", jsonString);
			model.addAttribute("agencylist", agencylist);
		
		
		return "agency/agencystafflist";
	}
	
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewPayerDetails(ModelMap model, @RequestParam(value ="id", required=true) Long id) {
		model.addAttribute("title", "Payer Details");
		String payerType = "";
		Payer payer = payerService.findPayer(id);
		if(payer instanceof Individual){
			payer = (Individual)payer;
			payerType = "I";
		}else if (payer instanceof Corporate) {
			payer = (Corporate)payer;
			payerType = "C";
		}
		model.addAttribute("payer", payer);
		model.addAttribute("payerType", payerType);
		return "payer/payerDetail";
	}
	
	 
	
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String addAgency(HttpServletRequest request, ModelMap model,@ModelAttribute("command") Agency agency) {
		System.out.println("Code ========"+agency.getCode());
  		try {
			agencyService.createPayer(agency);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/agency/list";
	}
	
	@RequestMapping(value = "/formagstaff", method = RequestMethod.POST)
	public String addAgencyStaff(HttpServletRequest request, ModelMap model) {
		System.out.println("Getting hereeee state======"+request.getParameter("state"));
   AgencyStaff agencystaff = new AgencyStaff();
   agencystaff.setDateRegistered(new Date());//request.getParameter("dateRegistered"));
   agencystaff.setPassword(request.getParameter("password"));
   agencystaff.setEmail(request.getParameter("email"));
   agencystaff.setUsername(request.getParameter("username"));
   agencystaff.setState(request.getParameter("state"));
   agencystaff.setAgency(agencyService.findPayer(Long.valueOf(request.getParameter("agency"))));
		try {
			agencyService.createAgencyStaff(agencystaff);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "redirect:/agency/listagstaff";
	}
	
	
}
