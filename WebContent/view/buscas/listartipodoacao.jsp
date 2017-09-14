<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/style.css">
  <script href="view/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Tipo Doação</title>
</head>
<body class="fundo">
<c:import url="../logout/logout.jsp"/>
	<div class="buscas">
	<strong>Lista de Tipos Doação</strong>
	<div style="text-align: center; color: red;"> ${mensagem} </div>
	<div class="container">
		<table class="table table-striped table-bordered">
			<tr>
				
				<td>Nome</td>
				<td>Ativo</td>
				<td>Açôes</td>
			</tr>
			<c:forEach var="listatipodoacao" items="${listatipodoacao}">
				<tr>
					
					<td>${listatipodoacao.nome}</td>
					<c:choose>
						<c:when test="${listatipodoacao.ativo == true}">
							<td>SIM</td>
						</c:when>
						<c:otherwise>
							<td>NÃO</td>
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