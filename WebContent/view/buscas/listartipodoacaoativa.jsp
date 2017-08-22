<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="view/css/bootstrap/css/bootstrap.min.css">
<script src="view/js/jquery/jquery.min.js"></script>
<script src="view/css/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listar Tipo Doa��o</title>
</head>
<body>
	<strong>Lista de Tipos Doa��o</strong>
	<div class="container">
	<form action="selectinput" method="post">
		<table class="table table-striped table-bordered opcoes">
			<tr>
				<th>Tipos de Doa��es</th>
			</tr>
	
			<c:forEach var="listatipodoacao" items="${listatipodoacao}">
				<tr>
					<td><input type="checkbox" name="tiposdoacao[]" value=${listatipodoacao.id}><label>${listatipodoacao.nome}</label></td>
				</tr>
				
			</c:forEach>
		</table>
		<input type="submit" name="Enviar">
		</form>
	</div>
</body>
</html>