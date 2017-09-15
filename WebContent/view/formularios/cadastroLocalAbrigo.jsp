<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/style.css">
  <script href="view/js/main.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/login-css.css">
  <script language="JavaScript" type="text/javascript" src="/view/js/mascara.js"></script> 
<title>Cadastro de Local de Abrigo</title>
</head>
<body class="fundo">

<c:import url="../logout/logout.jsp"/>
	<div style="text-align: center; color: red;">${mensagem}</div>
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="cadastroComSucessoLocalAbrigo" method="post">	
		<form:errors path="localAbrigo.nome" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.responsavel" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.telefone1" cssStyle="color:red" />
		<form:errors path="localAbrigo.bairro" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.ruaAvenida" cssStyle="color:red" /> 
		<form:errors path="localAbrigo.cep" cssStyle="color:red" />  

<div class="cadastro">

		<label for="nome">Nome do Local de Abrigo: </label>	
		<input type="text" style="width: 400px;" id="nome" name="nome" maxlength="30" minlength="5" required> <br>	

		<label for="responsavel">Responsável: </label> 	
		<input type="text" style="width: 400px;" id="responsavel" name="responsavel" maxlength="100" minlength="5" required> <br>	

		<label for="telefone1">Celular: </label>		
		<input onkeyup="maskIt(this,event,'(##)#####-####')" minlength="14" maxlength="15" type="tel" style="width: 200px;" id="telefone1" name="telefone1" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');" required> <br>

		<label for="telefone2">Telefone:(Opcional) </label>		
		<input onkeyup="maskIt(this,event,'(##)#####-####')" maxlength="15" minlength="14" type="tel" style="width: 200px;" id="telefone2" name="telefone2" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');"> <br>

		<label for="estado">Estado: </label> 
		<select style="width: 100px;" id="estado" name="estado">
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
			<option value="MS">Mato Grosso do Sul</option>
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
		<br>
	<label for="cidade">Cidade: </label>
	<br>
		<select name="cidadeRisco">
			<option value=""> Selecione </option>
			<c:forEach items="${listaCidadeRisco}" var="obj">
			<option value="${obj.id}">${obj.nome}</option>
			</c:forEach>
		</select> <br>
		<label for="bairro">Bairro: </label>	
		<input type="text" style="width: 200px;" id="bairro" name="bairro" maxlength="30" minlength="5" required> <br>	

		<label for="ruaAvenida">Endereço: </label>	
		<input type="text" style="width: 400px;"  id="ruaAvenida" name="ruaAvenida" maxlength="50" minlength="5" required > <br>	

		<label for="complemento">Complemento:(Opcional) </label>		
		<input type="text" style="width: 400px;"  id="complemento" name="complemento" > 
		
		<label for="cep">CEP: </label>		
		<input type="text"  style="width: 200px;" id="cep" name="cep" onchange="validar(this,'num')" onkeyup="maskIt(this,event,'#####-###')" required maxlength="9" minlength="9"> <br>
<!--  -->
		<div type="radio">
		<label for="precisaVoluntario">Precisa de Voluntario</label><br>		
		<input type="radio" name="precisaVoluntarios" value="1" checked> Sim
		<input type="radio" name="precisaVoluntarios" value="0"> Não <br>
		</div> 

		<label for="quantidadeFamilia">Quantidade de Familias: </label>		<br>
		<input type="number" id="quantidadeFamilia" name="quantidadeFamilia" > 
		<br>

		<input type="submit" class="btn btn-primary"> <input type="reset" class="btn btn-warning">

</div>
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
	
