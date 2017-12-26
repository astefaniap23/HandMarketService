 <?php


 include("conexion.php");	
 
$usuario = null;
   session_start();
	$usuario = $_SESSION['usuario'];


mysql_query("SET NAMES 'utf8'");
$query = "SELECT nombre,apellido,telefono,correo,direccion FROM usuarios WHERE activo=1 and usuario='$usuario'";
$resultado = mysql_query ($query) ;



$rows = array();
while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
	$rows[] = $r;
}

echo json_encode($rows);

mysql_close();

?>