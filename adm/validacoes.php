<?php
		//envio o charset para evitar problemas

		
		
		header("Content-Type: text/html; charset=ISO-8859-1");
		include_once("conexao.php");
		$campo = $_POST['campo'];
		$vlr_post_campo = $_POST[''.$campo.''];
		


		if ($_POST['acao']=='edit') {
			$sql = "SELECT * FROM usuarios WHERE $campo = '$vlr_post_campo' AND id <> {$_POST['id']} ";
			$q = mysqli_query($conectar,$sql);//executo a query
			$usuario = mysqli_num_rows($q);
		}elseif ($_POST['acao']=='cad') {
			
			$sql = "INSERT INTO usuarios (nome,	
										email,	
										login,	
										senha,	
										nivel_acesso_id,	
										created,	
											endereco,	
										documento, 
										telefone,	
										plano,	
										saldo,	
										nascimento,	
										flag_user_ativo,	
										cod_clube,	
										cidade ) VALUES (
										'adminpoker' , 
										'admin@poker.hotmail.com' .
										'adminpoker' , 
										'123Admin' , 
										0 , 
										current_timestamp ,
										'pokerstreet 85' , 
										'1233213321' ,
										'14981224433' ,
										0 , 
										'1000000' ,
										'17/08/1952'
										1,
										0,
										'marilia' ) ";
			$q = mysqli_query($conectar,$sql);//executo a query

			$sql = "SELECT * FROM usuarios WHERE $campo = '$vlr_post_campo'";
			$q = mysqli_query($conectar,$sql);//executo a query
			$usuario = mysqli_num_rows($q);

		}
		// quando o banco estiver sem usuario direcionar direto para tela de cadastro de usurio , e criar um admin padrão interno (caso precise de um usuario MASTER)
		

		if($usuario>0){ 
			echo "1|Já existe usuário com este ".$campo."!|".$usuario[''.$campo.''];
		}
		else {
			echo "0|";
		}
?>