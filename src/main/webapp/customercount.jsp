<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
  <link type="text/css" rel="stylesheet" href="path/to/your-new.css"> <!-- Link to your new CSS file -->

  <style>
    .statistics-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      margin-top: 50px;
      animation: fallIn 1.5s ease-in-out;
    }

    @keyframes fallIn {
      0% {
        transform: translateY(-200px);
      }
      100% {
        transform: translateY(0);
      }
    }

    .statistics-box:hover {
      transform: scale(1.1); /* Zoom out the card */
      background-color: #e7c798; /* Change the background color on hover */
    }

    .statistics-box p {
      font-size: 48px;
      margin: 0;
      color: #008000; /* Green color for the number values */
    }

    .statistics-box {
      flex: 1;
      max-width: 300px;
      background-color: #cad9db;
      padding: 20px;
      margin: 10px;
      box-shadow: 0 5px 10px rgba(163, 157, 157, 0.2);
      text-align: center;
      color: #0a0808;
      border-radius: 10px;
    }

    .statistics-box h3 {
      font-size: 24px;
      margin-bottom: 20px;
    }

    .statistics-box p {
      font-size: 48px;
      margin: 0;
    }

    .back-button {
      background-color: #007bff; /* Background color */
      color: #fff; /* Text color */
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 5px;
    }

    .back-button:hover {
      background-color: #0056b3; /* Darker background color on hover */
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
<h3 style="text-align: center; background-color: green; color: #fff; padding: 10px;">Customers Count</h3>
<center>
  <div class="statistics-box">
    <h3>Total Customers</h3>
    <p id="anotherStatCount">${ccount}</p>
  </div>
</center>
<center>
  <button class="back-button"><a href="viewallcustomers">Back</a></button>
</center>

</body>
</html>
