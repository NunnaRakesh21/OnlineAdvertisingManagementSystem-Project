<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>

<html>
<head>
    <link type="text/css" rel="stylesheet" href="">
    <style>
        /* Updated CSS with curved card edges */
        .card {
            width: 200px;
            height: 300px;
            margin: 10px;
            border-radius: 15px; /* Add border-radius for curved edges */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            float: left;
            background: linear-gradient(135deg, #FF6B6B, #FFC947);
            color: #fff;
            animation: fadeIn 1s ease-in-out;
        }

        .card-header {
            background-color: #FF4646;
            padding: 10px;
            text-align: center;
            border-top-left-radius: 15px; /* Rounded top-left corner */
            border-top-right-radius: 15px; /* Rounded top-right corner */
        }

        .card-body {
            background-color: #FFC947;
            padding: 10px;
        }

        .card-footer {
            background-color: #FFD657;
            padding: 10px;
            text-align: center;
            border-bottom-left-radius: 15px; /* Rounded bottom-left corner */
            border-bottom-right-radius: 15px; /* Rounded bottom-right corner */
        }

        .card a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
        }

        .card button {
            background-color: #FF4646;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: #FF1C1C;
        }

        .row {
            clear: both;
        }

        /* Define the animation keyframes for the border */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        .card button:hover {
        background-color: #FF1C1C;
        cursor: pointer; /* Change cursor to a pointer on hover */
    }
    </style>
</head>
<body>
  <%@ include file="adminnavbar.jsp" %>

<br>
<br>
<br>
<br>
<br>
<h3 style="text-align: center; background-color: green; color: #fff; padding: 10px;">Delete Customers</h3>

<div class="row">
    <c:forEach items="${custdata}" var="c">
        <div class="card">
            <div class="card-header">
                Delete Customer
            </div>
            <div class="card-body">
                <p>ID: ${c.id}</p>
                <p>First Name: ${c.firstname}</p>
                <p>Last Name: ${c.lastname}</p>
                <p>User Name: ${c.username}</p>
                <p>Email: ${c.email}</p>
                <p>Password: ${c.password}</p>
            </div>
            <div class="card-footer">
                <button><a href='<c:url value="delete/${c.pid}"></c:url>'>Delete</a></button>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
