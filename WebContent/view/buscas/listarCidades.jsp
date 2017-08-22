<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="view/css/bootstrap/css/bootstrap.min.css">
<script src="view/js/jquery/jquery.min.js"></script>
<script src="view/css/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar de cidades</title>
</head>
<body>
	<hr>
	<h3>Listar Cidades em Risco</h3>
	<hr>
	<div style="text-align: center; color: red;"> ${mensagem} </div>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<td>Código</td>
				<td>Nome</td>
				<td>Região</td>
				<td>Situação de Risco</td>
				<td>AÇÕES</td>
			</tr>

			<c:forEach var="cidade" items="${listacidades}">
				<tr>
					<td>${cidade.id}</td>
					<td>${cidade.nome}</td>
					<td>${cidade.regiao}</td>
					<td>${cidade.situacaoRisco}</td>
					<td><a href="exibirAlterarCidadeRisco?id=${cidade.id}">Alterar</a>
					<a href="removerCidade?id=${cidade.id}">Remover</a></td>
					
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>