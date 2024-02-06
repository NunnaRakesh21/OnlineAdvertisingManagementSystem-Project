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
            width: 30%;
            text-align: center;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: transform 0.3s;
            min-width: 250px; /* Set a minimum width for cards */
        }

        .product-card img {
            max-width: 100%;
            height: auto;
        }

        .view-button {
            background-color: #007BFF;
            color: #FFF;
            padding: 5px 10px;
            border-radius: 20px;
            display: block;
            text-align: center;
            margin-top: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .view-button a {
            text-decoration: none;
            color: #FFF;
        }

        .view-button:hover {
            background-color: #0056b3;
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

    <script>
        function myFunction() {
            var input, filter, cards, card, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            cards = document.getElementsByClassName("product-card");
            for (i = 0; i < cards.length; i++) {
                card = cards[i];
                txtValue = card.textContent || card.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    card.style.display = "inline-block";
                } else {
                    card.style.display = "none";
                }
            }
        }
    </script>
</head>

<body>

<%@ include file="customernavbar.jsp" %>
<br><br><br><br>
<h3 style="text-align: center; background-color: light-blue; color: maroon; padding: 10px;">View All Products</h3>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter Product Name">

<div class="product-container">
    <c:forEach items="${productlist}" var="product">
        <div class="product-card">
            <img src='displayprodimage?id=${product.id}' alt="${product.name}">
            <h4>Name: ${product.name}</h4>
            <h4>Category: ${product.category}</h4>
            <h4>Price: ${product.price}</h4>
            <div class="view-button">
                <a href='<c:url value="productview?id=${product.id}"></c:url>'>
                    <i class="fas fa-eye"></i> View
                </a>
            </div>
        </div>
    </c:forEach>
</div>

</body>

</html>
