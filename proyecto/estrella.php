<?php

		
	include ("conexion.php");

	

   //$usuario = null;
	session_start();
	$usuario = $_SESSION['usuario'];
	

	$query = "SELECT id_product FROM wishlist WHERE id_user = 
	(SELECT id FROM usuarios WHERE usuario='$usuario')";

$resultado = mysql_query ($query) ;
if(mysql_num_rows($resultado)>0) {
	
}

$rows = array();
while($r = mysql_fetch_assoc($resultado)){ 
	$rows[] = $r;
}

echo json_encode($rows);		
/*
$json = json_encode($rows);		
		$obj = json_decode($json, true);
	
	
	foreach ($obj as $key2 => $value2) { 
			foreach ($value2 as $k2 => $v2) { 
				
				$prod .=" $v2";
		
			}				
		}	
	
	$miarray = explode(' ',$prod);  
	print_r($miarray);*/
	
	mysql_close();
	
	
?>