<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="../css/bootstrap/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="../js/jquery/jquery.min.js"></script>
  <script src="../css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <script href="../js/main.js"></script>
	<title>Cadastros :: Mar� Alta</title>
</head>
<body>
<c:import url="menu.jsp" />
<button id="box" ><a href="cadastroLocalAbrigo">Cadastrar Local Abrigo</a></button><br/>
<button id="box"><a href="cadastroPontoApoio">Cadastrar Ponto de Apoio</a></button><br/>
<button id="box"><a href="cadastroVoluntario">Cadastrar Volunt�rio</a></button><br/>
<button id="box"><a href="cadastroCidadeRisco">Cadastrar Cidade em Risco</a></button><br/>
<button id="box"><a href="cadastroTipoDoacao">Cadastrar Tipo de Doa��o</a></button><br/>
</body>
</html>