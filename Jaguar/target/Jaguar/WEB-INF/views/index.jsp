<!DOCTYPE html>
<html lang="en">
<head>
  <title>JAGUAR</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%@ include file="header.jsp" %>

<body>
<div class="container">
                   <h2>SAROVARA ONLINE CAR SHOWROOM</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/images/images2.jpg" alt="Bangalore" style="width:100%;">
        <div class="carousel-caption">
       <h3>Bangalore</h3>
          <p>Bangalore is always so much fun!</p>
        </div>
      </div>
      
       <div class="item">
      <img src="resources/images/images8.jpg" alt="RAMANAGARA" style="width:100%;">
        <div class="carousel-caption">
        <h3>RAMANAGARA</h3>
          <p>PLACE OF GOD</p>
        </div>
      </div>
      
      
       <div class="item">
      <img src="resources/images/download1.jpg" alt="MYSORE" style="width:100%;">
        <div class="carousel-caption">
        <h3>MYSORE</h3>
          <p>PLACE OF DEVINE CHAMMUNDESWARI</p>
        </div>
      </div>

      <div class="item">
      <img src="resources/images/images3.jpg" alt="Chennai" style="width:100%;">
        <div class="carousel-caption">
        <h3>Chennai</h3>
          <p>Thank you, Chennai!</p>
        </div>
      </div>
    
      <div class="item">
      <img src="resources/images/images4.jpg" alt="Chennai" style="width:100%;">
         <div class="carousel-caption">
          <h3>New delhi</h3>
          <p>I love U shreya!</p>
        </div>
      </div>
  
       <div class="item">
       <img src="resources/images/images5.jpg" alt="hyderabad" style="width:100%;">
         <div class="carousel-caption">
         <h3>hyerabad</h3>
          <p>hyderabad biriyani is very good!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</body>
<%@ include file="footer.jsp" %>
</html>
