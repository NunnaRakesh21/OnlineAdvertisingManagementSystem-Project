package com.klef.jfsd.sdp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Product;

@Repository
public interface ProductRepository extends CrudRepository<Product, Integer>
{
	 @Query("from Product p where p.category=?1")
       public List<Product> viewallproductsbycategory(String category);
}
