package com.klef.jfsd.sdp.controller;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;
import java.sql.Blob;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Customer;
import com.klef.jfsd.sdp.model.Product;
import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.CustomerService;
import com.klef.jfsd.sdp.service.EmailService;
import com.klef.jfsd.sdp.service.ProductService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
   
	 @Autowired
	 private AdminService adminService;
	 
	 @Autowired
	 private CustomerService customerService;
	 
		@Autowired
		private ProductService productService;
		
		@Autowired
		private EmailService emailService;
		
	 
	    @GetMapping("/")
	    public String main()
	    {
	    	return "Home";
	    }
	    
	    @GetMapping("custregister")
	    public ModelAndView custregister()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("custregister");
	      return mv;
	    }
	    
	    @PostMapping("insertcust")
	    public ModelAndView insertcust(HttpServletRequest request)
	    {
	    	ModelAndView mv = new ModelAndView();
	    	
	    	String msg = null;
	    	
	    	try 
	    	{
	    		String firstname = request.getParameter("firstname");
	    		String lastname = request.getParameter("lastname");
	    		String username = request.getParameter("username");
	    		String email = request.getParameter("email");
	    		String password = request.getParameter("password");
	    	
	    		
	    		Customer c = new Customer();
	    		
	    		c.setFirstname(firstname);
	    		c.setLastname(lastname);
	    		c.setUsername(username);
	    		c.setEmail(email);
	    		c.setPassword(password);
	    	
	    		
	    	msg = 	customerService.addcustomer(c);
	    	emailService.sendEmail(c.getEmail(), "Advertising Management System", "Dear " +"\n\n" +
	    		    "Thank you for registering with our Advertising Management System. We're excited to have you as part of our community!\n\n" +
	    		    "Here's some important information to help you get started:\n\n" +
	    		    "Our Advertising Management System is a powerful tool to manage and optimize your advertising campaigns. With our system, you can create, track, and analyze your ads effectively.\n\n" +
	    		    "If you have any questions or need assistance, please don't hesitate to contact our support team at rakeshnunna21@gmail.com.\n\n" +
	    		    "We're dedicated to helping you achieve success with your advertising campaigns. Welcome aboard!\n\n" +
	    		    "Best regards,\n K L University"
	    		);


	    	mv.setViewName("custlogin");
	    	mv.addObject("message", msg);
	    	
	    	}
	    	catch (Exception e) 
	    	{
				 msg = e.getMessage();
				 
				 mv.setViewName("displayerror");
				 mv.addObject("message", msg);
			}
	    	
	    	return mv;
	    }
	    
	    
	    @GetMapping("custlogin") // URI & method name can be different
	    public ModelAndView custlogin()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("custlogin");
	      return mv;
	    }
	    
	    
	    @PostMapping("checkcustlogin")
	    public ModelAndView checkcustlogin(HttpServletRequest request)
	    {
	    	 ModelAndView mv = new ModelAndView();
		      
		      String username = request.getParameter("username");
		      String password = request.getParameter("password");
		       String userEnteredCaptcha = request.getParameter("captcha");
                       HttpSession session = request.getSession();
                       String storedCaptcha = (String)session.getAttribute("captchaCode");
		      
		        Customer customer = customerService.checkcustlogin(username, password);
		        
		        if(customer!=null  && userEnteredCaptcha.equals(storedCaptcha))
		        {
		        	// session
		        	
//		        	HttpSession session  = request.getSession();
		        	
		        	session.setAttribute("cid", customer.getId());// cid is a session variable
		        	session.setAttribute("username", customer.getUsername()); // username is a session variable
		        	
		        	// session
		          
		          mv.setViewName("custhome");
					/* mv.addObject("message", "Successful"); */
		        }
		        else
		        {
		          mv.setViewName("custlogin");
		          mv.addObject("message", " Invalid Data...");
		        }
		        
		        return mv;
	    }
	    
	    @GetMapping("custhome")
	    public ModelAndView custhome(HttpServletRequest request)
	    {
        	HttpSession session  = request.getSession();
        		
        	int cid = (int)  session.getAttribute("cid"); // cid is a session variable
        	String username = (String) session.getAttribute("username"); // username is a session variable
	    	
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("custhome");
	      
	      mv.addObject("cid", cid);
	      mv.addObject("username", username);
	      
	      return mv;
	    }
	    
	    
	    
	    @GetMapping("contactus") // URI & method name can be different
	    public ModelAndView contactus()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("contactus");
	      return mv;
	    }
	    
	    
	    @GetMapping("adminhome")
	    public ModelAndView adminhome()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("adminhome");
	      return mv;
	    }
	    
	    @GetMapping("customercount")
	    public ModelAndView customercount()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("customercount");
	  	long ccount = adminService.customercount();
		
		 
    	mv.addObject("ccount", ccount);
	      return mv;
	    }
	    
	    
	    @GetMapping("adminlogin")
	    public ModelAndView adminlogin()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("adminlogin");
	      return mv;
	    }
	    
	    @PostMapping("checkadminlogin")
	    public ModelAndView checkadminlogin(HttpServletRequest request)
	    {
	    	
	    	ModelAndView mv = new ModelAndView();
	    	
	    	String username = request.getParameter("username");
	    	String password = request.getParameter("password");
	    	
	    Admin a = adminService.checkadminlogin(username, password);
	    
	    if(a != null)
	    {
	    	mv.setViewName("adminhome");
	    	
	    	long ccount = adminService.customercount();
			
	 
	    	mv.addObject("ccount", ccount);
			
	    }
	    else
	    {
	    	mv.setViewName("adminlogin");
	    	mv.addObject("message", "Login Failed");
	    }
	    return mv;
	    
	    }
	    
	    
	    
	    @GetMapping("viewallcustomers")
	    public ModelAndView viewallcustomers()
	    {
	    	ModelAndView mv = new ModelAndView();
	    	mv.setViewName("viewallcustomers");
	    	
	    	List<Customer> clist = adminService.viewallcustomers();
	    	
	    	mv.addObject("custdata", clist);
	    	
	    	return mv;
	    }
	    
	    @GetMapping("deletecustomers")
	    public ModelAndView deletecustomers()
	    {
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("deletecustomers");
	      
	      List<Customer> clist =  adminService.viewallcustomers();
	      
	      mv.addObject("custdata", clist);
	      
	      return mv;
	    }
	    
	    @GetMapping("view")
	    public ModelAndView viewcustomerbyid(@RequestParam("id") int cid)
	    {
	      Customer c = adminService.viewcustomerbyid(cid);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("viewcustomerbyid");
	      mv.addObject("c", c);
	      
	      return mv;
	    }
	    
	    @GetMapping("delete/{id}")
	    public String deleteaction(@PathVariable("id") int cid)
	    {
	      adminService.deletecustomers(cid);
	      return "redirect:/viewallcustomers";
	    }
	    
	    @GetMapping("updateprofile")
	    public ModelAndView updateprofile(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updateprofile");
	      
	      mv.addObject("cid", session.getAttribute("cid"));
	      mv.addObject("username", session.getAttribute("username"));
	      
	      int id = (int) session.getAttribute("cid");
	      
	      Customer cust = customerService.viewcustomerbyid(id);
	      
	      mv.addObject("cust", cust);
	      
	      return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	       HttpSession session = request.getSession();
	      
	      mv.addObject("cid", session.getAttribute("cid"));
	      mv.addObject("username", session.getAttribute("username"));
	      
	      int id = (int) session.getAttribute("cid");
	      
	     try
	     {
	       String firstname = request.getParameter("firstname");
	       String lastname =  request.getParameter("lastname");
	       String username = request.getParameter("username");
	       String password = request.getParameter("password");
	       
	       Customer cust = new Customer();
	        cust.setId(id);
	        cust.setFirstname(firstname);
	        cust.setLastname(lastname);
	        cust.setUsername(username);
	        cust.setPassword(password);
	        
	    
	        msg = customerService.updatecustomer(cust);
	        
	        mv.setViewName("custlogin");
	        mv.addObject("message",msg);
	       
	     }
	     catch(Exception e)
	     {
	       msg = e.getMessage();
	       
	       mv.setViewName("updateerror");
	        mv.addObject("message",msg);
	     }
	      
	      return mv;

	    }
	    
	    
//	    @GetMapping("items") // URI & method name can be different
//	    public ModelAndView items()
//	    {
//	      ModelAndView mv = new ModelAndView();
//	      mv.setViewName("items");
//	      return mv;
//	    }
//	    
	    @GetMapping("addproduct")
	    public ModelAndView addproductdemo()
	    {
	 	   ModelAndView mv = new ModelAndView("addproduct");
	 	   return mv;
	    }
	    @PostMapping("insertproduct")
	    public ModelAndView insertproductdemo(HttpServletRequest request,@RequestParam("productimage") MultipartFile file) throws IOException, SerialException, SQLException
	    {
	 	   String msg = null;
	 	   
	 	   ModelAndView mv = new ModelAndView();
	 	   
	 	   try
	 	   {
	 	   String category = request.getParameter("category");
	 	   String name = request.getParameter("name");
	 	  Double price = Double.valueOf(request.getParameter("price"));
	 	   String description = request.getParameter("description");
	 	   
	 		  byte[] bytes = file.getBytes();
	 		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	 		  
	 		  Product p = new Product();
	 		  p.setCategory(category);
	 		  p.setName(name);
	 		  p.setPrice(price);
	 		  p.setDescription(description);
	 		  p.setProductimage(blob);
	 		  
	 		  msg=productService.AddProduct(p);
	 		  System.out.println(msg);
	 		  mv.setViewName("addproduct");
	 		  mv.addObject("message",msg);
	 	   }	  
	 	   catch(Exception e)
	 	   {
	 		   msg = e.getMessage();
	 		   System.out.println(msg.toString());
	 		   mv.setViewName("producterror");
	 		   mv.addObject("message",msg);
	 	   }
	 	   return mv;
	    }
	    @GetMapping("viewallprods")
	    public ModelAndView viewallprodsdemo()
	    {
	 	   List<Product> productlist = productService.ViewAllProducts();
	 	   
	 	   ModelAndView mv = new ModelAndView("viewallproducts");
	 	   
	 	   mv.addObject("productlist", productlist);
	 	   
	 	   return mv;
	    }
	    
	    @GetMapping("viewproducts")
	    public ModelAndView viewallprods()
	    {
	 	   List<Product> productlist = productService.ViewProducts();
	 	   
	 	   ModelAndView mv = new ModelAndView("viewproducts");
	 	   
	 	   mv.addObject("productlist", productlist);
	 	   
	 	   return mv;
	    }
	    
	    @GetMapping("productview")
	    public ModelAndView viewproductbyno(@RequestParam("id") int pid)
	    {
	      Product p = productService.ViewProductByNo(pid);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("viewproductbyno");
	      mv.addObject("c", p);
	      return mv;
	    }
	    
	 @GetMapping("displayprodimage")
	 public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	 {
	   Product product =  productService.ViewProductByID(id);
	   byte [] imageBytes = null;
	   imageBytes = product.getProductimage().getBytes(1,(int) product.getProductimage().length());

	   return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	 }

	    @GetMapping("viewproductbyid")
	 public ModelAndView  viewproductbyiddemo()
	 {
	 	   List<Product> productlist=productService.ViewAllProducts();
	 	   ModelAndView mv=new ModelAndView("viewproductbyid");
	 	   mv.addObject("productlist",productlist);
	 	   return mv;
	 }
	    
	    @PostMapping("displayproduct")
	    public ModelAndView displayproductdemo(HttpServletRequest request)
	    {
	 	   int pid=Integer.parseInt(request.getParameter("pid"));
	 	   Product product=productService.ViewProductByID(pid);
	 	   ModelAndView mv=new ModelAndView("displayproduct");
	 	   mv.addObject("product",product);
	 	   return mv;
	    }
	    
	    @GetMapping("displaycategory")
	    public ModelAndView displaycategory() 
	    {
	      ModelAndView mv=new ModelAndView("displaycategory");
	      return mv;
	    }
	    
	    @PostMapping("viewproductsbycategory")
	    public ModelAndView viewproductsbycategory(HttpServletRequest request)
	    {
	      String category = request.getParameter("category");
	      
	        List<Product> productlist = productService.viewallproductsbycategory(category);
	      
	      ModelAndView mv = new ModelAndView("viewproducts");
	      
	      mv.addObject("productlist", productlist);
	      
	      return mv;
	    }
	    
		 @GetMapping("deleteproducts")
		    public ModelAndView deleteproducts()
		    {
		      ModelAndView mv = new ModelAndView();
		      mv.setViewName("deleteproducts");
		      
		      List<Product> plist =  productService.ViewAllProducts();
		      
		      mv.addObject("pdata", plist);
		      
		      return mv;
		    }
		   
		   @GetMapping("deleteproduct/{id}")
		    public String deleteactionproduct(@PathVariable("id") int pid)
		    {
		      productService.deleteproducts(pid);
		      return "redirect:/deleteproducts";
		    }
	    
	    		   
}
