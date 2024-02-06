<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Customer</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #007BFF;
            border-radius: 10px;
            padding: 10px;
        }

        .navbar ul {
            overflow: hidden;
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .navbar li {
            display: inline-block;
            margin: 0 20px;
        }

        .navbar li a {
            text-decoration: none;
            color: #FFF;
            font-weight: bold;
        }

        .navbar li a:hover {
            color: #FF5733;
        }

        .search {
            float: left;
        }

        .navbar input {
            border: 2px solid #007BFF;
            border-radius: 5px;
            padding: 10px 20px;
            width: 200px;
            font-size: 16px;
            background-color: #FFF;
        }

        .navbar input::placeholder {
            color: #007BFF;
            font-size: 16px;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: flex-start;
        }

        .product-card {
            background-color: #FFF;
            border: 1px solid #ccc;
            border-radius: 10px;
            margin: 10px;
            padding: 10px;
            width: 70%; /* Adjust the width as per your layout */
            text-align: center;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
        }

        .product-card img {
            max-width: 100%;
            height: auto;
        }

        .product-card a {
            text-decoration: none;
            background-color: #007BFF;
            color: #FFF;
            padding: 5px 10px;
            border-radius: 5px;
            display: block;
            text-align: center;
            margin-top: 10px;
        }

        .product-card h4 {
            font-size: 20px;
            margin: 10px 0;
        }

        .product-card p {
            font-size: 16px;
            color: #333;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        #myInput {
            border: 2px solid #007BFF;
            border-radius: 5px;
            padding: 10px 20px;
            width: 300px;
            font-size: 16px;
            background-color: #FFF;
            margin: 10px auto;
            display: block;
        }
    </style>

</head>

<body>

<%@ include file="customernavbar.jsp" %>
<br><br><br><br>
    <h3 style="text-align: center; background-color: light-blue; color: maroon; padding: 10px;">View Product</h3>

<div class="product-container">
 
        <div class="product-card">
            <img src='displayprodimage?id=${c.id}' alt="${c.name}">
            <h4>Name: ${c.name}</h4>
            <h4>Category: ${c.category}</h4>
            <h4>Price: ${c.price}</h4>
            <h4>Description</h4> ${c.description} 
      
        </div>
  
</div>

</body>

</html>
