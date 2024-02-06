<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <link rel="stylesheet" href="css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Login</title>
</head>
<body>
<%@ include file="custnavbar.jsp" %>
<br>
<br>
<br>
<br>
<span class="blink">
    <h3 align="center" style="color:red">${message}</h3>
</span>
<div class="login-wrapper">
    <form method="post" action="checkcustlogin" class="form">
        <img src="images/avatar.png" alt="">
        <h2>Login</h2>
        <div class="input-group">
            <input type="text" name="username" id="username" required="required">
            <label for="username">User Name</label>
        </div>
        <div class="input-group">
            <input type="password" name="password" id="password" required="required">
            <label for="password">Password</label>
            <i class="fas fa-eye" id="togglePassword" onclick="togglePasswordVisibility()"></i>
        </div>
        <br>
<div class="captcha-container">
    <label for="captcha">Enter CAPTCHA: </label>
    <img src="captchaImage.jsp" alt="CAPTCHA" />
<input type="text" id="captcha" name="captcha" required />
</div>
<br>
        <a href="#forgot-pw" class="forgot-pw">Forgot Password ?</a>
        <input type="submit" value="Login" class="submit-btn">
        <br>
        <br>
        <div class="text-center text-lg-start mt-4 pt-2">
            <p>Don't have an Account? <a href="custregister" class="login-link">Register here</a></p>
        </div>
    </form>

    <div id="forgot-pw">
        <form action="" class="form">
            <a href="#" class="close">&times;</a>
            <h2>Reset Password</h2>
            <div class="input-group">
                <input type="email" name="email" id="email">
                <label for="email">Email</label>
            </div>
            <input type="submit" value="Submit" class="submit-btn">
        </form>
    </div>
</div>

<script>
// Function to toggle password visibility
function togglePasswordVisibility() {
    var passwordField = document.getElementById("password");
    var togglePasswordIcon = document.getElementById("togglePassword");

    if (passwordField.type === "password") {
        passwordField.type = "text";
        togglePasswordIcon.classList.remove("fa-eye");
        togglePasswordIcon.classList.add("fa-eye-slash");
    } else {
        passwordField.type = "password";
        togglePasswordIcon.classList.remove("fa-eye-slash");
        togglePasswordIcon.classList.add("fa-eye");
    }
}
</script>
</body>
</html>
