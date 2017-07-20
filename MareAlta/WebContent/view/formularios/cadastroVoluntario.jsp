<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Voluntário</title>
</head>
<body>

	 <form action="cadastroComSucessoVoluntario" method="post" onSubmit="return enviardados();">

		<label for="cpf">CPF:</label> 	
		<input type="text" style="width: 200px;" maxlength="15" class="form-control" id="cpf" name="cpf" required><br>	

		<label for="nome">Nome:</label>		
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required> <br>

		<label for="orgaoPublico">Orgão Publico:</label> 		
		<input type="text" style="width: 200px;" maxlength="50" class="form-control" id="orgao_publico" name="orgao_publico" placeholder="Se sim, favor insira a sigla"><br>

		<label for="email">E-mail:</label> 	
		<input type="email" style="width: 400px;" maxlength="50" class="form-control"  id="email" name="email" required><br>	
		
		<label for="telefone1">Telefone:</label> 	
		<input type="tel" style="width: 200px;" maxlength="15" class="form-control"  id="telefone1" name="telefone1" required><br>	
		
		<label for="telefone2">Telefone</label> 	
		<input type="tel" style="width: 200px;" maxlength="15" class="form-control" id="telefone2" name="telefone2" required><br>	

		
		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>


</body>
</html>
	
