package com.dataligence.autoremit.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dataligence.autoremit.model.Astate;
import com.dataligence.autoremit.model.Corporate;
import com.dataligence.autoremit.model.Individual;
import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.model.State;
import com.dataligence.autoremit.service.PayerService;
import com.dataligence.autoremit.service.StateService;

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
        return "payer/payerlist";
    }
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
    public String addPayer(HttpServletRequest request,ModelMap model) {
        
        Payer payer;
        if(request.getParameter("payerType").equalsIgnoreCase("I")){
        	payer = new Individual();
        	((Individual) payer).setFirstname(request.getParameter("firstname"));
        	((Individual) payer).setMiddlename(request.getParameter("middlename"));
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
        }else{
        	payer = new Corporate();
        	((Corporate) payer).setName(request.getParameter("name"));
        	((Corporate) payer).setYearOfIncorporation(Integer.parseInt(request.getParameter("yearOfIncorporation")));
        	((Corporate) payer).setRegNum(request.getParameter("regNum"));
        }
        payer.setUsername(request.getParameter("ssoId"));
        payer.setPassword(request.getParameter("password"));
        payer.setEmail(request.getParameter("email"));
        payer.setAddress(request.getParameter("address"));
        payer.setState_id(Long.getLong(request.getParameter("state")));
        payer.setLga_id(Long.getLong(request.getParameter("lga")));
        payer.setPhone(request.getParameter("phone"));
        payer.setDateRegistered(new Date());
        
        try {
			payerService.createPayer(payer);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                        
        return "payer/payerform";
    }

}
