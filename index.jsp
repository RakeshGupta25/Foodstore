<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <jsp:include page="header.jsp"></jsp:include>
    <jsp:include page="messages.jsp"></jsp:include>
    
    <%--
    <jsp:include> is action tag of jsp which used include another
    jsp file into current jsp file
    
    --%>
    

    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodStore</title>
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="gro_Style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</head>
<body>
        
    <h1>Food Store Home Page.</h1>
    
    <!-- ------------------------------slide bar---------------------------- -->
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active" style="text-align: center;">
        <img src="img\head2.jpg" alt="image not found" width="1350px" height="450px">
        <div class="carousel-caption d-none d-md-block">
          <h5></h5>
          <p></p>
        </div>
        <h1 style="font-size: xx-large; color: darkmagenta">When I shop, the world gets better, and the world is better, but then it's not, and I need to do it again.</h1>
          <p style="color: darkblue;">I love shopping. There is a little bit of magic found in buying something new.</p>
        
      </div>
      <div class="carousel-item">
        <img src="img\head3.gif" class="d-block w-100" alt="..." height="450px">
        <div class="carousel-caption d-none d-md-block">
          <h5></h5>
          <p></p>
        </div>
      </div>
      <div class="carousel-item" >
        <img src="img\head1.png" class="d-block w-100" alt="..." height="450px"> 
        <div class="carousel-caption d-none d-md-block">
          <h5></h5>
          <p></p>
        </div>
      </div>
      <div class="carousel-item">
        <img src="img\feedback.jpg" class="d-block w-100" alt="..." height="450px"> 
        <div class="carousel-caption d-none d-md-block">
          <h5></h5>
          <p></p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<!-- ------------------------------slide bar end-------------------------------- -->
<!-- ------------------------------article start-------------------------------- -->

<div>
  <section>
    <div  class="container lobo" style="text-align: center; background-color: lightblue; margin-top: 50px">
      <div class="row">
    
        <div class="col-lg-4 col-md-6 col-sm-12 boxes" >
          <img src="img/support-247.jpg" alt="" width="250px" height="250px">
          <h2 class="heading">24/7 Customer<br> Support</h2>
          <p class="info">
              A dedicated 24x7 customer<br>
              support team always at your<br>
              service to help solve any problem
          </p>
        </div>

        <div class="col-lg-4 col-md-6 col-sm-12 boxes" >
          <img src="img/safety-first.png" alt="" width="250px" height="250px" >
          <h2 class="heading">Your Safety First</h2>
          <p class="info">
              Keep your loved ones informed<br>
              about your travel routes or call<br>
              emergency services when in need
          </p>
        </div>
        <div class="col-lg-4 col-md-6 col-sm-12 boxes" >
          <img src="img/top-rated.jpg" alt="" width="250px" height="250px" >
          <h2 class="heading">Top Rated Driver-Partners</h2>
          <p class="info">
              All our driver-partners are<br>
              background verified and trained to<br>
              deliver only the best experience
          </p>
        </div>
      </div>
    </div>

<!-- ------------------------------article end-------------------------------- -->
    
     <jsp:include page="footer.jsp"></jsp:include>
     
      <!-------------------------JavaScript---------------------->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
     
     
     </body>
     </html>