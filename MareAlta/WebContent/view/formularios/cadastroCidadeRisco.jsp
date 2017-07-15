<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Cidades em Risco</title>
</head>
<body>
	<form action="cadastroComSucessoCidadeRisco" method="post">

		<label for="nome">Nome</label> 	
		<input type="text" id="nome" name="nome"><br>	

		<label for="regiao">Região</label> 
		<input type="text" id="regiao" name="regiao"><br>

		<label for="situacao_risco">Situação de Risco</label> 
		<input type="text" id="situacao_risco" name="situacao_risco" placeholder="Ex.: Baixa;Média;Alta."> <br>

		<input type="submit"> <input type="reset">

	</form>


</body>
</html>