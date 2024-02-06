<!DOCTYPE html>
<html>
<head>
    <title>Customer Navbar</title>
    <link type="text/css" rel="stylesheet" href="css/custnav.css">
    <link type="text/css" rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <style>
        /* Add CSS for the dropdown menu here */
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: black;
            min-width: 150px; /* Adjust the width as needed */
            padding: 10px 0; /* Add padding to the top and bottom to create spacing */
            border-radius: 10px; /* Add rounded corners to the dropdown content */
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }
        .dropdown-content a {
            display: block;
            padding: 10px 20px; /* Adjust the padding as needed */
            color: #fff;
            text-decoration: none;
            transition: 0.3s;
        }
        .dropdown-content a:hover {
            background-color: rgba(110, 110, 110); /* Adjust the background color on hover */
        }
        .dropdown:hover .dropdown-content {
            display: block;
        }
        .profile-icon {
            display: flex;
            align-items: center;
            margin-left: 20px; /* Adjust the spacing as needed */
            cursor: pointer; /* Add a pointer cursor to indicate interactivity */
            color: #fff; /* Change the color to match your design */
        }
        .profile-icon i {
            margin-right: 5px; /* Adjust the spacing between the icon and text */
        }
        .product-dropdown i, .home-icon i {
            transition: transform 0.3s; /* Add a transition for smooth animation */
        }
        .dropdown:hover .product-dropdown i {
            transform: rotate(180deg); /* Rotate the icon when the dropdown is open */
        }
        .dropdown:hover .home-icon i {
            transform: rotate(180deg); /* Rotate the icon when the dropdown is open */
        }
    </style>
</head>
<body>
<header>
    <div id="navbar">
        <a href="custhome" id="logo"><i class="fas fa-bullhorn"></i></a>
        <div id="navbar-right">
            <a href="custhome"> Home</a>
            <a href="viewproducts">View All Products</a>
             <!-- <a href="viewproductbyid">View Product By ID</a> -->
              <a href="displaycategory">View Product By Category</a>
            <a href="updateprofile">Update Profile</a>
            <a href="custlogin">Logout</a>
        </div>
    </div>
</header>

    <script>
    function toggleProfileDropdown() {
        var profileDropdown = document.getElementById("profile-dropdown");
        if (profileDropdown.style.display === "block") {
            profileDropdown.style.display = "none";
        } else {
            profileDropdown.style.display = "block"; // Corrected "display" property
        }
    }
    </script>
</body>
</html>
