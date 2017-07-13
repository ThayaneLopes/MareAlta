<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Tipos de Doação</title>
</head>
<body>
	<form action="cadastroComSucessoTipoDoacao" method="post">

		<label for="nome">Nome: </label> 
		<input type="text" id="nome" name="nome"><br>

		<label for="ativo">Esta Ativo?</label>
		<input type="radio" name="ativo" value="true" checked>Sim<br>
		<input type="radio" name="ativo" value="false">Não<br>

		<input type="submit"> <input type="reset">

	</form>
</body>
</html>