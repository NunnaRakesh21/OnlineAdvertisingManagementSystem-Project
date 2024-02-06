<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/register.css">
    <title>Update Profile</title>
</head>
<body>
<%@ include file="customernavbar.jsp" %>
<br>
<br>
<br>
<br>
<br>
<br>
   <span class="blink">
<h3 align="center" style="color:red" >${ message}</h3>
</span>

<div class="login-wrapper">
    <form method="post"  action="update" class="form">
        <img src="images/avatar.png" alt="">
        <h2>Update Profile</h2>
        <div class="input-group">
            <input type="text" name="firstname" id="firstname" required="required"   value="${cust.firstname}"/>
            <label for="firstname">First Name</label>
        </div>
         <div class="input-group">
            <input type="text" name="lastname" id="lastname" required="required"  value="${cust.lastname}"/>
            <label for="lastname">Last Name</label>
        </div>
        
         <div class="input-group">
            <input type="text" name="username" id="username" required="required" value="${cust.username}"/>
            <label for="username">User Name</label>
        </div>
        
      <div class="input-group">
            <input type="email" name="email" id="username" required="required" value="${cust.email}"/>
            <label for="email">Email</label>
        </div>
           <div class="input-group">
           
            <input type="password" name="password" id="password" required="required"  value="${cust.password}">
            <label for="password">Password</label>
        </div>
        <br>
       <div>
            <input type="submit" value="update" class="submit-btn">
            </div>
            
            <br>
      
      
    </form>
        </div>

</body>
</html>
