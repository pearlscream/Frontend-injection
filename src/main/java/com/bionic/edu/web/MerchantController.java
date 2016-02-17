package com.bionic.edu.web;

import java.util.List;
import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.bionic.edu.proc.*;

@Controller
@RequestMapping("/merchants")
public class MerchantController {
	    @Inject
	    MerchantService service;
	    List<Merchant> list = null;

	    
	    @RequestMapping(value = "/listOfMerchants", method = RequestMethod.GET)
	    public String showList(ModelMap model) {
	    	list = service.findAll();
	    	model.addAttribute("merchantList", list);
	    	return "listOfMerchants";
		}

	    @RequestMapping(value = "/newMerchant", method = RequestMethod.GET)
	    public String newMerchant(ModelMap model) {
	    	model.addAttribute("merchant", new Merchant());
	    	return "newMerchant";    
	    }

	    @RequestMapping(value = "/addMerchant", method = 	RequestMethod.POST)
	    public String addMerchant(@Valid @ModelAttribute("merchant") Merchant merchant, BindingResult bindingResult, 	  
	    	   ModelMap model) {
	        if(bindingResult.hasErrors()) { return "newMerchant"; }
	        service.save(merchant);
	        list = service.findAll();
	        model.addAttribute("merchantList", list);
	        return "listOfMerchants";    
	    }

}
