<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>Cadastro de Tipos de Doa��o</title>
</head>
<body class="fundo">
<br><br><br><br><br>
<c:import url="../logout/logout.jsp"/>
	<div style="text-align: center; color: red;">${mensagem}</div>
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="cadastroComSucessoTipoDoacao" method="post" onSubmit="return enviardados();">
		<form:errors path="tipoDoacao.nome" cssStyle="color:red" /> 
<div class="cadastro">
		<label for="nome">Nome da Doa��o: </label> <br>
		<input type="text" style="width: 400px;" id="nome" name="nome" maxlength="30" minlength="3" required><br>

		<div type="radio">
		<label for="ativo">Pode ser escolhida por Locais de Abrigo?</label><br>
		<input type="radio" name="ativo" value="true" checked>Sim
		<input type="radio" name="ativo" value="false"> N�o<br>
		</div>
		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">
</div>
		

	</form>
		
	
</body>
</html>