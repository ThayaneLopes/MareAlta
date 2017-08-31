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
    <script language="JavaScript" type="text/javascript" src="view/js/mascara.js"></script> 
<title>Cadastro de Ponto de Apoio</title>
</head>
<body>
<br><br><br><br><br>
<c:import url="../comum/menu.jsp" />
	<div style="text-align: center; color: red;">${mensagem}</div>
	<div style="text-align: center; color: red;"> ${msg} </div>
	
	<form action="cadastroComSucessoPontoApoio" method="post">
		<form:errors path="pontoApoio.nome" cssStyle="color:red" />
		<form:errors path="pontoApoio.responsavel" cssStyle="color:red" />
		<form:errors path="pontoApoio.telefone1" cssStyle="color:red" />
		<form:errors path="pontoApoio.bairro" cssStyle="color:red" />
		<form:errors path="pontoApoio.endereco" cssStyle="color:red" />
		<form:errors path="pontoApoio.cidade" cssStyle="color:red" />
		<form:errors path="pontoApoio.cep" cssStyle="color:red" />

<div class="cadastro">

		<label for="cidade">Cidade: </label>	<br>
		<select name="cidadeRisco">
			<option value=""> Selecione </option>
			<c:forEach items="${listaCidadeRisco}" var="obj">
			<option value="${obj.id}">${obj.nome}</option>
			</c:forEach>
		</select> <br>  
		
		<label for="nome">Nome do Ponto de Apoio: </label> 
		<input type="text" id="nome"name="nome" minlength="5" maxlength="100" required> <br> 
		
		<label for="responsavel">Respons�vel:</label> 
		<input type="text" id="responsavel" name="responsavel" maxlength="100" minlength="5" required> <br>

		<label for="telefone1">Celular: </label> 
		<input type="tex" id="telefone1" onkeyup="maskIt(this,event,'(##)####-####')" name="telefone1" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');" maxlength="11" required="on"><br> 
		
		<label for="telefone2">Telefone: </label> 
		<input type="text" id="telefone2" onkeyup="maskIt(this,event,'(##)####-####')" name="telefone2"	placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');" minlength="11" maxlength="10" > <br>
		
		<label for="estado">Estado: </label> <select id="estado" name="estado">
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
		<input type="text" id="bairro"	name="bairro" maxlength="30" minlength="5" required> <br> 
		
		<label for="endereco">Endere�o:	</label> 
		<input type="text" maxlength="150" id="endereco" name="endereco" minlength="5" placeholder="Rua xxxx, n� xx" required > <br>

		<label for="complemento">Complemento: </label> 
		<input type="text" id="complemento" name="complemento"> <br> 
		
		
		
		<label for="cep">CEP: </label> 
		<input type="text" onkeyup="maskIt(this,event,'#####-###')"  id="cep" name="cep"	onkeyup="validar(this,'num');" minlength="8" maxlength="10" required> <br>

		<div type="radio">
			<label for="ativo">Est� Ativo? </label> <br> 
			<input type="radio"	name="ativo" value="true" checked> Sim 
			<input type="radio"	name="ativo" value="false"> N�o <br>
		</div>

		<label for="horarioFuncionamento">Hor�rio de Funcionamento: </label> 
		<input type="text" id="horarioFuncionamento" name="horarioFuncionamento" placeholder="Ex.: Das 08:00 as 17:00"> <br>

		<div type="radio">
			<label for="fazColeta">Faz Coleta?: </label> <br>
			 <input	type="radio" name="fazColeta" value="true" checked> Sim 
			 <input	type="radio" name="fazColeta" value="false"> N�o <br> 
			 
			 <label	for="fazTriagem">Faz Triagem?: </label><br> 
			 <input type="radio" name="fazTriagem" value="true" checked> Sim 
			 <input	type="radio" name="fazTriagem" value="false"> N�o<br> 
			 
			 <label	for="precisaVoluntarios">Precisa de Voluntario: </label> <br> 
			 <input	type="radio" name="precisaVoluntarios" value="true" checked>Sim 
			 <input type="radio" name="precisaVoluntarios" value="false">N�o <br>
		</div>


		<input type="submit" class="btn btn-primary" value="Cadastrar">
		<input type="reset" class="btn btn-warning" value="Limpar">

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