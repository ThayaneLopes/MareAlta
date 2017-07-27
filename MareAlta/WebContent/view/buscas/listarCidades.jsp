<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Listar de cidades</title>
</head>
<body>
	<hr>
	<h3>Listar Cidades em Risco</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr>
			<td>Código</td>
			<td>Nome</td>
			<td>Região</td>
			<td>Situação de Risco</td>
		</tr>
		
		<c:forEach var="cidade" items="${listacidades}">
		<tr>
			<td>${cidade.id}</td>
			<td>${cidade.nome}</td>
			<td>${cidade.regiao}</td>
			<td>${cidade.situacaoRisco}</td>
		</tr>
	</c:forEach>
	
</table>
</body>
</html>