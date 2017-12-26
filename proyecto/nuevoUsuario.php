<?php
	include("conexion.php");	

   
   	$nuevoNombre = $_POST['nuevoNombre'];
	$nuevoApellido = $_POST['nuevoApellido'];
	$nuevoSexo = $_POST['nuevoSexo'];
	$nuevoUsuario = $_POST['nuevoUsuario'];
	$nuevoClave = $_POST['nuevoClave'];
	$nuevoDireccion = $_POST['nuevoDireccion'];
	$nuevoCorreo = $_POST['nuevoCorreo'];
	$nuevoTelefono = $_POST['nuevoTelefono'];
	
	$x=0;
	


$cadena2 =explode(" ",$nuevoClave); 
$tamaρo2 = count($cadena2); 
$espacios2 = $tamaρo2 - 1; 


if($espacios2 > 0){
$x=1;
	echo "a";
}

if(preg_replace('/[a-zA-ZρΡαινσϊΑΙΝΣΪ ]/', '', $nuevoNombre) ) { 
						$x=1;
						echo "b"; 
										
					}	
					
if(preg_replace('/[a-zA-ZρΡαινσϊΑΙΝΣΪ ]/', '', $nuevoApellido) ) { 
						$x=1;
						echo "c";
										
					}
					
$cadena =explode(" ",$nuevoUsuario); 
$tamaρo = count($cadena); 
$espacios = $tamaρo - 1; 

if($espacios > 0){
	$x=1;
	echo "d";
}

if ($x==1){ echo 0; }else{
    // mysql inserting a new row
	$VerificaDatos = mysql_query("SELECT usuario,correo FROM usuarios 
								WHERE (usuario='$nuevoUsuario' or correo='$nuevoCorreo') or (usuario='$nuevoUsuario' and correo='$nuevoCorreo')");
	
   	if(mysql_num_rows($VerificaDatos)==0) {
		$encriptapw= md5($nuevoClave);
		
		$nuevoDato = mysql_query("INSERT INTO usuarios(nombre, apellido, sexo, usuario, clave, direccion, telefono, correo)
							 VALUES('$nuevoNombre', '$nuevoApellido', '$nuevoSexo', '$nuevoUsuario',  '$encriptapw', '$nuevoDireccion', '$nuevoTelefono', '$nuevoCorreo')");
        // successfully inserted into database
        echo "z";
	}else{
		$VerificaCorreo = mysql_query("SELECT correo FROM usuarios 
								WHERE correo='$nuevoCorreo'");
						if(mysql_num_rows($VerificaCorreo)>0) {	
							echo "m";
							}else{
								
								echo "u";
								}
	}
}



mysql_close();
?>