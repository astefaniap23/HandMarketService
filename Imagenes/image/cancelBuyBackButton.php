 <?php


	include ("conexion.php");
		
	session_start();
	$usuario = $_SESSION['usuario'];
	
	$query = mysql_query("DELETE FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1");
	


mysql_close();

?>