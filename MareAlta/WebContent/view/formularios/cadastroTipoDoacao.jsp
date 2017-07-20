<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Tipos de Doação</title>
</head>
<body>
	
	<form action="cadastroComSucessoTipoDoacao" method="post">

		<label for="nome">Nome: </label> 
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome"><br>

		<div class="checkbox" >
			<label for="ativo">Está Ativo?</label>
			<input type="checkbox" name="ativo" value="true" checked>Sim<br>
			<input type="checkbox" name="ativo" value="false">Não<br>
		</div>

		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>
	
</body>
</html>