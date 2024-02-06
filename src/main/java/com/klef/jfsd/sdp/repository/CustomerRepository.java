package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Customer;

@Repository
public interface CustomerRepository  extends JpaRepository<Customer, Integer>{

	
	@Query("select c from Customer c where c.username=?1 and c.password=?2 ")
	public Customer checkcustlogin(String username, String password);
  
}
