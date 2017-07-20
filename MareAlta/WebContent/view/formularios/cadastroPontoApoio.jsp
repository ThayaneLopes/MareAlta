<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Ponto de Apoio</title>
</head>
<body>
	<form action="cadastroComSucessoPontoApoio" method="post">

		<label for="nome">Nome: </label>	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required> <br>	

		<label for="responsavel">Respons�vel: </label> 	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="responsavel" name="responsavel" required> <br>	

		<label for="telefone1">Telefone: </label>		
		<input type="tel" style="width: 200px;" maxlength="15" class="form-control" id="telefone1" name="telefone1" required> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="tel" style="width: 200px;" maxlength="15" class="form-control" id="telefone2" name="telefone2" required> <br>

		<label for="estado">Estado: </label> 
		<select style="width: 400px;" class="form-control" id="estado" name="estado">
			<option>Selecione uma op��o</option>
			<option value="AC">Acre</option>
			<option value="AL">Alagoas</option>
			<option value="AP">Amap�</option>
			<option value="AM">Amazonas</option>
			<option value="BA">Bahia</option>
			<option value="CE">Cear�</option>
			<option value="DF">Distrito Federal</option>
			<option value="GO">Goi�s</option>
			<option value="MA">Maranh�o</option>
			<option value="MT">Mato Grosso</option>
			<option value="MS">MAto Grosso do Sul</option>
			<option value="MG">Minas Gerais</option>
			<option value="PA">Par�</option>
			<option value="PB">Para�ba</option>
			<option value="PR">Paran�</option>
			<option value="PE">Pernambuco</option>
			<option value="PI">Piau�</option>
			<option value="RJ">Rio de Janeiro</option>
			<option value="RN">Rio Grande do Norte</option>
			<option value="RS">Rio Grande do Sul</option>
			<option value="RO">Rond�nia</option>
			<option value="RR">Roraima</option>
			<option value="SC">Santa Catarina</option>
			<option value="SP">S�o Paulo</option>
			<option value="SE">Sergipe</option>
			<option value="TO">Tocantins</option>
		</select>	

		<label for="bairro">Bairro: </label>	
		<input type="text" style="width: 200px;" maxlength="20" class="form-control" id="bairro" name="bairro" required> <br>	

		<label for="endereco">Endere�o: </label>	
		<input type="text"  style="width: 400px;" maxlength="150" class="form-control" id="endereco" name="endereco" required> <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" style="width: 400px;" maxlength="150" class="form-control" id="complemento" name="complemento" required> <br>

		<label for="cidade">Cidade: </label>	
		<input type="text" style="width: 300px;" maxlength="25" class="form-control" id="cidade" name="cidade" required> <br>	

		<label for="cep">CEP: </label>		
		<input type="text" style="width: 200px;" maxlength="10" class="form-control" id="cep" name="cep" required> <br>

		<div type="radio">
		<label for="ativo">Est� Ativo? </label>	<br>
		<input type="radio" name="ativo" value="true" checked> Sim
		<input type="radio" name="ativo" value="false"> N�o <br>	
		</div>

		<label for="horarioFuncionamento">Hor�rio de Funcionamento: </label>		
		<input type="text" style="width: 400px;" maxlength="10" class="form-control" id="horarioFuncionamento" name="horarioFuncionamento" placeholder="Ex.: Das 08:00 as 17:00" required> <br>
	
		<div type="radio">
		<label for="fazColeta">Faz Coleta?:  </label> <br>	
		<input type="radio" name="fazColeta" value="true" checked> Sim 
		<input type="radio" name="fazColeta" value="false"> N�o <br>
			
		<label for="fazTriagem">Faz Triagem?:  </label><br>
		<input type="radio" name="fazTriagem" value="true" checked> Sim 
		<input type="radio" name="fazTriagem" value="false"> N�o<br>	
		
		<label for="precisaVoluntarios">Precisa de Voluntario: </label> <br>
		<input type="radio" name="precisaVoluntarios" value="true" checked> Sim 
		<input type="radio" name="precisaVoluntarios" value="false"> N�o <br>
		</div>


		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>
</body>
</html>