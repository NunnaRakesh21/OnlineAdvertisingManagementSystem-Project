package com.klef.jfsd.sdp.service;

import java.util.List;

import com.klef.jfsd.sdp.model.Product;

public interface ProductService 
{
   public String AddProduct(Product product);
   public List<Product> ViewAllProducts();
   public List<Product> ViewProducts();
   public Product ViewProductByID(int productid);
   public String deleteproducts(int pid);
   public Product ViewProductByNo(int pid);
   
   public List<Product> viewallproductsbycategory(String category);
}
