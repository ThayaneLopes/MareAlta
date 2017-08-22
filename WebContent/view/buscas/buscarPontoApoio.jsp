<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Buscar Pontos de Apoio</title>
</head>
<body>
<form action="listapontosapoio" method="POST">
	<input type="text" name="busca" placeholder="Pesquisar por ...">
	<br>
	<label for="cidade">Filtrar por cidade:</label><br>
		<select name="cidade">
			<option value=""> Não Filtrar </option>
			<c:forEach var="obj" items="${listapoio}" >
			<option value=${obj.cidade}>${obj.cidade}</option>
			</c:forEach>
		</select> <br>
		<input type="submit" name="enviar" value="Buscar">
</form>
</body>
</html>