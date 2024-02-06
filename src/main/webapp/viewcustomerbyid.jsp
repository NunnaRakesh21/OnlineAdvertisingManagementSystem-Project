<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="css/different-style.css">
  <style>
    /* Add different card styles here */
    .card {
      background: linear-gradient(135deg, #FF6B6B, #6B66FF);
      border: 2px solid #FF6B6B;
      border-radius: 10px;
      box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
      padding: 15px;
      margin: 20px;
      color: #fff; /* Text color */
      display: table; /* Display card as a table */
      width: 100%; /* Make the table take full width */
    }

    .card p {
      margin: 0; /* Remove default margin for <p> elements */
    }

    .back-button {
      background: #FF6B6B; /* Button background color */
      color: #fff; /* Button text color */
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      cursor: pointer;
      font-weight: bold;
    }

    .back-button:hover {
      background: #FF5252; /* Button background color on hover */
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

<div class="card">
  <table>
    <tr>
      <td>ID:</td>
      <td>${c.id}</td>
    </tr>
    <tr>
      <td>First Name:</td>
      <td>${c.firstname}</td>
    </tr>
    <tr>
      <td>Last Name:</td>
      <td>${c.lastname}</td>
    </tr>
    <tr>
      <td>User Name:</td>
      <td>${c.username}</td>
    </tr>
    <tr>
      <td>Email:</td>
      <td>${c.email}</td>
    </tr>
   
  </table>
</div>

<center><button class="back-button"><a href="viewallcustomers">Back</a></button></center>
</body>
</html>
