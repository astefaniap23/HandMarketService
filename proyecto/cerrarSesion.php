<?php
include("conexion.php");	

$usuario = $_POST['usuario'];

//$test = $_SESSION['usuario'];

session_start();
$usuario = $_SESSION['usuario'];

$noactivo = mysql_query ("UPDATE usuarios SET activo=0 
						WHERE usuario='$usuario'");
						
echo 2;

/*
$resultado = mysql_query("SELECT * FROM usuarios WHERE usuario='$test' and activo=1'")
							or die (mysql_error());

$noactivo = mysql_query ("UPDATE usuarios SET activo=0 
						WHERE usuario=qq");
						
if(mysql_num_rows($resultado)>0) {
$noactivo = mysql_query ("UPDATE usuarios SET activo=0 
						WHERE usuario='$test'");
echo 1;
}*/

mysql_close();

?>