<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
    
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
  
	 <form action="atualizarVoluntario" method="post" ">
		<input type="hidden" value="${voluntario.id}" name="id">
		<label for="cpf">CPF:</label> 	
		<input type="text" style="width: 200px;" maxlength="11" class="form-control" id="cpf" name="cpf" value="${voluntario.cpf}" required><br>	

		<label for="nome">Nome:</label>		
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required minlength="10" value="${voluntario.nome}"> <br>

		<label for="orgaoPublico">Orgão Publico:</label> 		
		<input type="text" style="width: 200px;" maxlength="50" class="form-control" id="orgao_publico" name="orgao_publico" placeholder="Se sim, favor insira a sigla" value="${voluntario.orgao_publico}"><br>

		<label for="email">E-mail:</label> 	
		<input type="email" style="width: 400px;" maxlength="50" class="form-control"  id="email" name="email" required value="${voluntario.email}"><br>	
		
		<label for="telefone1">Telefone:</label> 	
		<input type="tel" style="width: 200px;" maxlength="11" minlength="11" class="form-control"  id="telefone1" name="telefone" required placeholder="DD+N° Telefone" value="${voluntario.telefone}"><br>	
		
		
		<input type="submit" class="btn btn-primary" value="Atualizar">
		</form>

	
</div>
</body>
</html>
	
