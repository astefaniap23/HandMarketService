<?php

		
	include ("conexion.php");

   //$usuario = null;
	session_start();
	$usuario = $_SESSION['usuario'];
	

	$query = "SELECT w.id_code,w.id_product,w.id_user,p.nombre, p.descripcion, p.precio, p.imagen,  p.imagen_max
	FROM wishlist w, productos p WHERE w.id_product=p.id and w.id_user = 
	(SELECT id FROM usuarios WHERE usuario='$usuario')";




/*$query = "SELECT s.id_code,s.id_product,s.name,s.price,s.imagen FROM shoppingcar s,usuarios u 
			WHERE s.id_user=u.id and u.usuario='$usuario'";*/
$resultado = mysql_query ($query) ;



$rows = array();
while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
	$rows[] = $r;
}

echo json_encode($rows);
	
	mysql_close();
	
	
?>