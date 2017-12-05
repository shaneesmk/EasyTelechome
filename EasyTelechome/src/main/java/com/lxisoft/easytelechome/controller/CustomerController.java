package com.lxisoft.easytelechome.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lxisoft.easytelechome.model.Customer;
import com.lxisoft.easytelechome.others.SendMail;
import com.lxisoft.easytelechome.reppo.CustomerReppo;

@Controller
public class CustomerController {

	@Autowired
	CustomerReppo cReppo;
	
	@RequestMapping(value = "/signup")
	public String addCustomer(@Valid Customer customer, BindingResult result,ModelMap map) {

		if (result.hasErrors()) {

			return "register/signup";
		} else {
			if(customer.getPassword().equals(customer.getRePassword())){
				BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); // spring security
				String hashedPassword = passwordEncoder.encode(customer.getPassword());
				String reHashedPass=passwordEncoder.encode(customer.getRePassword());
				customer.setPassword(hashedPassword);
				customer.setRePassword(reHashedPass);
				
				cReppo.save(customer);
				map.put("email", customer.getEmail());
				SendMail mailer = new SendMail();
				mailer.send("shaneesmk4@gmail.com", "lenovo7000", customer.getEmail(), "Confirmation from Easy Telechome",
				"<a href=\"http://localhost:8080/activate?id=" + customer.getId() + "\">click here</a>");

				return "register/confirmation";
			}
			
			else{
				
				map.put("match", "password is not match");
				return "register/signup";
			
			}
			
		}

	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String displayCustomerForm(ModelMap model) {

		model.addAttribute("customer", new Customer());
		return "register/signup";

	}
	
	@RequestMapping(value = "/activate")
	public String register(ModelMap map,long id) {
		Customer customer = cReppo.findById(id);

		try {
			customer.setActivate(true);
			cReppo.save(customer);
			map.put("status", "your account is activated");

		} catch (Exception e) {
			map.put("status", "error occured");

		}

		return "register/activate";
	}

}
