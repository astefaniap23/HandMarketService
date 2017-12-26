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
	


	$eliminaFavorito = mysql_query("DELETE FROM wishlist WHERE id_product='$id_product' and
					id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)");
			
		  echo 3;
		 
			
			
				mysql_close();			



?>