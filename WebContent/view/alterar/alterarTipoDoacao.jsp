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
<link rel="stylesheet" type="text/css" href="view/css/login-css.css">
<title>Alterar de Tipos de Doação</title>
</head>
<body>
<c:import url="../comum/logout.jsp"/>
	<div class="cadastro">
	<form action="atualizarTipoDoacao" method="post"	onSubmit="return enviardados();">
		<form:errors path="tipoDoacao.nome" cssStyle="color:red" />
		<input type="hidden" value="${tipodoacao.id}" name="id"> <label
			for="nome">Nome: </label> <input type="text" style="width: 400px;"
			maxlength="50" class="form-control" id="nome" name="nome" required
			value="${tipodoacao.nome}"><br>

		<div type="radio">
			<label for="ativo">Está Ativo?</label>
			<c:choose>
				<c:when test="${tipodoacao.ativo == true}">
					<input type="radio" name="ativo" value="true" checked>Sim<br>
					<input type="radio" name="ativo" value="false"> Não<br>
				</c:when>
				<c:otherwise>
					<input type="radio" name="ativo" value="true" >Sim<br>
			<input type="radio" name="ativo" value="false" checked> Não<br>
				</c:otherwise>
			</c:choose>
		</div>

		<button type="submit" value="">Atualizar</button>

	</form>


</body>
</html>