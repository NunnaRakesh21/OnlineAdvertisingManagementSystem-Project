package com.klef.jfsd.sdp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "cust_table")
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cust_id")
	private int id;
	@Column(name="cust_firstname",nullable=false,length = 50)
	private String firstname;
	@Column(name="cust_lastname",nullable=false,length = 50)
	private String lastname;
	@Column(name="cust_username",nullable=false,length = 20)
	private String username;
	@Column(name="cust_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="cust_password",nullable=false,length = 30)
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", username=" + username
				+ ", email=" + email + ", password=" + password + "]";
	}
	
}
