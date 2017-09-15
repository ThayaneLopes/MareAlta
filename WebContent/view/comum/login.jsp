<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
  <link rel="stylesheet" type="text/css" href="view/css/responsive.css">
    <title>Colabore | Mar� Alta</title>
</head>

<body class="fundo">
  <c:import url="menu.jsp" />
  <br><br>
   <div  class="colabore">
      <div class="login">
      <div class="arrow-up"></div>
      <div class="formholder">
        <div class="randompad">
           <fieldset>
           <form action="efetuarLogin" method="POST">
             <label for="cpf">CPF</label>
             <input type="text" placeholder="Digite seu CPF" name="cpf" onkeyup="maskIt(this,event,'###.###.###-##')" maxlength="14" required/>
             <label for="senha">Password</label>
             <input type="password" placeholder="Digite sua Senha" name="senha" required/>
             <input type="submit" value="Login" />
            </form>
           </fieldset>
        </div>
      </div>
  </div>
</div>
      
    </div>
 