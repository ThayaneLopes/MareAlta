<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Local de Abrigo</title>
</head>
<body>

	<form action="cadastroComSucessoLocalAbrigo" method="post">

		<label for="nome">Nome: </label>	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome"> <br>	

		<label for="responsavel">Responsável: </label> 	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="responsavel" name="responsavel"> <br>	

		<label for="telefone1">Telefone: </label>		
		<input type="text" style="width: 400px;" maxlength="15" class="form-control" id="telefone1" name="telefone1"> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="text" style="width: 400px;" maxlength="15" class="form-control" id="telefone2" name="telefone2"> <br>

		<label for="estado">Estado: </label> 
		<select style="width: 400px;" class="form-control" id="estado" name="estado">
			<option value="AC">Acre</option>
			<option value="AL">Alagoas</option>
			<option value="AP">Amapá</option>
			<option value="AM">Amazonas</option>
			<option value="BA">Bahia</option>
			<option value="CE">Ceará</option>
			<option value="DF">Distrito Federal</option>
			<option value="GO">Goiás</option>
			<option value="MA">Maranhão</option>
			<option value="MT">Mato Grosso</option>
			<option value="MS">MAto Grosso do Sul</option>
			<option value="MG">Minas Gerais</option>
			<option value="PA">Pará</option>
			<option value="PB">Paraíba</option>
			<option value="PR">Paraná</option>
			<option value="PE">Pernambuco</option>
			<option value="PI">Piauí</option>
			<option value="RJ">Rio de Janeiro</option>
			<option value="RN">Rio Grande do Norte</option>
			<option value="RS">Rio Grande do Sul</option>
			<option value="RO">Rondônia</option>
			<option value="RR">Roraima</option>
			<option value="SC">Santa Catarina</option>
			<option value="SP">São Paulo</option>
			<option value="SE">Sergipe</option>
			<option value="TO">Tocantins</option>
		</select>	

		<label for="bairro">Bairro: </label>	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="bairro" name="bairro"> <br>	

		<label for="endereco">Endereço: </label>	
		<input type="text" style="width: 400px;" maxlength="150" class="form-control" id="endereco" name="rua_avenida"> <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" style="width: 400px;" maxlength="150" class="form-control" id="complemento" name="complemento"> <br>

		<label for="cidade">Cidade: </label>	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="cidade" name="cidade"> <br>	

		<label for="cep">CEP: </label>		
		<input type="text" style="width: 400px;" maxlength="10" class="form-control" id="cep" name="cep"> <br>

		<div type="radio">
		<label for="precisaVoluntario">Precisa de Voluntario</label>		
		<input type="radio" name="precisaVoluntario" value="true"> Sim
		<input type="radio" name="precisaVoluntario" value="false"> Não <br>
		</div> 

		<label for="quantidadeFamilia">Quantidade de Familias: </label>		
		<input type="number" id="quantidadeFamilia" name="quantidadeFamilia"> <br>
		

	
		<input type="submit" class="btn btn-primary"> <input type="reset" class="btn btn-warning">

	</form>


</body>
</html>
	
