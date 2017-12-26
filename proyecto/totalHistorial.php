<?php
 		include("conexion.php");	
		
		
		if(isset($_GET['id']))
			{
				$id = $_GET['id'];
				
				$query= "SELECT total_productos,total FROM facturacompra
						WHERE id=$id";
			}
			if(isset($_POST['id']))
			{
				$id = $_POST['id'];
				
				$query= "SELECT total_productos,total FROM facturacompra
						WHERE id=$id";
			}

				

			
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