<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listar Voluntários</title>
</head>
<body>
	<strong>Lista de Voluntários</strong>

	<table border="1" style="width: 100%">
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

</body>
</html>