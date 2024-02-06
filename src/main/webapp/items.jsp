<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<%@page import="com.klef.jfsd.sdp.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 20px 10px;
            max-width: 400px;
            padding: 20px;
            display: inline-block;
        }

        .card-header {
            background-color: #333;
            color: #fff;
            font-weight: bold;
            padding: 10px;
        }

        .card-body {
            padding: 10px;
        }

        .card p {
            margin: 0;
            padding: 5px 0;
        }

        .product-image {
            max-width: 100%;
            height: auto;
            display: block;
        }

        #employee {
            border-collapse: collapse;
            width: 100%;
        }

        #employee td, #employee th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #employee tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #employee tr:hover {
            background-color: #ddd;
        }

        #employee th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #333;
            color: white;
        }

        .btn {
            background-color: skyblue;
            padding: 5px 16px;
            font-size: 12px;
            cursor: pointer;
        }
    </style>
</head>

<%@ include file="customernavbar.jsp" %>
<body>

<div class="container">
    <h3 align="center"><u>All Products</u></h3>
    <div class="row">
        <c:forEach items="${pdata}" var="c">
            <div class="card">
                <div class="card-header">Product Information</div>
                <div class="card-body">
                    <p>Name: ${c.name}</p>
                    <p>Description: ${c.description}</p>
                    <img src="p/${c.id}" alt="No image" class="product-image">
                </div>
                 <button><a href='<c:url value="viewproduct?id=${c.id}"></c:url>'><i class="fas fa-eye"></i> View</a></button>
            </div>
        </c:forEach>
    </div>
</div>

</body>
</html>
