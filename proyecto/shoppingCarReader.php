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

    // mysql inserting a new row
	//$idUser = mysql_query("SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1");
	
		/*$rows = array();
	while($r = mysql_fetch_assoc($idUser)){ 
		$rows[] = $r;
	}

	echo json_encode($rows);*/

	
    $nuevoDato = mysql_query("INSERT INTO shoppingcar( id_product, id_user )
							 VALUES ('$id_product', (SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)) ");
							 
							 

	   //$nuevoDato = mysql_query("INSERT INTO shoppingcar( id_product, name, price,imagen )
						//	 VALUES ('$id_product','$name', '$price','$image') ");						 
							 
	
	if($nuevoDato){
        // successfully inserted into database
        echo 3;
    }

	mysql_close();
?>