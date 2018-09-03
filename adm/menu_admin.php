﻿<!-- Inicio navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
	<div class="navbar-header">
	  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	  </button>
	  <a class="navbar-brand" href="administrativo.php">Home Adm</a>
	</div>
	<div id="navbar" class="navbar-collapse collapse">
	  <ul class="nav navbar-nav">            
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuário <span class="caret"></span></a>
		  <ul class="dropdown-menu">
		    <li class="dropdown-header">Usuários</li>
			<li><a href="administrativo.php?link=3">Cadastrar</a></li>
			<li><a href="administrativo.php?link=2">Listar</a></li>
			<li role="separator" class="divider"></li>
			<!-- Ainda será trabalhado
			<li><a href="administrativo.php?link=18">Nivel de Acesso</a></li> 
			<li><a href="administrativo.php?link=26">Mensagens</a></li>  
			!--> 
		    <li class="dropdown-header">Planos</li>
			<li><a href="administrativo.php?link=28">Cadastrar</a></li>
			<li><a href="administrativo.php?link=27">Listar</a></li>
			<li role="separator" class="divider"></li>
		    <li class="dropdown-header">Vantagens Planos</li>
			<li><a href="administrativo.php?link=32">Cadastrar</a></li>
			<li><a href="administrativo.php?link=31">Listar</a></li>  
		  </ul>
		</li>
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Produto <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="administrativo.php?link=7">Listar Categoria </a></li>     
			<li><a href="administrativo.php?link=6">Nova Categoria</a></li>
			<li><a href="administrativo.php?link=10">Listar Produto</a></li> 		
			<li><a href="administrativo.php?link=11">Novo Produto</a></li>
		  </ul>
		</li>
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Fornecedor <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="administrativo.php?link=35">Listar </a></li>
			<li><a href="administrativo.php?link=36">Cadastrar </a></li>     
		  </ul>
		 <li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Jogos <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<!-- <li><a href="administrativo.php?link=">Agenda </a></li> -->
			<li><a href="administrativo.php?link=41">Cadastrar torneio </a></li>
			<li><a href="administrativo.php?link=42">Listar torneio </a></li>
			<li><a href="administrativo.php?link=44">Abertura torneio </a></li>
		  </ul>
		</li>
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Vendas <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="administrativo.php?link=50">Vendas Realizadas</a></li>
			<li><a href="administrativo.php?link=51">Nova Venda</a></li>
		  </ul>
		</li>
<!--
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Carousel <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="administrativo.php?link=25">Listar Carousel</a></li> 
		  </ul>
		</li>
-->
		<li class="dropdown">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Configuração <span class="caret"></span></a>
		  <ul class="dropdown-menu">
			<li><a href="administrativo.php?link=14">Situação</a></li>
			<li><a href="administrativo.php?link=55">Métodos de Pagamento</a></li>
		  </ul>
		</li>
		<li><a href="sair.php">Sair</a></li>
	  </ul>
	</div><!--/.nav-collapse -->
  </div>
</nav>
<!-- Fim navbar -->