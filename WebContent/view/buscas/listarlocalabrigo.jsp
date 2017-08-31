<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/style.css">
  <script href="view/js/main.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/login-css.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de Locais de Abrigo</title>
</head>
<body>
<c:import url="logout" />
<hr>
	<h3>Lista Locais de Abrigo</h3>
	<hr>
	<div style="text-align: center; color: red;"> ${mensagem} </div>
<div class="container">
	<table class="table table-striped table-bordered">
		<tr>
				<td>Codigo</td>
				<td>NOME</td>
				<td>NOME DO RESPONSAVEL</td>
				<td>TELEFONE 1</td>
				<td>TELEFONE 2</td>
				<td>ESTADO</td>
				<td>BAIRRO</td>
				<td>RUA/AVENIDA</td>
				<td>COMPLEMENTO</td>
				<td>CIDADE</td>
				<td>CEP</td>
				<td>PRECISA DE VOLUNTARIOS</td>
				<td>QUANT. FAMILIAS</td>
				<td> A��ES</td>
						</tr>
		
		<c:forEach var="abrigo" items="${listabrigo}">
			<tr>
				<td>${abrigo.id}</td>
				<td>${abrigo.nome}</td>
				<td>${abrigo.responsavel}</td>
				<td>${abrigo.telefone1}</td>
				<td>${abrigo.telefone2}</td>
				<td>${abrigo.estado}</td>
				<td>${abrigo.bairro}</td>
				<td>${abrigo.ruaAvenida}</td>
				<td>${abrigo.complemento}</td>
				<td>${abrigo.cidadeRisco.nome}</td>
				<td>${abrigo.cep}</td>
				<td>${abrigo.precisaVoluntarios}</td>
				<td>${abrigo.quantidadeFamilia}</td>
				<td>
					<a href="alterarLocalAbrigo?id=${abrigo.id}">Alterar</a> 
				</td>
				
	</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>