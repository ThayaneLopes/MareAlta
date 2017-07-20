<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Ponto de Apoio</title>
</head>
<body>
	<form action="cadastroComSucessoPontoApoio" method="post">

		<label for="nome">Nome: </label>	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome"> <br>	

		<label for="responsavel">Respons�vel: </label> 	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="responsavel" name="responsavel"> <br>	

		<label for="telefone1">Telefone: </label>		
		<input type="text" style="width: 400px;" maxlength="15" class="form-control" id="telefone1" name="telefone1"> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="text" style="width: 400px;" maxlength="15" class="form-control" id="telefone2" name="telefone2"> <br>

		<label for="estado">Estado: </label> 
		<select style="width: 400px;" class="form-control" id="estado" name="estado">
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
		<input type="text" style="width: 400px;" maxlength="20" class="form-control" id="bairro" name="bairro"> <br>	

		<label for="endereco">Endere�o: </label>	
		<input type="text"  style="width: 400px;" maxlength="150" class="form-control" id="endereco" name="endereco"> <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" style="width: 400px;" maxlength="150" class="form-control" id="complemento" name="complemento"> <br>

		<label for="cidade">Cidade: </label>	
		<input type="text" style="width: 400px;" maxlength="25" class="form-control" id="cidade" name="cidade"> <br>	

		<label for="cep">CEP: </label>		
		<input type="text" style="width: 400px;" maxlength="10" class="form-control" id="cep" name="cep"> <br>

		<div class="checkbox" >
			<label for="ativo">Est� Ativo? </label>	
			<input type="checkbox" name="ativo" value="true"> Sim
			<input type="checkbox" name="ativo" value="false"> N�o <br>	
		</div>

		<label for="horarioFuncionamento">Hor�rio de Funcionamento: </label>		
		<input type="text" style="width: 400px;" maxlength="10" class="form-control" id="horarioFuncionamento" name="horarioFuncionamento" placeholder="Ex.: Das 08:00 as 17:00"> <br>
	
		<div class="checkbox" >
			<label for="fazColeta">Faz Coleta?: </label>		
			<input type="checkbox" name="fazColeta" value="true"> Sim
			<input type="checkbox" name="fazColeta" value="false"> N�o <br>
			
			<label for="fazTriagem">Faz Triagem?: </label> 	
			<input type="checkbox" name="fazTriagem" value="true"> Sim
			<input type="checkbox" name="fazTriagem" value="false"> N�o<br>	
			
			<label for="precisaVoluntarios">Precisa de Voluntario:</label>
			<input type="checkbox" name="precisaVoluntarios" value="true">Sim
			<input type="checkbox" name="precisaVoluntarios" value="false">N�o <br>
		</div>


		<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset" class="btn btn-warning" value="Limpar">

	</form>
</body>
</html>