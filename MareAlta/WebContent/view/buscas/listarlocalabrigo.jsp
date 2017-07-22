<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar de cidades</title>
</head>
<body>
<hr>
	<h3>Listar Cidades em Risco</h3>
	<hr>
	

	<table border="1" style="width: 100%">
		<tr>
				<td>Codigo</td>
				<td>NOME</td>
				<td>NOME DO RESPONSAVEL</td>
				<td>TELEFONE 1</td>
				<td>TELEFONE 2</td>
				<td>ESTADO</td>
				<td>BAIRRO</td>
				<td>RUA/AVENIDA</td>
				<td>COMPLEMENTO</td>
				<td>CIDADE</td>
				<td>CEP</td>
				<td>PRECISA DE VOLUNTARIOS</td>
				<td>QUANT. FAMILIAS
						</tr>
		
		<c:forEach var="abrigo" items="${listabrigo}">
			<tr>
				<td>${abrigo.id}</td>
				<td>${abrigo.nome}</td>
				<td>${abrigo.responsavel}</td>
				<td>${abrigo.telefone1}</td>
				<td>${abrigo.telefone2}</td>
				<td>${abrigo.estado}</td>
				<td>${abrigo.bairro}</td>
				<td>${abrigo.ruaAvenida}</td>
				<td>${abrigo.complemento}</td>
				<td>${abrigo.cidade}</td>
				<td>${abrigo.cep}</td>
				<td>${abrigo.precisaVoluntarios}</td>
				<td>${abrigo.quantidadeFamilia}</td>
				
	</tr>
		</c:forEach>
		
	</table>
</body>
</html>