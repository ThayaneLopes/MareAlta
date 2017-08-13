<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
<title>Cadastro de Voluntário</title>
</head>
<body>
<br><br><br><br><br>
<c:import url="../comum/menu.jsp" />
	<div style="color: red;">${mensagem}</div>
	 <form action="cadastroComSucessoVoluntario" method="post">
	 		<form:errors path="voluntario.nome" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.cpf" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.email" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.telefone" cssStyle="color:red" /> 
<div class="cadastro">
		<label for="cpf">CPF:</label> 	
		<input type="text" style="width: 200px;" class="form-control" id="cpf" name="cpf" placeholder="000.000.000-00" onkeyup="validar(this,'num');"><br>	

		<label for="nome">Nome:</label>		
		<input type="text" style="width: 400px;" class="form-control" id="nome" name="nome" onkeyup="validar(this,'text');"> <br>

		<label for="orgaoPublico">Orgão Publico:</label> 		
		<input type="text" style="width: 200px;" class="form-control" id="orgao_publico" name="orgao_publico" placeholder="Se sim, favor insira a sigla"><br>

		<label for="email">E-mail:</label> 	
		<input type="email" style="width: 400px;" class="form-control"  id="email" name="email" ><br>	
		
		<label for="telefone1">Telefone:</label> 	
		<input type="tel" style="width: 200px;" class="form-control"  id="telefone1" name="telefone" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');"><br>	
		
		<label for="pontoApoio">Ponto de Apoio:</label> 
		<select name="pontoApoio" >
			<option value=""> Selecione </option>
			<c:forEach items="${listaPontoApoio}" var="obj">
				<option value="${obj.id}"> ${obj.nome} </option>
			</c:forEach>
		</select></br> 
		
		<label for="localAbrigo">Local Abrigo:</label> 
		<select name="localAbrigo" >
			<option value=""> Selecione </option>
			<c:forEach items="${listaLocalAbrigo}" var="obj">
				<option value="${obj.id}"> ${obj.nome} </option>
			</c:forEach>
		</select> </br>
		
	
		
		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">
</div>
	</form>

<script>
	function validar(dom,tipo){
	switch(tipo){
		case'num':var regex=/[A-Za-z]/g;break;
		case'text':var regex=/\d/g;break;
	}
	dom.value=dom.value.replace(regex,'');
}
</script>
</body>
</html>
	
