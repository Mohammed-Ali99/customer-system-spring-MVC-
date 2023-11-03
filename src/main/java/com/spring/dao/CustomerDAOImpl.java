package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() {
		Session session = sessionFactory.getCurrentSession();
		
		Query<Customer> query = session.createQuery("from Customer" , Customer.class);
		
		List<Customer> customers = query.getResultList();
		return customers;
	}
	
	@Override
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(customer);
	}

	@Override
	public Customer getCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		return session.get(Customer.class , id);
	}

	@Override
	public void removeCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		Query<Customer> q = session.createQuery("delete from Customer where id = ?1");
		q.setInteger(1, id);
		
		q.executeUpdate();
	}

}
