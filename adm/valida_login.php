﻿<?php
session_start();
$usuariot = $_POST['usuario'];
$senhat = $_POST['senha'];
include_once("conexao.php");

$result = mysqli_query($conectar,"SELECT * FROM usuarios WHERE login='$usuariot' AND senha='$senhat' LIMIT 1");
$resultado = mysqli_fetch_assoc($result);


// echo "Usuario: ".$resultado['nome'];
if(empty($resultado)){
		
	//Mensagem de Erro
	$_SESSION['loginErro'] = "Usuário ou senha Inválido";
	
	//Manda o usuario para a tela de login
	header("Location: index.php");
	
}else{
	//Define os valores atribuidos na sessao do usuario
	$_SESSION['usuarioId'] 			= $resultado['id'];
	$_SESSION['usuarioNome'] 		= $resultado['nome'];
	$_SESSION['usuarioNivelAcesso'] = $resultado['nivel_acesso_id'];
	$acesso 						= $resultado['nivel_acesso_id'];
	$_SESSION['usuarioLogin'] 		= $resultado['login'];
	$_SESSION['clube'] 				= $resultado['cod_clube'];

	if($resultado['nivel_acesso_id'] == 1){
		// echo "<meta HTTP-EQUIV='Refresh' CONTENT=0;URL='http://localhost/adm/administrativo.php>'";
		// header("Location: http://localhost/adm/administrativo.php");
		header("Location: administrativo.php");
	}else{
		header("Location: usuario.php");
	}

}
?>