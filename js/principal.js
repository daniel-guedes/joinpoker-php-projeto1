$(function(){ // declaro o início do jquery
	$("input[name='usuario']").blur( function(){  
		var nomeUsuario = $("input[name='usuario']").val();
			alert(nomeUsuario);

		$.post('validacoe.php',{usuario: usuario},function(data){
			//$('#resultado').html(data);//onde vou escrever o resultado
			alert(data);
			console.log(data);
		});
	});
});// fim do jquery