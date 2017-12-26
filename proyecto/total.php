<?php
 		include("conexion.php");	
		session_start();
		$usuario = $_SESSION['usuario'];
		
		
			$query= "SELECT SUM(p.precio) FROM productos p, shoppingcar sh WHERE sh.id_product=p.id and 
			sh.id_user = (SELECT id FROM usuarios WHERE usuario='$usuario')";
			
			$resultado = mysql_query ($query) ;

$rows = array();
while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
	$rows[] = $r;
}

$json = json_encode($rows);


echo $json;
/*
$obj = json_decode($json, true);
		//var_dump($obj[0]);
		
		$sendTotal = $obj[0]["SUM(price)"];
 echo $sendTotal;*/
	mysql_close();
	
?>