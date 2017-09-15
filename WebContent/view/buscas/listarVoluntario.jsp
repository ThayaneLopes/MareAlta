<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/style.css">
  <script href="view/js/main.js"></script>
	<link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listar Voluntario</title>
</head>
<body class="fundo">
<c:import url="/view/logout/logout.jsp"/>
	<div class="buscas">
	<hr>
	<h3>Lista Voluntários</h3>
	<hr>
	<div style="text-align: center; color: red;"> ${mensagem} </div>
<div class="container">
	<table border="1"class="border">
		<tr>
			<td>Nome</td>
			<td>Orgão Público</td>
			<td>E-mail</td>
			<td>Telefone</td>
			<td>Perfil</td>
			<td>Açôes</td>
		</tr>
		<c:forEach var="voluntario" items="${listaVoluntarios}">
		<tr>
			<td>${voluntario.nome}</td>
			<td>${voluntario.orgao_publico}</td>
			<td>${voluntario.email}</td>
			<td>${voluntario.telefone}</td>
			<td>${voluntario.perfil}</td>
			<td><a href="alterarVoluntario?id=${voluntario.id}">Alterar</a>
			<a href="removerVoluntario?id=${voluntario.id}">Remover</a> 

		</tr>
		</c:forEach>


	</table>
</div>
</body>
</html>