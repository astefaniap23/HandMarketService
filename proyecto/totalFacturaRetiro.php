<?php
include("conexion.php");	

	//$totalCorreoDomicilio = $_POST['totalCorreoDomicilio']; // total con delivery
	
	$totalFacturaRetiro = $_POST['totalFacturaRetiro'];
	session_start();
	$usuario = $_SESSION['usuario'];
	

	$verificaCorreo = "SELECT correo FROM usuarios WHERE usuario='$usuario' and activo=1";
	$resultado = mysql_query($verificaCorreo) or die (mysql_error());
	
if(mysql_num_rows($resultado)>0) {	

$eliminaFacturaActiva = "DELETE FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1";
		$ejecutar2 = mysql_query($eliminaFacturaActiva) or die (mysql_error());
	
		$facturaRetiro = "INSERT INTO facturacompra(id_user,activo,total_productos) 
						VALUES ((SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1),1,'$totalFacturaRetiro')";
		$ejecutar = mysql_query($facturaRetiro) or die (mysql_error());
		/////////////////////////
	
		


echo 1;

}
mysql_close();
?>