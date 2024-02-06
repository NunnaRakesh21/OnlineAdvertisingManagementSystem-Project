<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="com.klef.jfsd.sdp.model.*" %>
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    .card-container {
      display: flex; /* Use flexbox to make cards appear side by side */
      flex-wrap: wrap; /* Allow cards to wrap to the next row */
      justify-content: center; /* Distribute space evenly between cards */
    }

    .card {
      width: calc(33.33% - 20px); /* Adjust the width and margin as needed */
      margin: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      background-color: #ebecee;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
      padding: 20px;
    }

    .card-header {
      background-color: #000000;
      color: white;
      padding: 12px;
    }

    .card-body {
      padding: 12px;
    }

    .card img {
      max-width: 100%;
      height: auto;
    }

    .btn {
      background-color: skyblue;
      padding: 5px 16px;
      font-size: 12px;
      cursor: pointer;
      text-align: center;
    }
  </style>
</head>
<%@ include file="adminnavbar.jsp" %>
<br><br><br>

<body>
<br>

<h3 align="center">
  <h3 style="text-align: center; background-color: green; color: #fff; padding: 10px;">Delete Products</h3>
</h3>

<div class="card-container">
  <c:forEach items="${pdata}" var="product">
   <div class="card">
  <div class="card-header">
   Product Information
  </div>
  <div class="card-body">
    <p>Name: ${product.name}</p>
    <p>Category : ${product.category}</p>
    <p>Description: ${product.description}</p>
    <p>Price: ${product.price}</p>
   <img src='displayprodimage?id=${product.id}' alt="${product.name}">
  </div>
  <button class="btn" onclick="confirmDelete('<c:url value='deleteproduct/${product.id}'></c:url>')">Delete</button>
</div>
<script>
  function confirmDelete(deleteURL) {
    if (confirm("Are you sure you want to delete this product?")) {
      window.location.href = deleteURL; // Proceed with the deletion if confirmed
    }
  }
</script>

  </c:forEach>
</div>

</body>
</html>
