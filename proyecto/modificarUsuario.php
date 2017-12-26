<?php
	include("conexion.php");	
   $usuario = $_POST['usuario'];
   session_start();
	$usuario = $_SESSION['usuario'];
	
	
	$modificarClave = $_POST['modificarClave'];
	$modificarDireccion = $_POST['modificarDireccion'];
	$modificarCorreo = $_POST['modificarCorreo'];
	$modificarNombre = $_POST['modificarNombre'];
	$modificarApellido = $_POST['modificarApellido'];
	$modificarTelefono = $_POST['modificarTelefono'];
	
	
	$verifica1=0;
	$verifica2=0;
	$verifica3=0;
	
	$bandera=0;
	$x=0;
	
	
	
	
	if($modificarClave){  
						$cadena =explode(" ",$modificarClave); 
						$tamaΓ±o = count($cadena); 
						$espacios = $tamaΓ±o - 1; 
						
						if ($espacios > 0){ $x=1;  echo "a"; }
					}
					

		
	if($modificarNombre){   
							
						if(preg_replace('/[a-zA-ZρΡαινσϊΑΙΝΣΪ ]/', '', $modificarNombre) ) { 
						
						$x=1; echo "b";} 
										
					}		
		
	if($modificarApellido){   
							if(preg_replace('/[a-zA-ZρΡαινσϊΑΙΝΣΪ ]/', '', $modificarApellido) ) { $x=1; echo "c";} 
							
						}
						
						
							if($modificarCorreo){  
								$VerificaDatos = mysql_query("SELECT correo FROM usuarios WHERE correo='$modificarCorreo'");
								
									if(mysql_num_rows($VerificaDatos)==0) {
									
								
								   }else{ $x=1; echo "d"; 
								}
							}								
						
	
			
	
	if ($x==1){ echo 0; }
	
	else{
	
	
	
	if($modificarClave){  
							
							$encriptapw= md5($modificarClave);
							$modClave = mysql_query("UPDATE usuarios SET clave='$encriptapw'
							WHERE usuario='$usuario' and activo=1");
							
							$verifica1=1;
							
					}
				

					

		
	if($modificarNombre){   
							
						
							
							$modNombre = mysql_query("UPDATE usuarios SET nombre='$modificarNombre'
							WHERE usuario='$usuario' and activo=1");
							//echo 4; 
						$verifica2=1;							
											
					}
					
					
				
			
								
	if($modificarApellido){   
							
								$modApellido = mysql_query("UPDATE usuarios SET apellido='$modificarApellido' 
								WHERE usuario='$usuario' and activo=1");
								//echo 5;  
								$verifica3=1;
							
						}
			
			
			
		if(	 $verifica1==1 || $verifica2==1 || $verifica3==1 ||
			($verifica1==1 && $verifica2==1 && $verifica3==1) ||
			($verifica1==1 && $verifica2==1 ) ||
			($verifica1==1 && $verifica3==1 ) ||
			($verifica2==1 && $verifica3==1) ){
        		echo 1;
        	}
			
			if($modificarTelefono){   
								$modTelefono = mysql_query("UPDATE usuarios SET telefono='$modificarTelefono' 
								WHERE usuario='$usuario' and activo=1");
								echo 2;    
								} 
			
			if($modificarDireccion){   
								
								$modDireccion = mysql_query("UPDATE usuarios SET direccion='$modificarDireccion' 
								WHERE usuario='$usuario' and activo=1");
								echo 3;    } 
	
			if($modificarCorreo){  
								$VerificaDatos = mysql_query("SELECT correo FROM usuarios WHERE correo='$modificarCorreo'");
								
									if(mysql_num_rows($VerificaDatos)==0) {
									
								$modCorreo = mysql_query("UPDATE usuarios SET correo='$modificarCorreo' 
								WHERE usuario='$usuario' and activo=1");
								echo 4;    }else{ echo "d"; } 
								} 
								
								
		}
		mysql_close();	

?>