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
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="view/js/jquery/jquery.min.js"></script>
  <script src="view/css/bootstrap/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/style.css">
  <script href="view/js/main.js"></script>
  <link rel="stylesheet" type="text/css" href="view/css/login-css.css">
<title>Cadastro de Cidades em Risco</title>
</head>
<body class="fundo">
<c:import url="../logout/logout.jsp"/>
<br><br><br><br><br>
	<div style="text-align: center; color: white;">${mensagem}</div>
	<div style="text-align: center; color: white;"> ${msg} </div>
	
	<form action="cadastroComSucessoCidadeRisco" method="post">
		<form:errors path="cidadeRisco.nome" cssStyle="color:red" />
		<form:errors path="cidadeRisco.situacaoRisco" cssStyle="color:red" />
		
	<div class="cadastro">
		<div class="form-group">
<!-- 		<input type="hidden" name="id" value=""> -->
			<label for="nome">Nome da Cidade:</label> 
			<input type="text"	style="width: 400px;" id="nome" name="nome" onkeyup="validar(this,'text');" placeholder="Ex.: Barreiros"  minlength="5" maxlength="50" required><br> 
			
			<label for="regiao">Região</label> 
			<select style="width: 400px;" id="regiao" name="regiao">
				<option value="urbana">Urbana</option>
				<option value="rural">Rural</option>
			</select> <br> 
			
			<label for="situacaoRisco">Situação de Risco</label> 
			<select	style="width: 400px;" id="situacaoRisco" name="situacaoRisco">
				<option value="baixa">Baixa</option>
				<option value="media">Média</option>
				<option value="alta">Alta</option>
				<option value="catastrofica">Catastrófica</option>
			</select> <br> 
			
			<input type="submit" class="btn btn-primary" value="Cadastrar"> <input type="reset"	class="btn btn-warning" value="Limpar">
		</div>
		</div>
	</form>
	
	<script type="text/javascript">
		function validar(dom, tipo) {
			switch (tipo) {
				
			case 'num':
				var regex = /[a-zA-Z]/g;
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