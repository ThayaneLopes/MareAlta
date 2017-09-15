<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script src="view/js/jquery/jquery.min.js"></script>
<script src="view/css/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="view/css/style.css">
<script href="view/js/main.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar Cidade</title>
</head>
<body class="fundo">
	<c:import url="/view/logout/logout.jsp"/>
	<div class="colabore">
		<form action="listarcidade" method="post">
			<input type="text" name="busca" placeholder="Digite o nome da cidade"><br>
			<label for="situacaoRisco">Filtra por Situa��o de Risco</label> <select
				name="situacaoRisco">
				<option value="">N�o Filtrar</option>
				<option value="baixa">Baixa</option>
				<option value="media">M�dia</option>
				<option value="alta">Alta</option>
				<option value="catastrofica">Catastr�fica</option>
			</select> <br> <br> <input type="submit" value="Buscar">
		</form>
	</div>
</body>
</html>