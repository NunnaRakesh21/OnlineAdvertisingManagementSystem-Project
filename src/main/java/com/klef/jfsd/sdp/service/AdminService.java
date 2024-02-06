package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.model.Product;

public interface AdminService {
	public List<Customer> viewallcustomers();
    public String deletecustomers(int cid);
    public Customer viewcustomerbyid(int cid);
    public long customercount(); // count(*)
 
    public Admin checkadminlogin(String uname,String pwd);

}
