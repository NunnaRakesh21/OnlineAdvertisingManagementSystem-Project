<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="css/register.css">
    <title>Register</title>
</head>
<body>
<%@ include file="custnavbar.jsp" %>
<br>
<br>
<br>
<br>
<br>
<br>
<span class="blink">
    <h3 align="center" style="color:red">${message}</h3>
</span>

<div class="login-wrapper">
    <form method="post" action="insertcust" class="form" onsubmit="return validateForm()">
        <img src="images/avatar.png" alt="">
        <h2>Register</h2>
        <div class="input-group">
            <input type="text" name="firstname" id="firstname" required="required">
            <label for="firstname">First Name</label>
        </div>
        <div class="input-group">
            <input type="text" name="lastname" id="lastname" required="required">
            <label for "lastname">Last Name</label>
        </div>
        <div class="input-group">
            <input type="text" name="username" id="username" required="required">
            <label for="username">User Name</label>
        </div>
        <div class="input-group">
            <input type="email" name="email" id="email" required="required">
            <label for="email">Email</label>
        </div>
        <div class="input-group">
            <input type="password" name="password" id="password" required="required">
            <label for="password">Password</label>
            <i class="fas fa-eye" id="togglePassword" onclick="togglePasswordVisibility()"></i> <!-- Eye icon -->
        </div>
        <br>
        <div>
            <input type="submit" value="Register" class="submit-btn">
            <br>
            <p class="small fw-bold mt-2 pt-1 mb-0" type="link">
                Already have an Account? <a href="custlogin" class="login-link">Login</a>
            </p>
        </div>
    </form>
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

// Function to validate the form
function validateForm() {
    var firstName = document.getElementById("firstname").value;
    var lastName = document.getElementById("lastname").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    // Validation for First Name
    if (firstName === "") {
        alert("First name is required");
        return false;
    }
    
    // Check if the first name contains special characters (only allow letters and spaces)
    var firstNamePattern = /^[A-Za-z\s]+$/;
    if (!firstName.match(firstNamePattern)) {
        alert("First name should only contain letters and spaces.");
        return false;
    }

    // Validation for Last Name
    if (lastName === "") {
        alert("Last name is required");
        return false;
    }
    
    // Check if the last name contains special characters (only allow letters and spaces)
    var lastNamePattern = /^[A-Za-z\s]+$/;
    if (!lastName.match(lastNamePattern)) {
        alert("Last name should only contain letters and spaces.");
        return false;
    }

    // Validation for Email (You can add more complex email validation if needed)
    if (email === "") {
        alert("Email is required");
        return false;
    }

    // Validation for Password
    if (password === "") {
        alert("Password is required");
        return false;
    }

    // Check password restrictions (e.g., at least 8 characters, containing letters, numbers, and special characters)
    var passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@#$%^&!])[A-Za-z\d@#$%^&!]{8,}$/;
    if (!password.match(passwordPattern)) {
        alert("Password must be at least 8 characters and include letters, numbers, and special characters (@#$%^&!).");
        return false;
    }

    return true; // If all validation passes, the form will be submitted.
}
</script>
</body>
</html>
