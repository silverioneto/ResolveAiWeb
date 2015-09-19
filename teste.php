<?php 
session_start();
if($_SESSION['logado']){
	echo 'logado';
}else{
	echo "nao logado";
}

 ?>