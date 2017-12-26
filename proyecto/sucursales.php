 <?php

	include ("conexion.php");
		
	$query = "SELECT * FROM sucursales";
	$resultado = mysql_query ($query) ;



	$rows = array();
	while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
		$rows[] = $r;
	}

	echo json_encode($rows);
mysql_close();
?>