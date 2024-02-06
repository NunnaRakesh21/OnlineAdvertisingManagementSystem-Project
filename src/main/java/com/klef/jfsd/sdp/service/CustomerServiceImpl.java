package com.klef.jfsd.sdp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	   @Autowired
       private CustomerRepository customerRepository;

	@Override
	public String addcustomer(Customer customer) {
		customerRepository.save(customer);
 		return "Registered Successfully !!!";
	}

	@Override
	public Customer checkcustlogin(String username, String password) 
	{
		
		return customerRepository.checkcustlogin(username,password);
		
	}

	@Override
	public String updatecustomer(Customer c)
	{
		
		Customer cust = customerRepository.findById(c.getId()).get();
	    
	      cust.setFirstname(c.getFirstname());
	      cust.setLastname(c.getLastname());
	      cust.setUsername(c.getUsername());
	      cust.setPassword(c.getPassword());
	      
	  
	      customerRepository.save(cust);
	    
	    return "Profile Updated Successfully";
	}

	@Override
	public Customer viewcustomerbyid(int cid) 
	{
		Optional<Customer> obj =  customerRepository.findById(cid);
        
        if(obj.isPresent())
        {
          Customer cust = obj.get();
          
          return cust;
        }
        else
        {
          return null;
        }
		
	}

	
}
