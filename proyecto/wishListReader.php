<?php

	include("conexion.php");	
 
	
	$id_product = $_POST['id_product'];
	
	
   session_start();
	$usuario = $_SESSION['usuario'];
	
	/*
	$name = $_POST['name'];
	$price = $_POST['price'];
    $image = $_POST['image'];
*/
	


	$verifica = mysql_query("SELECT id_product,id_user FROM wishlist WHERE id_product='$id_product' and id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)");
			
		  if(mysql_num_rows($verifica)>0){ 
		 /// echo 'REPETIDO';
		   
		 }
		  else{
				  $nuevoDato = mysql_query("INSERT INTO wishlist( id_product, id_user )
				VALUES ('$id_product', (SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)) ");
				echo 3;
			}
			
			
				mysql_close();			



?>