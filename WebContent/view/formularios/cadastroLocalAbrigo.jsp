<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/js/jquery/jquery.min.js"></script> 
<title>Cadastro de Local de Abrigo</title>
</head>
<body>
	<div style="color: red;">${mensagem}</div>
	<form action="cadastroComSucessoLocalAbrigo" method="post">	
		<form:errors path="localAbrigo.nome" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.responsavel" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.telefone1" cssStyle="color:red" />
		<form:errors path="localAbrigo.bairro" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.endereco" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.cidade" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.cep" cssStyle="color:red" />  


		<label for="nome">Nome do Local de Abrigo: </label>	
		<input type="text" style="width: 400px;" class="form-control" id="nome" name="nome" > <br>	

		<label for="responsavel">Responsável: </label> 	
		<input type="text" style="width: 400px;" class="form-control" id="responsavel" name="responsavel" > <br>	

		<label for="telefone1">Celular: </label>		
		<input type="tel" style="width: 200px;" class="form-control" id="telefone1" name="telefone1" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');"> <br>

		<label for="telefone2">Telefone: </label>		
		<input type="tel" style="width: 200px;" class="form-control" id="telefone2" name="telefone2" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');"> <br>

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
		<input type="text" style="width: 200px;" class="form-control" id="bairro" name="bairro" > <br>	

		<label for="endereco">Endereço: </label>	
		<input type="text" style="width: 400px;"  class="form-control" id="endereco" name="ruaAvenida" > <br>	

		<label for="complemento">Complemento: </label>		
		<input type="text" style="width: 400px;"  class="form-control" id="complemento" name="complemento" > <br>

		<label for="cidade">Cidade: </label>	
		<select name="cidadeRisco">
			<option value=""> Selecione </option>
			<c:forEach items="${listaCidadeRisco}" var="obj">
			<option value="${obj.id}">${obj.nome}</option>
			</c:forEach>
		</select> <br>
	
		<label for="cep">CEP: </label>		
		<input type="text" style="width: 200px;" class="form-control" id="cep" name="cep" onkeyup="validar(this,'num');"> <br>

		<div type="radio">
		<label for="precisaVoluntario">Precisa de Voluntario</label>		
		<input type="radio" name="precisaVoluntarios" value="1" checked> Sim
		<input type="radio" name="precisaVoluntarios" value="0"> Não <br>
		</div> 

		<label for="quantidadeFamilia">Quantidade de Familias: </label>		
		<input type="number" id="quantidadeFamilia" name="quantidadeFamilia" > <br>
		

	
		<input type="submit" class="btn btn-primary"> <input type="reset" class="btn btn-warning">

	</form>

<script>
function validar(dom, tipo) {
	switch (tipo) {
	case 'num':
		var regex = /[A-Za-z]/g;
		break;
	case 'text':
		var regex = /\d/g;
		break;
	}
	dom.value = dom.value.replace(regex, '');
}
 </script>
</body>
</html>
	
