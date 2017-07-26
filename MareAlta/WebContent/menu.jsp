<!DOCTYPE html>
<html>
<head>
  <title></title>
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
        <a href="index.jsp"><img src="logo.png" width="50px;"></a>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="sobre.jsp">Sobre</a></li>
          <li><a href="contato.jsp">Contato</a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Mais
              <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li><a href="cadastro.jsp" target="_blanck">Cadastro</a></li>
                <li><a href="#">login</a></li>
                <li><a href="#">Alteração de Dados </a></li> 
              </ul>
            </li>
            <li><a href="buscas.jsp" target="_blanck"><span class="glyphicon glyphicon-search"></span></a></li>
          </ul>
        </div>
      </div>
    </nav>

</body>
</html>