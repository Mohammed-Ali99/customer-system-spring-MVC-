package com.spring.services;

import java.util.List;

import com.spring.model.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();
	
	public void addCustomer(Customer customer);
	
	public Customer getCustomer(int id);
	
	public void removeCustomer(int id);	
}
