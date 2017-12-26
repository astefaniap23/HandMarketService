<?php
include("conexion.php");	

   $usuario = $_POST['usuario'];
   session_start();
	$usuario = $_SESSION['usuario'];
	
	$checkClave = $_POST['checkClave'];

	
	$verificaClave = "SELECT * FROM usuarios WHERE clave=md5('$checkClave') and usuario='$usuario' and activo=1";
	$resultado = mysql_query($verificaClave) or die (mysql_error());
	
	if(mysql_num_rows($resultado)>0) {
	echo 1;
	}
	
	mysql_close();

?>