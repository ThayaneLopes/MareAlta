<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Voluntário</title>
</head>
<body>

	 <form action="cadastroComSucessoVoluntario" method="post" onSubmit="return enviardados();">
	 		<form:errors path="voluntario.nome" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.cpf" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.email" cssStyle="color:red" /> 
	 		<form:errors path="voluntario.telefone" cssStyle="color:red" /> 

		<label for="cpf">CPF:</label> 	
		<input type="text" style="width: 200px;" maxlength="11" class="form-control" id="cpf" name="cpf" required><br>	

		<label for="nome">Nome:</label>		
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required minlength="10"> <br>

		<label for="orgaoPublico">Orgão Publico:</label> 		
		<input type="text" style="width: 200px;" maxlength="50" class="form-control" id="orgao_publico" name="orgaoPublico" placeholder="Se sim, favor insira a sigla"><br>

		<label for="email">E-mail:</label> 	
		<input type="email" style="width: 400px;" maxlength="50" class="form-control"  id="email" name="email" required><br>	
		
		<label for="telefone1">Telefone:</label> 	
		<input type="tel" style="width: 200px;" maxlength="11" minlength="11" class="form-control"  id="telefone1" name="telefone" required placeholder="DD+N° Telefone"><br>	
		
		<label for="localAbrigo">Local Abrigo:</label> 
		<select name="localAbrigo" >
			<option value=""> Selecione </option>
			<c:forEach items="${listaLocalAbrigo}" var="obj">
				<option value="${obj.id}"> ${obj.nome} </option>
			</c:forEach>
		</select> </br>
		
		<label for="pontoApoio">Ponto de Apoio:</label> 
		<select name="pontoApoio" >
			<option value=""> Selecione </option>
			<c:forEach items="${listaPontoApoio}" var="obj">
				<option value="${obj.id}"> ${obj.nome} </option>
			</c:forEach>
		</select></br>
		
		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>


</body>
</html>
	
