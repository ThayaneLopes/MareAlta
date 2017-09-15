<!DOCTYPE html>
<html>
<head>
  <title></title>
  <script language="JavaScript" type="text/javascript" src="view/js/mascara.js"></script> 
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
        </button>
        <a href="index">
          <img src="view/img/logo.png" width="55px;">
        </a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
        <li><a href="missao">Missão</a></li>
        <li><a href="colabore">Colabore Conosco</a></li>
          <li><div id="wrap">
      <a href="#" id="loginform">Login</a> | <a href="cadastroVoluntario">Registre-se</a>
    <div class="login">
      <div class="arrow-up"></div>
      <div class="formholder">
        <div class="randompad">
           <fieldset>
           <form action="login" method="POST">
             <label for="cpf">CPF</label>
             <input type="text" placeholder="Digite seu CPF" name="cpf" onkeyup="maskIt(this,event,'###.###.###-##')" required/>
             <label for="senha">Password</label>
             <input type="password" placeholder="Digite sua Senha" name="senha" required/>
             <input type="submit" value="Login" />
             <h5>Esqueceu a senha? <a href="#">Clique aqui</a></h5>
            </form>
           </fieldset>
        </div>
      </div>
  </div>
</div>
  <script src="view/js/jquery/jquery.min.js"></script>

    <script src="view/js/main.js"></script>
    </li>
        </ul>
      </div>
    </div>
  </nav>
<br><br><br>
</body>
</html>