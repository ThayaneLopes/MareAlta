<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Ponto de Apoio</title>
</head>
<body>
	<form action="cadastroComSucessoPontoApoio" method="post">
		<form:errors path="pontoApoio.nome" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.responsavel" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.telefone1" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.bairro" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.endereco" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.cidade" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.cep" cssStyle="color:red" /> 
		<form:errors path="pontoApoio.horarioFuncionamento" cssStyle="color:red" /> 

		<label for="nome">Nome: </label>	
		<input type="text" style="width: 400px;" maxlength="100" class="form-control" id="nome" name="nome" > <br>	

		<label for="responsavel">Respons�vel: </label> 	
		<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="responsavel" name="responsavel" > <br>	

		<label for="telefone1">Telefone: </label>		
		<input type="tel" style="width: 200px;" maxlength="11" minlength="11" class="form-control" id="telefone1" name="telefone1"  placeholder="DD+N� Telefone"> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="tel" style="width: 200px;" maxlength="11" minlength="11" class="form-control" id="telefone2" name="telefone2"  placeholder="DD+N� Telefone"> <br>

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
		<input type="text" style="width: 200px;" maxlength="20" class="form-control" id="bairro" name="bairro" > <br>	

		<label for="endereco">Endere�o: </label>	
		<input type="text"  style="width: 400px;" maxlength="150" class="form-control" id="endereco" name="endereco" > <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" style="width: 400px;" maxlength="150" class="form-control" id="complemento" name="complemento" > <br>

		<label for="cidade">Cidade: </label>	
		<input type="text" style="width: 300px;" maxlength="25" class="form-control" id="cidade" name="cidade" > <br>	

		<label for="cep">CEP: </label>		
		<input type="text" style="width: 200px;" maxlength="8" minlength="8" class="form-control" id="cep" name="cep" > <br>

		<div type="radio">
		<label for="ativo">Est� Ativo? </label>	<br>
		<input type="radio" name="ativo" value="true" checked> Sim
		<input type="radio" name="ativo" value="false"> N�o <br>	
		</div>

		<label for="horarioFuncionamento">Hor�rio de Funcionamento: </label>		
		<input type="text" style="width: 400px;" maxlength="30" class="form-control" id="horarioFuncionamento" name="horarioFuncionamento" placeholder="Ex.: Das 08:00 as 17:00" > <br>
	
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