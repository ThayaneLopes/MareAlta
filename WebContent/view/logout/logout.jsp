<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="50">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="menuLogout"> <img src="view/img/logo.png" width="50px;">
				</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${perfil eq 'ADMINISTRADOR'}">
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">Cadastros <span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="cadastroCidadeRisco">Cidade em Risco</a></li>
									<li><a href="cadastroTipoDoacao">Tipo de Doação</a></li>
									<li><a href="cadastroLocalAbrigo">Local de Abrigo</a></li>
									<li><a href="cadastroPontoApoio">Ponto de Apoio</a></li>
								</ul></li>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Buscas <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="buscarlocalabrigo">Local de Abrigo</a></li>
							<li><a href="buscarpontoapoio">Ponto de Apoio</a></li>
							<li><a href="buscarcidades">Cidades em Risco</a></li>
							<li><a href="buscartipodedoacao">Tipos de Doações</a></li>
							<li><a href="buscarVoluntario">Voluntário</a></li>
						</ul></li>
					<li><a href="efetuarLogout">Logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<footer>

		© Mare<b>Alta</b>
	</footer>