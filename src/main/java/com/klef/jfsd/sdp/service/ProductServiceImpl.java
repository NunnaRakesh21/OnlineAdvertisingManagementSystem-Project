package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.model.Product;
import com.klef.jfsd.sdp.repository.ProductRepository;


@Service
public class ProductServiceImpl implements ProductService
{
  @Autowired
  private ProductRepository productRepository;

  @Override
  public String AddProduct(Product product) 
  {
    productRepository.save(product);
    return "Product Added Successfully";
  }

  @Override
  public List<Product> ViewAllProducts() 
  {
    return (List<Product>) productRepository.findAll();
  }

  @Override
  public Product ViewProductByID(int productid) 
  {
    return productRepository.findById(productid).get();
  }

  @Override
  public List<Product> viewallproductsbycategory(String category) 
  {
    return productRepository.viewallproductsbycategory(category);
  }

@Override
public List<Product> ViewProducts() {
	return (List<Product>) productRepository.findAll();
}

@Override
public String deleteproducts(int pid) {
	 Optional<Product> obj =productRepository.findById(pid);
     
     String msg = null;
     
     if(obj.isPresent())
     {
       Product pt = obj.get();
       
      productRepository.delete(pt);
       
       msg = "Product Deleted Successfully";
     }
     else
     {
       msg = "Product Not Found";
     }
     
     return msg;
	}

@Override
public Product ViewProductByNo(int pid) {
	Optional<Product> obj =  productRepository.findById(pid);
    
    if(obj.isPresent())
    {
      Product p = obj.get();
      
      return p;
    }
    else
    {
      return null;
    }
}



}
