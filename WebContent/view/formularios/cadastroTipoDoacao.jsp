<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Tipos de Doação</title>
</head>
<body>
	<div style="color: red;"> ${mensagem} </div>
	<form action="cadastroComSucessoTipoDoacao" method="post" onSubmit="return enviardados();">
		<form:errors path="tipoDoacao.nome" cssStyle="color:red" /> 

		<label for="nome">Nome da Doação: </label> 
		<input type="text" style="width: 400px;" class="form-control" id="nome" name="nome" ><br>

		<div type="radio">
		<label for="ativo">Pode ser escolhida por Locais de Abrigo?</label>
		<input type="radio" name="ativo" value="true" checked>Sim<br>
		<input type="radio" name="ativo" value="false"> Não<br>
		</div>

		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>
		
	
</body>
</html>