<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tipos Doação</title>
</head>
<body>
<form action="atribuiapontoapoio" method="POST">
<c:forEach items="${listatipodoacao}" var="obj">
			<input type="checkbox" name="tipodoacao" value="${obj.id}">${obj.nome}<br> 
</c:forEach>
<input type="number" name="idpontoapoio" value="${id}" style="display: none;">
<input type="submit" name="enviar" value="Selecionar">
</form>
</body>
</html>