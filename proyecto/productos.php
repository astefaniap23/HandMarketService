 <?php

include("conexion.php");	

	
$query = "SELECT id,id_category,nombre,descripcion,precio,imagen,imagen_max FROM productos";
$sql = "";
/*if(isset($_POST['id_category']))
{
	$id_category = $_POST['id_category'];
	$sql  = " WHERE id_category = $id_category";
}*/
if(isset($_GET['id_category']))
{
	$id_category = $_GET['id_category'];
	$sql  = " WHERE id_category = $id_category";
}

$resultado = mysql_query ($query.$sql) ;

$rows = array();
while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
	$rows[] = $r;
}

echo json_encode($rows);

//$query = "SELECT * FROM productos";

mysql_close();
?>