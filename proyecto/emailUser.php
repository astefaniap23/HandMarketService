<?php
include("conexion.php");	
require("class.phpmailer.php");
require("class.smtp.php");

$checkEmail = $_POST['checkEmail'];
$nomUsu = null;


	$verificaClave = "SELECT usuario FROM usuarios WHERE correo='$checkEmail'";
	$resultado = mysql_query($verificaClave) or die (mysql_error());
	
if(mysql_num_rows($resultado)>0) {	
	
		
	$rows = array();
		while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
			$rows[] = $r;
			
		}
		
		$json = json_encode($rows);
		
		
		
		$obj = json_decode($json, true);
		$sendUser = $obj[0]["usuario"];
	
		
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
	$mail->Subject = "Nombre de usuario recuperada del cliente de Hand Market app";
	$mail->AltBody = "mensaje";
	$mail->MsgHTML("<font size='3'> Hola, $nomUsu </font> <br/> <br/>
					Su nombre de usuario es: $sendUser");

$mail->AddAddress($checkEmail, "Cliente Hand Market");
$mail->IsHTML(false);
$mail->Send();

echo 1;

}
mysql_close();
?>