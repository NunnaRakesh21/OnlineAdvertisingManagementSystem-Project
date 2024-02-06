package com.klef.jfsd.sdp.service;

import com.klef.jfsd.sdp.model.Customer;

public interface CustomerService {
	public String addcustomer(Customer customer);
	public String updatecustomer(Customer c);
    public Customer viewcustomerbyid(int cid);
    public Customer checkcustlogin(String username,String password);

}
