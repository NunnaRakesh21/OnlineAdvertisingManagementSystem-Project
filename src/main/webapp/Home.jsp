<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cust Navbar</title>
    <link type="text/css" rel="stylesheet" href="css/custnav.css">
    <link type="text/css" rel="stylesheet" href="css/footer.css">
    <link type="text/css" rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
</head>
<body>
<header>
    <div id="navbar">
        <a href="/" id="logo"><i class="fas fa-bullhorn"></i> </a>
        <div id="navbar-right">
            <a href="/"><i class="fas fa-home"></i> Home</a>
            <a href="contactus"><i class="fas fa-phone"></i> Contact Us</a>
            <!-- <a href="aboutus"><i class="fas fa-info-circle"></i> About Us</a> -->
            <a href="custlogin"><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="custregister"><i class="fas fa-user-plus"></i> Register</a>
        </div>
    </div>
</header>
<br>
<br><br>
<script type="text/javascript" src="https://leaverou.github.io/prefixfree/prefixfree.min.js"></script>

<center><div class="container">
<div id="cloud">  Welcome to Advertising Management System </div>
</div></center>
<br><br><br>
<!--  <img src="" width="1360" height="600">  -->
 <br><br>
 <!-- partial:index.partial.html -->
<section class="articles">
  <article>
    <div class="article-wrapper">
      <figure>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1HoavI-RBRT3usevVqRBNBq6Xs-HVDPDnzg&usqp=CAU" alt="" />
      </figure>
      <div class="article-body">
        <h2> Mobiles </h2>
        <p>
        The new design also features contoured edges and a customisable Action button, allowing users to personalise their iPhone experience. Powerful camera upgrades enable the equivalent of seven pro lenses with incredible image quality.        </p>
        <a href="custlogin" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
  <article>

    <div class="article-wrapper">
      <figure>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxizv2CAQz6iOL2yun-53G2UBL35mOQTvV4g&usqp=CAU" alt="" />
      </figure>
      <div class="article-body">
        <h2>Laptops</h2>
        <p>
A laptop computer or notebook computer, also known as a laptop or notebook for short, is a small, portable personal computer (PC). Laptops typically have a clamshell form factor with a flat panel screen 

      </p>
        <a href="custlogin" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
  <article>

    <div class="article-wrapper">
      <figure>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAf0MPBvK5wsT1HjvwM17QcY8x3xQVOO5NGw&usqp=CAU" alt="" />
      </figure>
      <div class="article-body">
        <h2>Watches</h2>
        <p>
A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the person's activities. A wristwatch is designed to be worn around the wrist        </p>
        <a href="custlogin" class="read-more">
          Read more <span class="sr-only">about this is some title</span>
          <svg xmlns="http://www.w3.org/2000/svg" class="icon" viewBox="0 0 20 20" fill="currentColor">
            <path fill-rule="evenodd" d="M12.293 5.293a1 1 0 011.414 0l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-2.293-2.293a1 1 0 010-1.414z" clip-rule="evenodd" />
          </svg>
        </a>
      </div>
    </div>
  </article>
</section>
<!-- partial -->
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>
