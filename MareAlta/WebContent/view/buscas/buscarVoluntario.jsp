<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Buscar Voluntário</title>
</head>
<body>

<form action="listaVoluntario" method="post">

		<input type="search" name="buscaVoluntario" id="buscaVoluntario" class="form-control" placeholder="Insira aqui sua busca de voluntários" style="width:300px;" required> <br>
		<input type="submit" class="btn btn-primary" value="Cadastrar"> 
		<input type="reset" class="btn btn-warning" value="Limpar">

	</form>	
</body>
</html>