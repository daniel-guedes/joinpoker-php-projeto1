
<?php
	if(isset($_SESSION['usuarioNome'])){
		$usuario_logado=$_SESSION['usuarioNome'];
	}else{
		header("Location: http://".$_SERVER['HTTP_HOST']."/adm/index.php");
		die();
	}
	include_once("conexao.php");

	$cod_clube = 1;

	$sql = "SELECT id, 
				cod_caixa,
				data_abertura,
				data_fechamento,
				valor_pagar,
				valor_pago,
				current_date as data_hoje
			FROM caixa
		WHERE cod_admin = '".$_SESSION['usuarioId']."' 
		AND cod_clube = '".$_SESSION['clube']."' 
		AND data_fechamento is not null";

	$request=mysqli_query($conectar, $sql );
	$caixa = mysqli_fetch_assoc($request);

	if(!empty($caixa)){
			// trazer o caixa e dados de cadatro. 
		// ao efetuar uma venda tera que atualizar o caixa colocando o valor a pagar e valor pago atualizando sempre até o fechamento do caixa. depois que o caixa é fechado não poderá mais ser alterada as vendas. 


		$id_caixa = $caixa["id"];
		$cod_caixa = $caixa["cod_caixa"];
		$data_abertura  = $caixa["data_abertura"];
		$data_fechamento = $caixa["data_fechamento"];
		$valor_a_pagar = $caixa["valor_pagar"];
		$valor_a_pagar = $caixa["valor_pago"];

   		// var_dump($id_caixa);exit;
   		?>
   		<div class="container theme-showcase" role="main">     
	   		<div class="pull-right div_fecha_caixa">
				<h3>Caixa Aberto</h1>
					<!-- href="administrativo.php?link=58" -->
				<a><button type='button'  class='btn btn-sm btn-danger fecharCaixa'>Fechar Caixa</button></a>
		  	</div>
		  	<div class="pull-right div_abre_caixa">
				<h3>Caixa Fechado</h1>
					<!-- href="administrativo.php?link=58" -->
				<a><button type='button'  class='btn btn-sm btn-success abrirCaixa'>Abrir Caixa</button></a>
		  	</div>

	  	</div>

   		<?php
 
	} else if($abrir_caixa == true) {
		// fazer inser de um novo caixa e criacao da data de abertura com atual data no sistema
		// nao deixar abrir outro caixa se houver um caixa aberto (por clube , se admin optar por 2 clubes vai ter opcao de selecionar na tela para mostrar 1 ou 2 ou todos por admin tambem)

		$sql = "SELECT cod_caixa FROM caixa WHERE 
								cod_admin = '".$_SESSION['usuarioId']."'  
							AND cod_clube = '".$_SESSION['clube']."' ";


		$cod_caixa = mysqli_query($conectar, $sql);
		$cod_caixa = (int) mysqli_fetch_assoc($cod_caixa);

		if($cod_caixa == null){
			$cod_caixa = 1;
		}else{
			$cod_caixa = $cod_caixa + 1;
		}

		$sql = "INSERT INTO caixa(cod_caixa, data_abertura ) VALUES ( '".$cod_caixa."' , current_timestamp )";
		$result = mysqli_query($conectar, $sql);
	    $caixa_id = mysqli_insert_id($conectar);

		// var_dump($caixa_id);exit;
	}
	if($data_fechamento== null){
		// se data de fechamento estiver nula deve trazer a tela com vendas ja realizadas e com opcao de trazer o botao fechar caixa
		// ao fechar o caixa tem q atualizar as vendas veitas e adiconar a data de fechamento e nao trazer mais nesta pagina e 
		// trazer na pagina de caixa.

		// caso contrario trazer a tela vazia com opcao de abrir caixa e dps liberar as opcoes de comecar as vendas/ 

	}
	

	$cod_clube = 1;
	$resultado=mysqli_query($conectar,"SELECT u.nome, x.data_venda, x.cod_venda, SUM(x.valor_produto) AS valor_acumulado, SUM(valor_acum_produto) AS valor_final, x.meio_pgto, x.data_pgto, m.descricao_metodo_pgto FROM (SELECT v.*, d.cod_produto, d.qtd_produto, d.valor_produto, d.qtd_produto*d.valor_produto AS valor_acum_produto, d.data_venda FROM vendas AS v INNER JOIN venda_dados AS d ON d.cod_venda = v.cod_venda WHERE v.cod_clube = '$cod_clube') AS x INNER JOIN usuarios AS u ON u.id = x.cod_cliente LEFT JOIN metodos_pgto AS m ON m.cod_metodo_pgto = x.meio_pgto GROUP BY u.nome, x.data_venda, x.cod_venda, x.meio_pgto, x.data_pgto, m.descricao_metodo_pgto order by x.data_venda");
	$linhas=mysqli_num_rows($resultado);
?>	





<div class="container theme-showcase vendas_realizadas" role="main">      
  <div class="page-header">
	<h1>Vendas Realizadas</h1>
  </div>
  <div class="row espaco">
		<div class="pull-right">
			<a href="administrativo.php?link=51"><button type='button' class='btn btn-sm btn-success'>Nova Venda</button></a>
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
						echo "<td>".date("d/m/Y", strtotime($linhas['data_pgto']))."</td>";
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

<script type="text/javascript">	

	// function fecharAjax() {
	// 	// var cleanText = text.replace("R$ ", "").replace(",", ".");

	// 	$.ajax({
	// 		url: "/valida_caixa.php",
	// 		data: {
	// 			caixa_id: true
	// 		},
	// 		success: function( result ) {
	// 			$( "#weather-temp" ).html( "<strong>" + Caixa Aberto + "</strong> degrees" );
	// 		}
	// 	});
	// }
	function caixa(abrir) {

		$.ajax({
			url: "processa/valida_caixa.php",
			data: {
			caixa: abrir
			},
			success: function( result ) {
				$( ".vendas_realizadas" ).fadeToggle();
			}
		});


	}
		
	$(document).ready(function($){

		
		$(".fecharCaixa").click(function() {

			// fazer uma autenticação no admin do usuario 

			caixa();
		});
		$(".abrirCaixa").click(function() {
			// fazer uma autenticação no admin do usuario 
			caixa();
		});
	});	
	

	// 	return parseFloat(cleanText);
	// }
	

	

	// $( "button.finalizar" ).on( "click", function( event ) {
 // 			 hiddenBox.show();
	// });

</script>

