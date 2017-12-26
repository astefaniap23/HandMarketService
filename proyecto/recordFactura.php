<?php
include("conexion.php");	


session_start();
	$usuario = $_SESSION['usuario'];

$query = "SELECT id,DATE_FORMAT(fecha,'%d-%m-%Y %h:%i:%s') fecha FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) ORDER BY id DESC";
		$numFactura = mysql_query($query) or die (mysql_error());		

		$rows = array();
	while($r = mysql_fetch_assoc($numFactura)){ 
		$rows[] = $r;
	}
	
	echo json_encode($rows);
	
	mysql_close();
?>