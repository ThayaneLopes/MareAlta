<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Tipos de Doação</title>
</head>
<body>
	
	<form action="atualizarTipoDoacao" method="post" onSubmit="return enviardados();">
		<form:errors path="tipoDoacao.nome" cssStyle="color:red" /> 
		<input type="hidden" value="${tipodoacao.id}" name="id">
		<label for="nome">Nome: </label> 
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required value="${tipodoacao.nome}"><br>

		<div type="radio">
		<label for="ativo">Está Ativo?</label>
		<input type="radio" name="ativo" value="true" checked>Sim<br>
		<input type="radio" name="ativo" value="false"> Não<br>
		</div>

		<button type="submit" value="">Atualizar</button>

	</form>
		
	
</body>
</html>