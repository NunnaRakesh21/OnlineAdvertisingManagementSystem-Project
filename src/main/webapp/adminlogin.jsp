<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/register.css">
    <title>Admin Login</title>
</head>
<body>
<%@ include file="adnavbar.jsp" %>
<br>
<br>
<br>
   <span class="blink">
<h3 align="center" style="color:red" >${ message}</h3>
</span>
<div class="login-wrapper">
    <form method="post"  action="checkadminlogin" class="form">
        <img src="images/avatar.png" alt="">
        <h2>Admin Login</h2>
        <div class="input-group">	
            <input type="text" name="username" id="username" required="required">
            <label for="username">User Name</label>
        </div>
        <div class="input-group">
            <input type="password" name="password" id="password" required="required">
            <label for="password">Password</label>
        </div>
 			<br>
         <input type="submit" value="Login" class="submit-btn">
        
    </form>
</div>

</body>
</html>
