
<?php
	if(isset($_SESSION['usuarioNome'])){
		$usuario_logado=$_SESSION['usuarioNome'];
	}else{
		header("Location: http://".$_SERVER['HTTP_HOST']."/adm/index.php");
		die();
	}
	include_once("conexao.php");

	$cod_clube = $_SESSION['clube'];
	$cod_usuario = $_SESSION['usuarioId'];
	$abrir_caixa =  $_GET['abrir_caixa'];
	$fechar_caixa = $_GET['fechar_caixa'];

	$sql = "SELECT cod_caixa,
					data_abertura,
					data_fechamento,
					valor_pagar,
					valor_pago,
					current_date as data_hoje
				FROM caixa
			WHERE cod_admin = '".$cod_usuario."' 
			AND cod_clube = '".$cod_clube."' 
			AND data_fechamento is null";
	
	$request=mysqli_query($conectar, $sql);
	// echo $sql;
	$caixa = mysqli_fetch_assoc($request);
	
	//var_dump($caixa); NULL se nao encontrar um caixa aberto.	

	if(!empty($caixa['cod_caixa'])){
		$nova_venda = true;
	}else{
		$nova_venda = false;
	}

	if($fechar_caixa == true){
		//faz update fechando o caixa e colocando o valor a pagar somando todas as vendas finalizadas do caixa, se houver alguma venda aberta colocar como em debito e finalizar as vendas pro usuario
		//quando estiver pronto colocar pra mostrar os pedidos para finalizar e informar como sera finalizado.
		// 
		
		// print_r($caixa);
		if(!empty($caixa['cod_caixa'])){
			//seleciona todas as vendas e verifica se estao fechadas.
			
			$sql = "SELECT v.cod_venda, d.qtd_produto*d.valor_produto as valor_pago
						FROM  vendas v 
						INNER JOIN venda_dados d ON v.cod_venda = d.cod_venda
						WHERE v.cod_usuario = '".$cod_usuario."' 
					AND v.cod_clube = '".$cod_clube."' 
					AND v.pago is null 
					AND v.fechado is null";
			
			$request = mysqli_query($conectar, $sql);
			$vendas = mysqli_fetch_array($request);
			
			if(!empty($vendas)){
				header("Location: administrativo.php?link=54&id=".$vendas['cod_venda']); 			
			}else{
				$sql = "SELECT v.cod_venda ,SUM(d.qtd_produto * ROUND(d.valor_produto,2)) as valor_pago 
 						FROM vendas v 
						JOIN venda_dados d ON v.cod_venda = d.cod_venda
						WHERE v.cod_usuario = '".$cod_usuario."' 
					AND v.cod_clube = '".$cod_clube."' 
					AND v.cod_caixa = '".$caixa['cod_caixa']."'
					AND v.pago = 'SIM'
					AND v.fechado is null
					GROUP BY v.cod_venda";
				// echo $sql;
				$request = mysqli_query($conectar, $sql);
				$vendas = mysqli_fetch_all($request);
				//finaliza o caixa e soma valor do caixa.
				$total_venda =0;
				foreach ($vendas as $venda) {
					//faz update das vendas finalizando-as e faz soma para fechar o caixa
					// update venda set finalizada = 1 where cod_venda = venda[0]
					$total_venda += $venda[1];

					$sql = "UPDATE venda SET fechado = 1 where cod_venda = ".$venda[0];
					$result = mysqli_query($conectar, $sql);

				} 
				//fecha o caixa
				$pg_data = (new \DateTime())->format('d/m/Y');

				$sql = "UPDATE caixa SET  valor_pago = ".$total_venda." and data_fechamento = ".$pg_data." and valor_pagar = 0 where cod_clube = ".$cod_clube;
				$result = mysqli_query($conectar, $sql);
		 		
			}

		}

	}
	if($abrir_caixa == true) {
		// fazer inser de um novo caixa e criacao da data de abertura com atual data no sistema
		// nao deixar abrir outro caixa se houver um caixa aberto (por clube , se admin optar por 2 clubes vai ter opcao de selecionar na tela para mostrar 1 ou 2 ou todos por admin tambem)

		// $sql = "SELECT cod_caixa FROM caixa WHERE 
		// 						cod_admin = '".$cod_usuario."'  
		// 					AND cod_clube = '".$cod_clube."' 
		// 					AND data_fechamento is not null";


		// $cod_caixa = mysqli_query($conectar, $sql);
		// $cod_caixa = mysqli_fetch_assoc($cod_caixa);

		// if($cod_caixa == null){
		// 	$cod_caixa = 1;
		// }else{
		// 	$cod_caixa = $cod_caixa + 1;
		// }

		$sql = "INSERT INTO caixa(data_abertura,cod_admin,cod_clube) VALUES (current_timestamp,$cod_usuario,$cod_clube )";
		// echo $sql;
		$result = mysqli_query($conectar, $sql);
	    // var_dump($result);
	    $nova_venda = true;
	}
	
	// inicia o listar venda

	$resultado=mysqli_query($conectar,"SELECT u.nome,
							 x.data_venda,
							 x.cod_venda,
							 SUM(x.valor_produto) AS valor_acumulado,
							 SUM(valor_acum_produto) AS valor_final,
							 x.meio_pgto,
							 x.data_pgto,
							 m.descricao_metodo_pgto 
						 	FROM (SELECT v.*,
								 d.cod_produto,
								 d.qtd_produto,
								 d.valor_produto,
								 d.qtd_produto*d.valor_produto AS valor_acum_produto,
								 d.data_venda 
								 FROM vendas AS v 
								 INNER JOIN venda_dados AS d ON d.cod_venda = v.cod_venda 
								 WHERE v.cod_clube = '$cod_clube' and fechado is null) AS x 
							 INNER JOIN usuarios AS u ON u.id = x.cod_cliente 
						 	LEFT JOIN metodos_pgto AS m ON m.cod_metodo_pgto = x.meio_pgto 
						 	GROUP BY u.nome,
							 x.data_venda,
							 x.cod_venda,
							 x.meio_pgto,
							 x.data_pgto,
							 m.descricao_metodo_pgto order by x.data_venda");
	$linhas=mysqli_num_rows($resultado);
?>
	<div class="container theme-showcase" role="main">     
		 <?php if($nova_venda) { ?>

		<div class="pull-right div_fecha_caixa">
			<h3>Caixa Aberto</h1>
				<!-- href="administrativo.php?link=58" -->
			<a href="administrativo.php?link=50&fechar_caixa=true"><button type='button'  class='btn btn-sm btn-danger fecharCaixa'>Fechar Caixa</button></a>
		</div>
		<?php }else{ ?>

		<div class="pull-right div_abre_caixa">
			<h3>Caixa Fechado</h1>
				<!-- href="administrativo.php?link=58" -->
			<a href="administrativo.php?link=50&abrir_caixa=true"><button type='button'  class='btn btn-sm btn-success abrirCaixa'>Abrir Caixa</button></a>
		</div>
		<?php }?>

	</div>



<div class="container theme-showcase vendas_realizadas" role="main">      
  <div class="page-header">
	<h1>Vendas Realizadas</h1>
  </div>
	  <div class="row espaco">
			<div class="pull-right">
  				<?php if($nova_venda) { ?>
					<a href="administrativo.php?link=51"><button type='button' class='btn btn-sm btn-success'>Nova Venda</button></a>
  				<?php } ?>
			</div>
		</div>
  <div class="row">
	<div class="col-md-12">
	  <table class="table">
		<thead>
		  <tr>
			<th>Venda Nº</th>
			<th>Cliente</th>			
			<th>R$ Valor</th>
			<th>Data Venda</th>
			<th>Data Pgto.</th>
			<th>Meio Pgto.</th>
		  </tr>
		</thead>
		<tbody>
			<?php
				$valor_a_receber = 0;
				while($linhas = mysqli_fetch_array($resultado)){
					echo "<tr>";
						
						echo "<td>".$linhas['cod_venda']."</td>";
						echo "<td>".$linhas['nome']."</td>";
						echo "<td>".number_format($linhas['valor_final'], 2, ',', '.')."</td>";
						echo "<td>".date("d/m/Y", strtotime($linhas['data_venda']))."</td>";
						echo "<td>".$linhas['data_pgto']."</td>";
						echo "<td>".$linhas['descricao_metodo_pgto']."</td>";
						?>

						<td> 
						<a href='administrativo.php?link=53&id=<?php echo $linhas['cod_venda']; ?>'><button type='button' class='btn btn-sm btn-primary'>Visualizar</button></a>
						
						<?php
						if (is_null($linhas['descricao_metodo_pgto'])){
							$valor_a_receber = $valor_a_receber + $linhas['valor_final'];
							echo "<a href='administrativo.php?link=54&id=".$linhas['cod_venda']."'><button type='button' class='btn btn-sm btn-warning'>Finalizar Venda</button></a>";
						}
						
				}
					echo "</tr>";
				
				echo "<tr><td><th>TOTAL A RECEBER:</th><td>".number_format($valor_a_receber, 2, ',', '.')."</td></tr>";
				
			?>
		</tbody>
	  </table>
	</div>
	</div>
</div> <!-- /container -->
