<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="view/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> 
<script type="text/javascript" src="view/bootstrap-3.3.7-dis/js/bootstrap.min.js"></script> 
<title>Cadastro de Cidades em Risco</title>
</head>
<body>
	
	<form action="cadastroComSucessoCidadeRisco" method="post">

		<div class="form-group">
			<label for="nome">Nome</label> 	
			<input type="text" style="width: 400px;" maxlength="50" class="form-control" id="nome" name="nome" required><br>	
			
			<label for="regiao">Região</label> 
			<select style="width: 400px;" class="form-control" id="regiao" name="regiao" >
				<option value="urbana">Urbana</option>
				<option value="rural">Rural</option>
			</select> <br>


			<label for="situacaoRisco">Situação de Risco</label> 
			<select style="width: 400px;" class="form-control" id="situacaoRisco" name="situacaoRisco">
				<option value="baixa">Baixa</option>
				<option value="media">Média</option>
				<option value="alta">Alta</option>
				<option value="catastrofica">Catastrófica</option>
			</select> <br>

			<input type="submit" class="btn btn-primary" value="Cadastrar"> 
			<input type="reset" class="btn btn-warning" value="Limpar">
		</div>
	</form>


</body>
</html>