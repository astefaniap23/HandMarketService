<?php
	include("conexion.php");
	//$cadena='dsagdsagraff23';
	

$usuario = str_replace(" ","",$_POST['usuario']);
$clave = $_POST['clave'];
utf8_decode ($clave);

$cadena =explode(" ",$clave); 
$tamaño = count($cadena); 
$espacios = $tamaño - 1; 



session_start();
$_SESSION['usuario'] = $usuario;

//mysql_query("SET NAMES 'utf8'");
$consulta = "SELECT id FROM usuarios WHERE usuario='$usuario' and clave=md5('$clave')";
$resultado = mysql_query($consulta) or die (mysql_error());

	if(mysql_num_rows($resultado)>0) {

		$activo = mysql_query ("UPDATE usuarios SET activo=1 
								WHERE usuario='$usuario' and clave=md5('$clave')");
				//$_SESSION['id'] = $id;

		echo 1;
	}else{
	
		$consulta2 = "SELECT id FROM usuarios WHERE usuario='$usuario'";
		$resultadoUsu = mysql_query($consulta2) or die (mysql_error());
		if(mysql_num_rows($resultadoUsu)>0) {
		if ($espacios > 0){ echo 0; } else{
			echo 0;
			}
		}
		
	}





mysql_close();
?>