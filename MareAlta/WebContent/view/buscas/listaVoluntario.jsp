<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listar Voluntário</title>
</head>
<body>
	<strong>Lista de Voluntários</strong>

	<table border="1" style="width: 100%">
		<tr>
			<td>Id</td>
			<td>Nome</td>
			<td>Orgão Público</td>
			<td>E-mail</td>
			<td>Telefone(1º Opção)</td>
			<td>Telefone (2º Opção)</td>
		</tr>
		<c:forEach var="xxxx" items="${listavoluntarios}">
		<tr>
			<td>${xxx.id}</td>
			<td>${xxx.nome}</td>
			<td>${xxx.orgaoPublico}</td>
			<td>${xxx.email}</td>
			<td>${xxx.telefone1}</td>
			<td>${xxx.telefone2}</td>



		</tr>
		</c:forEach>


	</table>

</body>
</html>