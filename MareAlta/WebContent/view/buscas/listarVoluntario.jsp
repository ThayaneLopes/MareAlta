<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="view/js/jquery-3.2.1/jquery.min.js"></script>
  <script src="view/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listar Voluntários</title>
</head>
<body>
	<strong>Lista de Voluntários</strong>
<div class="container">
	<table class="table table-striped table-bordered">
		<tr>
			<td>Id</td>
			<td>CPF</td>
			<td>Nome</td>
			<td>Orgão Público</td>
			<td>E-mail</td>
			<td>Telefone</td>
		</tr>
		<c:forEach var="voluntario" items="${listaVoluntarios}">
		<tr>
			<td>${voluntario.id}</td>
			<td>${voluntario.cpf}</td>
			<td>${voluntario.nome}</td>
			<td>${voluntario.orgao_publico}</td>
			<td>${voluntario.email}</td>
			<td>${voluntario.telefone}</td>

		</tr>
		</c:forEach>


	</table>
</div>
</body>
</html>