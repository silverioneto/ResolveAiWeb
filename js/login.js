function verificaLogin(){
	var login = $('#user').val();
	var senha = $('#password').val();

	 $.ajax({
    url : 'control/verificalogin.php',
    type : 'post',
    data : {'login': login, 'password': senha},
    dataType: 'html',    
    beforeSend: function(){
      $('#carregando').fadeIn();  
    },        
    success: function(retorno){
      if(retorno == 1){
        window.location.href = "teste.php" 
      }else{
        document.getElementById('errologin').style.display = 'block';
        //alert('Usuário ou Senha incorretos!');
      }
      //$('#resposta').html(retorno);
    },
    error: function(erro){
      $('#resposta').html(erro);
    }       
  })
}