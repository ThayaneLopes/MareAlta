<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Ponto de Apoio</title>
</head>
<body>
	<form action="cadastroComSucessoPontoApoio" method="post">

		<label for="nome">Nome: </label>	
		<input type="text" id="nome" name="nome"> <br>	

		<label for="responsavel">Responsável: </label> 	
		<input type="text" id="responsavel" name="responsavel"> <br>	

		<label for="telefone1">Telefone: </label>		
		<input type="text" id="telefone1" name="telefone1"> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="text" id="telefone2" name="telefone2"> <br>

		<label for="estado">Estado: </label> 
		<input type="text" id="estado" name="estado"><br>		

		<label for="bairro">Bairro: </label>	
		<input type="text" id="bairro" name="bairro"> <br>	

		<label for="endereco">Endereço: </label>	
		<input type="text" id="endereco" name="endereco"> <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" id="complemento" name="complemento"> <br>

		<label for="cidade">Cidade: </label>	
		<input type="text" id="cidade" name="cidade"> <br>	

		<label for="cep">CEP: </label>		
		<input type="text" id="cep" name="cep"> <br>

		<label for="ativo">Está Ativo? </label>	
		<input type="radio" name="ativo" value="true"> Sim
		<input type="radio" name="ativo" value="false"> Não <br>	
		
		<label for="horario_funcionamento">Horário de Funcionamento: </label>		
		<input type="text" id="horario_funcionamento" name="horario_funcionamento" placeholder="Ex.: Das 08:00 as 17:00"> <br>
	
		<label for="faz_coleta">Faz Coleta?: </label>		
		<input type="radio" name="faz_coleta" value="true"> Sim
		<input type="radio" name="faz_coleta" value="false"> Não <br>
		
		<label for="faz_triagem">Faz Triagem?: </label> 	
		<input type="radio" name="faz_triagem" value="true"> Sim
		<input type="radio" name="faz_triagem" value="false"> Não<br>	
		
		<label for="precisa_voluntario">Precisa de Voluntario:</label>
		<input type="radio" name="precisa_voluntario" value="true">Sim
		<input type="radio" name="precisa_voluntario" value="false">Não
		<br>
		<input type="submit"> <input type="reset">

	</form>
</body>
</html>