package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.model.Customer;
import com.spring.services.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	CustomerService customerService;
	
	//localhost:8082/customer-app/customer/list
	@GetMapping("/list")
	public String getCustomers(Model model) {
		
		List<Customer> customers = customerService.getCustomers();
		
		model.addAttribute("customers", customers);
		
		return "list-customers";
	}
	
	// localhost:8082/customer-app/customer/add
	@GetMapping("/add")
	public String addCustomer(Model model) {
		
		model.addAttribute("customer", new Customer());
		
		return "add-customer";
	}
	
	// localhost:8082/customer-app/customer/save
	@GetMapping("/save")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {
		
		customerService.addCustomer(customer);
		
		return "redirect:/customer/list";
	}
	
	@GetMapping("/show")
	public String showCustomer(@RequestParam("customerId") int id , Model model) {
		Customer customer = customerService.getCustomer(id);
		model.addAttribute("customer", customer);
		
		return "add-customer";
	}
	
	@GetMapping("delete")
	public String delete(@RequestParam("customerId") int id) {
		customerService.removeCustomer(id);
		
		return "redirect:/customer/list";
	}
}
