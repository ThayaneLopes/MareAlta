<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Buscar Cidade</title>
</head>
<body>
	<form action="listarcidade" method="post">
		<input type="text" name="busca" placeholder="Digite o nome da cidade">
		<br>
		<label for="situacaoRisco">Filtra por Situa��o de Risco</label>
			<select  name="situacaoRisco">
				<option value="">N�o Filtrar</option>
				<option value="baixa">Baixa</option>
				<option value="media">M�dia</option>
				<option value="alta">Alta</option>
				<option value="catastrofica">Catastr�fica</option>
			</select> <br>
		<br>
			<input type="submit" value="BUSCAR">
		</form>
	</body>
	</html>