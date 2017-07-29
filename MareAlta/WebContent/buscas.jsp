<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Buscar :: Maré Alta</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery-3.2.1/jquery.min.js"></script>
  <script src="view/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script href="main.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
  <c:import url="menu.jsp" />

  <div style="margin-top: 55px;" class="row text-center">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="logo.png" alt="logo" width="200" height="150">
        <p><strong>Local de Abrigo</strong></p>
        <button class="btn" data-toggle="modal" data-target="#myModal"><a href="buscarlocalabrigo">Buscar</a></button> 
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="logo.png" alt="logo" width="200" height="150">
        <p><strong>Ponto de Apoio</strong></p>
        <button class="btn" data-toggle="modal" data-target="#myModal"><a href="buscarpontoapoio">Buscar</a></button> 
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="logo.png" alt="logo" width="200" height="150">
        <p><strong>Voluntários</strong></p>
        <button class="btn" data-toggle="modal" data-target="#myModal"><a href="buscarVoluntario">Buscar</a></button> 
      </div>
    </div>
  </div>
</div>
<div class="row text-center">
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="logo.png" alt="logo" width="200" height="150">
      <p><strong>Cidades de Risco</strong></p>
      <button class="btn" data-toggle="modal" data-target="#myModal"><a href="buscarcidades">Buscar</a></button> 
    </div>
  </div>
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="logo.png" alt="logo" width="200" height="150">
      <p><strong>Tipo de Doações</strong></p>
      <button class="btn" data-toggle="modal" data-target="#myModal"><a href="buscartipotoacao">Buscar</a></button> 
    </div>
  </div>
  <div class="col-sm-4">
    <div class="thumbnail">
      <img src="logo.png" alt="logo" width="200" height="150">
      <p><strong>XXX</strong></p>
      <button class="btn" data-toggle="modal" data-target="#myModal"><a href="#">Buscar</a></button> 
    </div>
  </div>
</div>
</div>


</body>
</html>