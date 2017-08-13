<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css">
<script src="view/js/jquery-3.2.1/jquery.min.js"></script>
<script src="view/css/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Tipo Doa��o</title>
</head>
<body>
	<strong>Lista de Tipos Doa��o</strong>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				<td>Id</td>
				<td>Nome</td>
				<td>Ativo</td>
				<td>A��es</td>
			</tr>
			<c:forEach var="listatipodoacao" items="${listatipodoacao}">
				<tr>
					<td>${listatipodoacao.id}</td>
					<td>${listatipodoacao.nome}</td>
					<c:choose>
						<c:when test="${listatipodoacao.ativo == true}">
							<td>SIM</td>
						</c:when>
						<c:otherwise>
							<td>N�O</td>
						</c:otherwise>
					</c:choose>
					<td><a href="alterartipodoacaoform?id=${listatipodoacao.id}">Alterar</a>
						<a href="removertipodoacao?id=${listatipodoacao.id}">Remover</a>
				</tr>
			</c:forEach>


		</table>
	</div>
</body>
</html>