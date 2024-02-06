package com.klef.jfsd.sdp.model;

import java.sql.Blob;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product 
{
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;
  @Column(nullable = false,length = 100)
  private String category;
  @Column(nullable = false,length = 100)
  private String name;
  public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
@Column(nullable = false)
  private double price;
  @Column(nullable = false,length = 1000)
  private String description;
  @Column(length = 1000)
  private Blob productimage; // blob - binary large object
  
 public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}

public Blob getProductimage() {
	return productimage;
}
public void setProductimage(Blob productimage) {
	this.productimage = productimage;
}

}