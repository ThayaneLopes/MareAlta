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
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script src="view/js/jquery/jquery.min.js"></script>
<script src="view/css/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="view/css/style.css">
<script href="view/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="view/css/login-css.css">
<title>alterar Ponto de Apoio</title>
</head>
<body>
<br><br><br><br><br>
<c:import url="../comum/logout.jsp"/>
	<div style="color: red;">${mensagem}</div>
	
	<form action="atualizarpontoapoio" method="post">
		<form:errors path="pontoApoio.nome" cssStyle="color:red" />
		<form:errors path="pontoApoio.responsavel" cssStyle="color:red" />
		<form:errors path="pontoApoio.telefone1" cssStyle="color:red" />
		<form:errors path="pontoApoio.bairro" cssStyle="color:red" />
		<form:errors path="pontoApoio.endereco" cssStyle="color:red" />
		<form:errors path="pontoApoio.cidade" cssStyle="color:red" />
		<form:errors path="pontoApoio.cep" cssStyle="color:red" />
		<form:errors path="pontoApoio.horarioFuncionamento"		cssStyle="color:red" />

<div class="cadastro">
		<label for="nome">Nome do Ponto de Apoio: </label> 
		<input type="hidden" value="${pontoapoio.id}" name="id">
		<input type="text" id="nome"name="nome" value="${pontoapoio.nome}"> <br> 
		
		<label for="responsavel">Responsável:</label> 
		<input type="text" id="responsavel" name="responsavel" value="${pontoapoio.responsavel}"> <br>

		<label for="telefone1">Celular: </label> 
		<input type="tex" id="telefone1" name="telefone1" placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');" maxlength="11" required="on" value="${pontoapoio.telefone1}"><br> 
		
		<label for="telefone2">Telefone: </label> 
		<input type="text" id="telefone2" name="telefone2"	placeholder="(DDD) + Telefone" onkeyup="validar(this,'num');" minlength="10" maxlength="10" required="on" value="${pontoapoio.telefone2}"> <br>
		
		<label for="estado">Estado: </label> 
		<input list="estados" id="estado" name="estado" autocomplete="on" value="${pontoapoio.estado}" minlength="2" maxlength="2" required="on">
			<datalist id="estados">
			<option value="AC">
			<option value="AL">
			<option value="AP">
			<option value="AM">
			<option value="BA">
			<option value="CE">
			<option value="DF">
			<option value="GO">
			<option value="MA">
			<option value="MT">
			<option value="MS">
			<option value="MG">
			<option value="PA">
			<option value="PB">
			<option value="PR">
			<option value="PE">
			<option value="PI">
			<option value="RJ">
			<option value="RN">
			<option value="RS">
			<option value="RO">
			<option value="RR">
			<option value="SC">
			<option value="SP">
			<option value="SE">
			<option value="TO">
		</datalist>
		
		<label for="bairro">Bairro: </label> 
		<input type="text" id="bairro"	name="bairro" value="${pontoapoio.bairro}"> <br> 
		
		<label for="endereco">Endereço:	</label> 
		<input type="text" maxlength="150" id="endereco" name="endereco" value="${pontoapoio.endereco}"> <br>

		<label for="complemento">Complemento: </label> 
		<input type="text" id="complemento" name="complemento" value="${pontoapoio.complemento}"> <br> 
		
		<label for="cidade">Cidade: </label> 
		<input type="text" id="cidade"	name="cidade" value="${pontoapoio.cidade}"> <br> 
		
		<label for="cep">CEP: </label> 
		<input type="text" id="cep" name="cep"	onkeyup="validar(this,'num');" value="${pontoapoio.cep}"> <br>

		<div type="radio">
			<label for="ativo">Está Ativo? </label> <br>
			<c:choose>
				<c:when test="${pontoapoio.ativo == true}">
					<input type="radio" name="ativo" value="true" checked>Sim<br>
					<input type="radio" name="ativo" value="false"> Não<br>
				</c:when>
				<c:otherwise>
					<input type="radio" name="ativo" value="true" >Sim<br>
					<input type="radio" name="ativo" value="false" checked> Não<br>
				</c:otherwise>
			</c:choose>
		</div>

		<label for="horarioFuncionamento">Horário de Funcionamento: </label> 
		<input type="text" id="horarioFuncionamento" name="horarioFuncionamento" value="${pontoapoio.horarioFuncionamento}" placeholder="Ex.: Das 08:00 as 17:00" > <br>

		<div type="radio">
			<label for="fazColeta">Faz Coleta?: </label> <br>
		<c:choose>
			<c:when test="${pontoapoio.fazColeta == true}">
					<input type="radio" name="fazColeta" value="true" checked>Sim<br>
					<input type="radio" name="fazColeta" value="false"> Não<br>
			</c:when>
			<c:otherwise>
				<input type="radio" name="fazColeta" value="true" >Sim<br>
				<input type="radio" name="fazColeta" value="false" checked> Não<br>
			</c:otherwise>
			</c:choose> 
			 
			 <label	for="fazTriagem">Faz Triagem?: </label><br>
			 <c:choose>
			<c:when test="${pontoapoio.fazTriagem == true}">
					<input type="radio" name="fazTriagem" value="true" checked>Sim<br>
					<input type="radio" name="fazTriagem" value="false"> Não<br>
			</c:when>
			<c:otherwise>
				<input type="radio" name="fazTriagem" value="true" >Sim<br>
				<input type="radio" name="fazTriagem" value="false" checked> Não<br>
			</c:otherwise>
			</c:choose>  
			  
			 <label	for="precisaVoluntarios">Precisa de Voluntario: </label> <br>
			 <c:choose>
			<c:when test="${pontoapoio.precisaVoluntarios == true}">
					<input type="radio" name="precisaVoluntarios" value="true" checked>Sim<br>
					<input type="radio" name="fprecisaVoluntarios" value="false"> Não<br>
			</c:when>
			<c:otherwise>
				<input type="radio" name="precisaVoluntarios" value="true" >Sim<br>
				<input type="radio" name="precisaVoluntarios" value="false" checked> Não<br>
			</c:otherwise>
			</c:choose>  
		</div>


		<input type="submit" class="btn btn-primary" value="Atualizar">

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