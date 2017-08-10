<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="view/css/bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<script type="text/javascript"
	src="view/css/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script>
<title>Cadastro de Local de Abrigo</title>
</head>
<body>

	<form action="atualizarLocalAbrigo" method="post">
		<input type="hidden" value="${localabrigo.id}" name="id"> <label
			for="nome">Nome: </label> <input type="text" style="width: 400px;"
			maxlength="50" class="form-control" id="nome" name="nome" required
			value="${localabrigo.nome}"> <br> <label
			for="responsavel">Responsável: </label> <input type="text"
			style="width: 400px;" maxlength="50" class="form-control"
			id="responsavel" name="responsavel" required
			value="${localabrigo.responsavel}"><br> <label
			for="telefone1">Telefone 1: </label> <input type="tel"
			style="width: 200px;" maxlength="11" class="form-control"
			id="telefone1" name="telefone1" required
			placeholder="DD+Numero de telefone" value="${localabrigo.telefone1}">
		<br> <label for="telefone2">Telefone 2: </label> <input
			type="tel" style="width: 200px;" maxlength="11" class="form-control"
			id="telefone2" name="telefone2" required
			placeholder="DD+Numero de telefone" value="${localabrigo.telefone2}">
		<br> <label for="estado">Estado: </label> <input
			style="width: 50px;" class="form-control" id="estado" name="estado"
			list="estados" value="${localabrigo.estado}">
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

		<label for="bairro">Bairro: </label> <input type="text"
			style="width: 200px;" maxlength="50" class="form-control" id="bairro"
			name="bairro" required value="${localabrigo.bairro}"> <br>

		<label for="endereco">Endereço: </label> <input type="text"
			style="width: 400px;" maxlength="150" class="form-control"
			id="endereco" name="ruaAvenida" required
			value="${localabrigo.ruaAvenida}"> <br> <label
			for="complemento">Complemento: </label> <input type="text"
			style="width: 400px;" maxlength="150" class="form-control"
			id="complemento" name="complemento" required
			value="${localabrigo.complemento}"> <br> <label
			for="cidade">Cidade: </label> 
			<select name="cidadeRisco">
			<c:forEach items="${listaCidadeRisco}" var="obj">
				<c:choose>
					<c:when test="${localabrigo.cidadeRisco.id == obj.id}">
						<option value="${obj.id}" selected>${obj.nome}</option>
					</c:when>
					<c:otherwise>
						<option value="${obj.id}">${obj.nome}</option>
					</c:otherwise>
				</c:choose>

			</c:forEach>
		</Select> <br> <label for="cep">CEP: </label> <input type="text"
			style="width: 200px;" maxlength="8" minlength="8"
			class="form-control" id="cep" name="cep" required
			value="${localabrigo.cep}"> <br>

		<div type="radio">
			<label for="precisaVoluntario">Precisa de Voluntario</label> <input
				type="radio" name="precisaVoluntarios" value="1" checked>
			Sim <input type="radio" name="precisaVoluntarios" value="0">
			Não <br>
		</div>

		<label for="quantidadeFamilia">Quantidade de Familias: </label> <input
			type="number" id="quantidadeFamilia" name="quantidadeFamilia"
			required value="${localabrigo.quantidadeFamilia}"> <br>



		<input type="submit" class="btn btn-primary" value="ALTERAR DADOS">

	</form>


</body>
</html>

