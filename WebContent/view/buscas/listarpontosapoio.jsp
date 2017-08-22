<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="view/css/bootstrap/css/bootstrap.min.css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Pontos de Apoio</title>
</head>
<body>
<h3>Lista Pontos de Apoio</h3>
<div style="text-align: center; color: red;"> ${mensagem} </div>
<div class="container">
	<table class="table table-striped table-bordered">
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
				<td>ATIVO</td>
				<td>HORÁRIO FUNC.</td>
				<td>COLETA</td>
				<td>TRIAGEM</td>
				<td>PRECISA DE VOLUNTARIOS</td>
				<td>Ações</td>
						</tr>
		
		<c:forEach var="apoio" items="${listapoio}">
			<tr>
				<td>${apoio.id}</td>
				<td>${apoio.nome}</td>
				<td>${apoio.responsavel}</td>
				<td>${apoio.telefone1}</td>
				<td>${apoio.telefone2}</td>
				<td>${apoio.estado}</td>
				<td>${apoio.bairro}</td>
				<td>${apoio.endereco}</td>
				<td>${apoio.complemento}</td>
				<td>${apoio.cidade}</td>
				<td>${apoio.cep}</td>
				<c:choose>
				<c:when test="${apoio.ativo == true}">
					<td>SIM</td>
				</c:when>
				<c:otherwise>
					<td>NÃO</td>
				</c:otherwise>
				</c:choose>
				
				<td>${apoio.horarioFuncionamento}</td>
				<c:choose>
				<c:when test="${apoio.fazColeta == true}">
					<td>SIM</td>
				</c:when>
				<c:otherwise>
					<td>NÃO</td>
				</c:otherwise>
				</c:choose>
				
				<c:choose>
				<c:when test="${apoio.fazTriagem == true}">
					<td>SIM</td>
				</c:when>
				<c:otherwise>
					<td>NÃO</td>
				</c:otherwise>
				</c:choose>
				
				<c:choose>
				<c:when test="${apoio.precisaVoluntarios == true}">
					<td>SIM</td>
				</c:when>
				<c:otherwise>
					<td>NÃO</td>
				</c:otherwise>
				</c:choose>
				<td>
					<a href="alterarpontoapoio?id=${apoio.id}">Alterar</a> 
					<a href="removerPontoApoio?id=${apoio.id}">Remover</a>
				</td>
				
	</tr>
		</c:forEach>
		
	</table>
	</div>
</body>
</html>