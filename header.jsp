<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- font-aewsome CSS -->
    <link rel="stylesheet" href="css/all.min.css">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="bootstrap.css">
    
    
    <!-- JQuery Core Lib-->
    <script src="js/jquery-3.6.0.min.js"></script>
    

    <title>Hello, world!</title>
  </head>
  <body>
   
  <!-- nav bar started -->
		<!-- --------------------------------nav start---------------------- -->
  <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #2e5672;">
    <a class="navbar-brand" href="#"><img src="img/log.png" alt="image not found" width="200px" height="70px"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  

        <div class="container-fluid">
          <a class="navbar-brand" href="index.jsp">FoodStore</a>
          <button class="navbar-toggler" type="button"
            data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false"
             aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item"><a class="nav-link active"
                aria-current="page" href="index.jsp">Home</a></li>
              <li class="nav-item"><a class="nav-link"
                href="do.foodoperation?action=showfoodlist">Menu</a></li>
                
            <core:if test="${sessionScope.user != null}">   
              <li class="nav-item dropdown"><a
                class="nav-link dropdown-toggle" href="#"
                id="navbarDropdownMenuLink" role="button"
                data-bs-toggle="dropdown" aria-expanded="false"> ${sessionScope.user.fname} ${sessionScope.user.lname}
              </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                <core:if test="${user.role=='owner' or user.role=='admin' }">
                  <li><a class="dropdown-item" href="addfood.jsp">Add Food</a></li>
                  <li><a class="dropdown-item" href="#">All Orders</a></li>
                  </core:if>
                  <core:if test="${user.role=='customer'}">
                  <li><a class="dropdown-item" href="add-to-cart?id=${food.food_Id}">View Cart</a></li>
                  <li><a class="dropdown-item" href="#">My Orders</a></li>
                  </core:if>
                  <li><a class="dropdown-item" href="do.useroperation?action=signout">SignOut</a></li>
                  
                </ul>
              </li>
              </core:if>
              
              
              <core:if test="${sessionScope.user == null}">
              <li class="nav-item"><a href="register.jsp" class="nav-link">SignUp</a>
              <li class="nav-item"><a href="login.jsp" class="nav-link">SignIn</a>
              </core:if>
              
              <core:if test="${sessionScope.user != null}"> </core:if>
             <!--  <li class="nav-item"><a href="do.useroperation?action=signout" class="nav-link">SignOut</a> -->
              <li class="nav-item"><a class="nav-link" href="about_us.jsp">About_Us</a>
              </li>
              <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact_Us</a></li>
            </ul>
          </div>
      <form class="form-inline my-2 my-lg-0" style="margin-left: 230px;">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="background-color: blueviolet; margin-left: 55px; width: 100px;">Search</button>
      </form>
    </div>
  </nav>

		
	<!-- nav bar ended -->