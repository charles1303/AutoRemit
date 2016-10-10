package com.dataligence.autoremit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dataligence.autoremit.model.Payer;
import com.dataligence.autoremit.service.PayerService;

@Controller
@RequestMapping(value = "payer")
public class PayerController extends BaseController<Payer> {
	
	@Autowired
	private PayerService payerService;
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
    public String newForm(ModelMap model) {
        model.addAttribute("greeting", "Payer Form");
        return "payer/payerform";
    }
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String tableList(ModelMap model) {
        model.addAttribute("greeting", "Payer List");
        return "payer/payerlist";
    }
	
	@RequestMapping(value = "/form", method = RequestMethod.POST)
    public String addPayer(ModelMap model) {
        model.addAttribute("greeting", "Payer Form");
        return "payer/payerform";
    }

}
