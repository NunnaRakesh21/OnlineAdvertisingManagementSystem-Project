package com.klef.jfsd.sdp.service;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.model.Product;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.CustomerRepository;
import com.klef.jfsd.sdp.repository.ProductRepository;

@Service
public class AdminServiceImpl implements AdminService 
{
	   @Autowired
        private AdminRepository adminRepository;
	   
	    @Autowired
	    private CustomerRepository customerRepository;
	    

		@Override
		public List<Customer> viewallcustomers() 
		{
			
			return customerRepository.findAll();
		}

		@Override
		public String deletecustomers(int cid)
		{
		Optional<Customer> obj = customerRepository.findById(cid);
	        
	        String msg = null;
	        
	        if(obj.isPresent())
	        {
	          Customer cust = obj.get();
	          
	          customerRepository.delete(cust);
	          
	          msg = "Customer Deleted Successfully";
	        }
	        else
	        {
	          msg = "Customer Not Found";
	        }
	        
	        return msg;
		
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

		
		@Override
		public Admin checkadminlogin(String username, String password) 
		{
			return adminRepository.checkadminlogin(username, password);
		}

		@Override
		public long customercount() 
		{
			
			return customerRepository.count();
		}
 
}
