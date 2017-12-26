<?php
include("conexion.php");	
require("class.phpmailer.php");
require("class.smtp.php");

$checkEmail = $_POST['checkEmail'];
$nomUsu = null;

$caracteres = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"; //posibles caracteres a usar
$numerodeletras=10; //numero de letras para generar el texto
$cadena = ""; //variable para almacenar la cadena generada
for($i=0;$i<$numerodeletras;$i++)
{
    $cadena .= substr($caracteres,rand(0,strlen($caracteres)),1); /*Extraemos 1 caracter de los caracteres 
entre el rango 0 a Numero de letras que tiene la cadena */
}
$generarLlave = mysql_query("UPDATE usuarios SET clave='$cadena' WHERE correo='$checkEmail'");


	$verificaClave = "SELECT clave FROM usuarios WHERE correo='$checkEmail'";
	$resultado = mysql_query($verificaClave) or die (mysql_error());
	
	$generarLlaveMd5 = mysql_query("UPDATE usuarios SET clave=md5('$cadena') WHERE correo='$checkEmail'");
	
if(mysql_num_rows($resultado)>0) {	
	
	
		
	$rows = array();
		while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
			$rows[] = $r;
			
		}
		
		$json = json_encode($rows);
				
		$obj = json_decode($json, true);
		$sendClave = $obj[0]["clave"];
	
	/////////////////////////// Nombre y apellido del usuario
	mysql_query("SET NAMES 'utf8'");
		$nombreUsuario =  mysql_query("SELECT nombre, apellido FROM usuarios WHERE correo='$checkEmail'");
		
		$rowsU = array();
		while($rU = mysql_fetch_assoc($nombreUsuario)){ 	
				$rowsU[] = $rU;	
				}
		$jsonU = json_encode($rowsU);		
		$objU = json_decode($jsonU, true);
		
		foreach ($objU as $key2 => $value2) { 
			foreach ($value2 as $k2 => $v2) { 
				
				$nomUsu .=" $v2";
		
			}				
		}	
		///////////////
	

$mail = new PHPMailer();
$mail->IsSMTP();
$mail->SMTPAuth = true;
$mail->SMTPSecure = "ssl";
$mail->Host = "smtp.gmail.com";
$mail->Port = 465;
$mail->Username = "handmarketapp@gmail.com";
$mail->Password = "rhsbedanyhfnjsdu";
$mail->From = "handmarketapp@gmail.com";
$mail -> FromName = "Hand Market app";
$mail -> AddAddress ("handmarketapp@gmail.com");

$mail->From = "handmarketapp@gmail.com";
	$mail->FromName = "Hand Market App";
	$mail->Subject = "Nueva contraseña del cliente de Hand Market app";
	$mail->AltBody = "mensaje";
	$mail->MsgHTML("<font size='3'> Hola, $nomUsu </font> <br/> <br/>
					Su nueva contraseña es: $sendClave");

$mail->AddAddress($checkEmail, "Cliente Hand Market");
$mail->IsHTML(false);
$mail->Send();

echo 1;

}
mysql_close();

?>