<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script href="main.js"></script>
  <title>Home :: Maré Alta</title>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>


<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
  <c:import url="menu.jsp" />
   <div id="band" class="container text-center">
      <h3>Sobre o Projeto</h3>
      <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <br>

        <!-- Container (Contact Section) -->
        <div id="contact" class="container">
          <h3 class="text-center">Contacto</h3>
          <p class="text-center"><em>Alguma dúvida? Entre em contato!</em></p>

          <div class="row">
            <div class="col-md-4">
              <p><span class="glyphicon glyphicon-map-marker"></span>Pernambuco, PE</p>
              <p><span class="glyphicon glyphicon-phone"></span>Phone: (81) xxxxx-xxxx</p>
              <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
            </div>
            <div class="col-md-8">
              <div class="row">
                <div class="col-sm-6 form-group">
                  <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                </div>
                <div class="col-sm-6 form-group">
                  <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                </div>
              </div>
              <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
              <br>
              <div class="row">
                <div class="col-md-12 form-group">
                  <button class="btn pull-right" type="submit">Enviar</button>
                </div>
              </div>
            </div>
          </div>
          <br>


          <div id="googleMap"></div>
          <script>
            function myMap() {
              var myCenter = new google.maps.LatLng(41.878114, -87.629798);
              var mapProp = {center:myCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
              var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
              var marker = new google.maps.Marker({position:myCenter});
              marker.setMap(map);
            }
          </script>
          <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBu-916DdpKAjTmJNIgngS6HL_kDIKU0aU&callback=myMap"></script>
          <footer class="text-center">
            <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
              <span class="glyphicon glyphicon-chevron-up"></span>
            </a><br><br>
            <p>Maré Alta</p> 
          </footer>

        </body>
        </html>

