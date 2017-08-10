<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Alterar Cidade de Risco</title>
	<link rel="stylesheet" type="text/css" href="view/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
	<script type="text/javascript" src="view/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
</head>
<body style="margin-left: 1%;">

	<c:import url="menu.jsp" />

	<hr><h3>Alterar Cidades de Risco</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="alterarCidadeRisco" method="post">

		<input type="hidden" name="id" value="${cidaderisco.id}" />
	
		<div class="form-group">
			<label for="nome">Nome</label> 	
			<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" value="${cidaderisco.nome}" required><br>	
			
			<label for="regiao">Região</label> 
			<select style="width: 400px;" class="form-control" id="regiao" name="regiao" >
				<option value="urbana">Urbana</option>
				<option value="rural">Rural</option>
			</select> <br>


			<label for="situacaoRisco">Situação de Risco</label> 
			<select style="width: 400px;" class="form-control" id="situacaoRisco" name="situacaoRisco">
				<option value="baixa">Baixa</option>
				<option value="media">Média</option>
				<option value="alta">Alta</option>
				<option value="catastrofica">Catastrófica</option>
			</select> <br>

		</div>

		<p> 
			<button type="reset" class="btn btn-default"> &nbsp; Limpar &nbsp; </button> &nbsp;
			<button type="submit" class="btn btn-primary"> &nbsp; Alterar &nbsp; </button>
		</p>
	</form>

</body>
</html>