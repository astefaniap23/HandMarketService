 <?php

	include("conexion.php");	

   //$usuario = null;
	session_start();
	$usuario = $_SESSION['usuario'] ;
	//$usuario = 'Astefaniap';




	$query = "SELECT sh.id_code, sh.id_product, sh.id_user, p.nombre, p.descripcion, p.precio, p.imagen,  p.imagen_max
	FROM shoppingcar sh, productos p WHERE sh.id_product=p.id and sh.id_user = 
	(SELECT id FROM usuarios WHERE usuario='$usuario')";
	

/*

$query = "SELECT s.id_code,s.id_product,s.name,s.price,s.imagen FROM shoppingcar s,usuarios u 
			WHERE s.id_user=u.id and u.usuario='qq'";*/
$resultado = mysql_query ($query);


$rows = array();
while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
	$rows[] = $r;
}

echo json_encode($rows);
	
	mysql_close();
	
?>