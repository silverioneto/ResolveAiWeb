<?php 

	$email = $_POST['login'];
	$senha = $_POST['password'];
	require_once '../config/DB_Functions.php';
  	$db = new DB_Functions();
  	$verificaLogin = $db->getUserByEmailAndPassword($email,$senha);

  	echo $verificaLogin;

  	if($verificaLogin == '1'){  
  		session_start();	
  		$_SESSION['logado'] = true;
  	}else{
  		session_start();
  		session_unset('logado');
  		session_destroy();
  	}
 
 ?>

