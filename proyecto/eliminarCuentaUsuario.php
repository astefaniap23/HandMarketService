<?php
	include("conexion.php");	
	
   $usuario = $_POST['usuario'];
   session_start();
	$usuario = $_SESSION['usuario'];
	
	$checkClave = $_POST['checkClave'];

	
	$checkClave = mysql_query("SELECT * FROM usuarios WHERE clave=md5('$checkClave') and usuario='$usuario' and activo=1");
	
	if(mysql_num_rows($checkClave)>0) {
	$eliminarCuenta = mysql_query("DELETE FROM usuarios WHERE usuario='$usuario' and activo=1");
	echo 1;
	}	
mysql_close();
?>