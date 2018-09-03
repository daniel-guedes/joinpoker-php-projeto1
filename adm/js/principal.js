$(function(){ // declaro o início do jquery
	$("input[name='usuario']").blur( function(){
		var nomeEdit = $("input[name='usuario']").val();
		var idUsuario = $("input[name='id']").val();
		var nomeCampo = 'login';
		if (idUsuario == null) {
			var acao = 'cad';
		}
		else{
			var acao = 'edit';
		}
		$.post('validacoes.php',{login: nomeEdit, id: idUsuario, campo: nomeCampo, acao: acao},function(data){
			var res = data.split("|");
			if (res[0]==1){
				$("#usuario").val(res[2]);//onde vou escrever o resultado
				alert(res[1]);
			} 
		});	
	});
});

$(function(){ // declaro o início do jquery
	$("input[name='email']").blur( function(){
		var emailEdit = $("input[name='email']").val();
		var idUsuario = $("input[name='id']").val();
		var nomeCampo = 'email';
		if (idUsuario == null) {
			var acao = 'cad';
		}
		else{
			var acao = 'edit';
		}
		$.post('validacoes.php',{email: emailEdit,id: idUsuario, campo: nomeCampo, acao: acao},function(data){
			var res = data.split("|");
			if (res[0]==1){
				$("#email").val(res[2]);//onde vou escrever o resultado
				alert(res[1]);
			} 
		});	
	});
});

// $(function(){ // declaro o início do jquery
// 	$("input[name='endereco']").blur( function(){
// 		var endEdit = $("input[name='endereco']").val();
// 		var idUsuario = $("input[name='id']").val();
// 		var nomeCampo = 'endereco';
// 		$.post('validacoes.php',{email: endEdit,id: idUsuario, campo: nomeCampo},function(data){
// 			var res = data.split("|");
// 			if (res[0]==1){
// 				$("#endereco").val(res[2]);//onde vou escrever o resultado
// 			} 
// 		});	
// 	});
// });

$(function(){ // declaro o início do jquery
	$("input[name='documento']").blur( function(){
		var rgEdit = $("input[name='documento']").val();
		var idUsuario = $("input[name='id']").val();
		var nomeCampo = 'documento';
		if (idUsuario == null) {
			var acao = 'cad';
		}
		else{
			var acao = 'edit';
		}
		$.post('validacoes.php',{documento: rgEdit,id: idUsuario, campo: nomeCampo, acao: acao},function(data){
			var res = data.split("|");
			if (res[0]==1){
				$("#documento").val(res[2]);//onde vou escrever o resultado
				alert(res[1]);
			} 
		});	
	});
});

$(function(){ // declaro o início do jquery
	$("input[name='senha']").blur( function(){
	var senhaEdit = $("input[name='senha']").val();
	var qtdeSenha = senhaEdit.length;
		if ((qtdeSenha>0) && (qtdeSenha<6)){
			$("#senha").val('');//onde vou escrever o resultado
			alert("Senha abaixo do mínimo de 6 caracteres exigidos!");
		} 
	});
});