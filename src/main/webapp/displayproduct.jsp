<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <title>Customer</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: Arial, sans-serif;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
             width: 50%;
            margin: auto;
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
        }

        .card img {
            max-width: 80%; /* Increased image size */
            height: auto;
            margin: 10px 0; /* Added margin */
        }

        .card h1 {
            color: #000;
            font-size: 24px;
            margin: 10px 0;
        }

        .card h2 {
            color: #555;
            font-size: 20px;
            margin: 10px 0;
        }

        .card p {
            color: #777;
            font-size: 16px;
        }

        .navbar {
            background-color: black;
            border-radius: 30px;
            padding: 15px;
            text-align: center;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }

        .navbar li {
            display: inline;
            margin: 0 20px;
        }

        .navbar li a {
            text-decoration: none;
            color: white;
            font-weight: bold;
        }

        .navbar li a:hover {
            color: red;
        }

        .search {
            float: right;
            color: white;
            padding: 12px 20px;
        }

        .navbar input {
            border: 2px solid black;
            border-radius: 14px;
            padding: 10px 20px;
            width: 200px;
            font-size: 16px;
        }
    </style>

    <script>
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[2];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style display = "none";
                    }
                }
            }
        }
    </script>
</head>

<body>
    <%@ include file="customernavbar.jsp" %>
    <br><br><br><br>
<h3 style="text-align: center; background-color: light-blue; color: maroon; padding: 10px;">View Product</h3>
    <br>
    <div class="card">
        <img src="displayprodimage?id=<c:out value='${product.id}' />" width="80%" />
          <h4>Name: ${product.name}</h4>
            <h4>Category: ${product.category} </h4>
            <h4>Price: ${product.price} </h4>
            <h2>Description</h2>${product.description}
    </div>
</body>

</html>
