<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet" type="text/css" href="view/css/login-css.css">
<title>Buscar | Mar� Alta</title>
</head>
<body class="fundo">
	<c:import url="logout.jsp" />
	<br>
	<br>
	<br>
	<br>
	<div class="colabore">
		<p>Selecione o tipo de busca que deseja:</p>
		<button>
			<a href="buscarlocalabrigo">Buscar por Local de Abrigo</a><br />
		</button>
		<button>
			<a href="buscarpontoapoio">Buscar por Ponto de Apoio</a><br />
		</button>
		<button>
			<a href="buscarcidades">Buscar por Cidades em Risco</a><br />
		</button><br>
		<button>
			<a href="buscartipodedoacao">Buscar por Tipos de Doa��o</a><br />
		</button>
		<button>
			<a href="buscarvoluntario">Buscar por Volunt�rio</a><br />
		</button>


	</div>

</body>
</html>