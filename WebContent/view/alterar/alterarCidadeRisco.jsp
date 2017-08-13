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

	<hr><h3>Alterar Cidades de Risco</h3><hr>
	
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="alterarCidadeRisco" method="post">

		<input type="hidden" name="id" value="${cidaderisco.id}" />
	
		<div class="form-group">
			<label for="nome">Nome</label> 	
			<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" value="${cidaderisco.nome}" required><br>	
			
			<label for="regiao">Região</label> 
			<select style="width: 400px;" class="form-control" id="regiao" name="regiao" >
			<c:choose>
					<c:when test="${cidaderisco.regiao eq 'urbana'}">
						<option value="urbana" selected>Urbana</option>
				<option value="rural">Rural</option>
					</c:when>
					<c:otherwise>
						<option value="urbana">Urbana</option>
				<option value="rural" selected>Rural</option>
					</c:otherwise>
				</c:choose>
			</select> <br>


			<label for="situacaoRisco">Situação de Risco</label> 
			<select style="width: 400px;" class="form-control" id="situacaoRisco" name="situacaoRisco">
			<c:choose>
					<c:when test="${cidaderisco.situacaoRisco eq 'baixa'}">
					<option value="baixa" selected>Baixa</option>
					<option value="media">Média</option>
					<option value="alta">Alta</option>
					<option value="catastrofica">Catastrófica</option>
					</c:when>
					<c:when test="${cidaderisco.situacaoRisco eq 'media'}">
					<option value="baixa" >Baixa</option>
					<option value="media" selected>Média</option>
					<option value="alta">Alta</option>
					<option value="catastrofica">Catastrófica</option>
					</c:when>
					<c:when test="${cidaderisco.situacaoRisco eq 'alta'}">
					<option value="baixa" >Baixa</option>
					<option value="media" >Média</option>
					<option value="alta" selected>Alta</option>
					<option value="catastrofica">Catastrófica</option>
					</c:when>
					
					<c:otherwise>
					<option value="baixa" >Baixa</option>
					<option value="media" >Média</option>
					<option value="alta" >Alta</option>
					<option value="catastrofica" selected>Catastrófica</option>
					</c:otherwise>
				</c:choose>
				
			</select> <br>

		</div>

		<p> 
			<button type="submit" class="btn btn-primary">  Alterar </button>
		</p>
	</form>

</body>
</html>