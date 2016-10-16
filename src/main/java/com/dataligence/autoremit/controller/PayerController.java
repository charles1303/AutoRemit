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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import org.springframework.web.bind.annotation.ResponseBody;

import com.dataligence.autoremit.model.Corporate;
import com.dataligence.autoremit.model.Individual;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.service.BaseService;
import com.dataligence.autoremit.service.PayerService;
import com.dataligence.autoremit.service.StateService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "payer")
public class PayerController extends BaseController<Payer> {

	@Autowired
	private PayerService payerService;
	
	@Autowired
	private StateService stateService;

	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String newForm(ModelMap model) {
		model.addAttribute("title", "Payer Form");

		model.addAttribute("states", stateService.getAllStates());
		model.addAttribute("lgas", stateService.getAllLgas());
		return "payer/payerform";
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
			model.addAttribute("payerList", jsonString);
		
		
		return "payer/payerlist";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String payerList(ModelMap model) {
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
			model.addAttribute("payerList", jsonString);
		
		
		return "payer/payerlist";
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
	
	@RequestMapping(value = "/mockPayers", method = RequestMethod.GET)
	public String mockPayers(ModelMap model) {
		model.addAttribute("title", "Mock Payers");
		for (int i = 0; i < 20; i++) {
			createIndividuals(i);
			createCorporates(i);
		}
		return "payer/payerlist";
	}

	private void createIndividuals(int i) {
		Payer payer = new Individual();
		((Individual) payer).setFirstname("firstname" + i);
		((Individual) payer).setMiddlename("middlename" + i);
		((Individual) payer).setLastname("lastname" + i);

		((Individual) payer).setDateOfBirth(new Date());

		payer.setUsername("IndssoId" + i);
		payer.setPassword("password" + i);
		payer.setEmail("individual" + i + "@dataligence.com");
		payer.setAddress("address for Individual" + i);
		// payer.setState_id(Long.getLong(request.getParameter("state")));
		// payer.setLga_id(Long.getLong(request.getParameter("lga")));
		payer.setPhone("phone" + i);
		payer.setDateRegistered(new Date());

		try {
			payerService.createPayer(payer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void createCorporates(int i) {
		Payer payer = new Corporate();
		((Corporate) payer).setName("name" + i);
		((Corporate) payer).setYearOfIncorporation(1990);
		((Corporate) payer).setRegNum("regNum" + i);

		payer.setUsername("CorpssoId" + i);
		payer.setPassword("password" + i);
		payer.setEmail("corporate" + i + "@dataligence.com");
		payer.setAddress("address for Corporate" + i);
		// payer.setState_id(Long.getLong(request.getParameter("state")));
		// payer.setLga_id(Long.getLong(request.getParameter("lga")));
		payer.setPhone("phoneCorp" + i);
		payer.setDateRegistered(new Date());

		try {
			payerService.createPayer(payer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public String addPayer(HttpServletRequest request, ModelMap model) {

		Payer payer;
		if (request.getParameter("payerType").equalsIgnoreCase("I")) {
			payer = new Individual();
			((Individual) payer)
					.setFirstname(request.getParameter("firstname"));
			((Individual) payer).setMiddlename(request
					.getParameter("middlename"));
			((Individual) payer).setLastname(request.getParameter("lastname"));

			DateFormat df = new SimpleDateFormat("MM/dd/yyyy");
			Date birthDate = null;
			try {
				birthDate = df.parse(request.getParameter("dateOfBirth"));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			((Individual) payer).setDateOfBirth(birthDate);
		} else {
			payer = new Corporate();
			((Corporate) payer).setName(request.getParameter("name"));
			((Corporate) payer).setYearOfIncorporation(Integer.parseInt(request
					.getParameter("yearOfIncorporation")));
			((Corporate) payer).setRegNum(request.getParameter("regNum"));
		}
		String payerId = request.getParameter("payerId");
		if (!payerId.equalsIgnoreCase("") && !(payerId == null)) {
			payer.setId(Long.valueOf(payerId));
		}
		
		payer.setUsername(request.getParameter("ssoId"));
		payer.setPassword(request.getParameter("password"));
		payer.setEmail(request.getParameter("email"));
		payer.setAddress(request.getParameter("address"));
		payer.setState_id(Long.getLong(request.getParameter("state")));
		payer.setLga_id(Long.getLong(request.getParameter("lga")));
		payer.setPhone(request.getParameter("phone"));
		payer.setDateRegistered(new Date());
		payer.setPin(payerService.generatePIN(payer));

		try {
			payerService.createPayer(payer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "payer/payerform";
	}
	
	@RequestMapping(value = "/searchPayers", method = RequestMethod.GET)
	@ResponseBody
	public List<Payer> searchPayers(@RequestParam(value ="term", required=true) String term) {
		List<Payer> payers =  payerService.findByPinContaining(term);
			return payers;

	}


}
