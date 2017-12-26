<?php
include("conexion.php");	
require("class.phpmailer.php");
require("class.smtp.php");

	
	session_start();
	$usuario = $_SESSION['usuario'];
	$nomUsu=null;
	$enviaFactura=null;

	$verificaCorreo = "SELECT correo FROM usuarios WHERE usuario='$usuario' and activo=1";
	$resultado = mysql_query($verificaCorreo) or die (mysql_error());
	
if(mysql_num_rows($resultado)>0) {	
	
		$envioUser = "UPDATE facturacompra SET envio=(SELECT direccion FROM usuarios WHERE usuario='$usuario' and activo=1)
						WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1";
	
		$ejecutar = mysql_query($envioUser) or die (mysql_error());
		///////////////////////////////////
		
		$query9 = "INSERT INTO factura_empresa(id,id_user,total,total_productos,envio) 
						VALUES ((SELECT id FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1),
								(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1),
								(SELECT total FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1),
								(SELECT total_productos FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1),
								(SELECT direccion FROM usuarios WHERE usuario='$usuario' and activo=1))";				
		$facturaEmpresa = mysql_query($query9) or die (mysql_error());
		
		
		
		
		////////////////////////// query que inserta en la tabla historial_compra los mismos productos(id) de carrito
		
		$query6 = "SELECT id_product FROM shoppingcar WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)";
		$historial = mysql_query($query6) or die (mysql_error());		
		
		$rowsH = array();
		while($rH = mysql_fetch_assoc($historial)){ 	
				$rowsH[] = $rH;	
				}
		$jsonH = json_encode($rowsH);
		$objH = json_decode($jsonH, true);
		//var_dump($objH);
		foreach ($objH as $keyH => $valueIdProductHistorial) { 
			foreach ($valueIdProductHistorial as $kH => $vH) { 
				
				$idProductHistorial ="$vH";
			//echo $nomUsu;
			$queryH = "INSERT INTO factura_historial(id_factura,id_user,id_product) VALUES ((SELECT id FROM facturacompra WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1) and activo=1),
																	 (SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1), '$idProductHistorial')";	
				$ejecutarHistorial = mysql_query($queryH) or die (mysql_error());
			}	
		
		
		}
		
		
		
		
		/////////////////////////
		$facturaTotal = "SELECT p.nombre,p.precio FROM shoppingcar sh, productos p WHERE sh.id_product=p.id and sh.id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)";
		$ejecutarFactura = mysql_query($facturaTotal) or die (mysql_error());
		///////////////////////////////
		$precioTotal = "SELECT total_productos FROM facturacompra WHERE 
						(id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)) and activo=1";
		$precioFactura = mysql_query($precioTotal) or die (mysql_error());
		///////////////////////////////
		$precioTotalDeli = "SELECT total FROM facturacompra WHERE 
						(id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)) and activo=1";
		$precioFacturaDeli = mysql_query($precioTotalDeli) or die (mysql_error());
		
		////////////////
		$query2 =  "SELECT id FROM facturacompra WHERE 
						(id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)) and activo=1";
		$numeroFactura = mysql_query($query2) or die (mysql_error());
		///////////////////////////
		mysql_query("SET NAMES 'utf8'");
		$query3 =  "SELECT nombre, apellido FROM usuarios WHERE usuario='$usuario' and activo=1";
		$nombreUsuario = mysql_query($query3) or die (mysql_error());
		//////////////////////////////
		mysql_query("SET NAMES 'utf8'");
		$query4 =  "SELECT direccion FROM usuarios WHERE usuario='$usuario' and activo=1";
		$direccionDomicilio = mysql_query($query4) or die (mysql_error());
		
		/////////////////////////// Nombre y apellido del usuario
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
			
		echo $nomUsu;
		
		
		/////////////////////////// Numero Factura
		$rowsN = array();
		while($rN = mysql_fetch_assoc($numeroFactura)){ 	
				$rowsN[] = $rN;	
				}
		$jsonN = json_encode($rowsN);		
		$objN = json_decode($jsonN, true);
		$numFactura = $objN[0]["id"];

		////////////////////////// Total productos
		$rowsTP = array();
		while($rTP = mysql_fetch_assoc($precioFactura)){ 	
				$rowsTP[] = $rTP;	
				}
		$jsonTP = json_encode($rowsTP);		
		$objTP = json_decode($jsonTP, true);
		$totalP = $objTP[0]["total_productos"];
		
		
		/////////////////////////// Total delivery
		$rowsT = array();
		while($rT = mysql_fetch_assoc($precioFacturaDeli)){ 	
				$rowsT[] = $rT;	
				}
		$jsonT = json_encode($rowsT);		
		$objT = json_decode($jsonT, true);
		$totalD = $objT[0]["total"];
		
		

		/////////////////////////// Detalles de la compra
		$rowsF = array();
		while($rF = mysql_fetch_assoc($ejecutarFactura)){ 	
				$rowsF[] = $rF;	
				}
		$jsonF = json_encode($rowsF);
		$objF = json_decode($jsonF, true);

		foreach ($objF as $key => $value) { 
			$enviaFactura .= "-> ";
			foreach ($value as $k => $v) { 
				//echo "- $v "; 
				$enviaFactura .=" - $v ";
				//echo $enviaFactura;
			}		
			$enviaFactura .= "Bs. <br/>";
			//echo $espacio;
		}		
		//echo $enviaFactura;

		/////////////////////////// Correo destino
		
		$rows = array();
			while($r = mysql_fetch_assoc($resultado)){ 
					$rows[] = $r;	
					}
		
		$json = json_encode($rows);		
		$obj = json_decode($json, true);
		$cuentaEmail = $obj[0]["correo"];
		/////////////////////////////////////////
		
		/////////////////////////// Direccion del cliente para el envio a domicilio
		$rowsD = array();
		while($rD = mysql_fetch_assoc($direccionDomicilio)){ 	
				$rowsD[] = $rD;	
				}
		$jsonD = json_encode($rowsD);		
		$objD = json_decode($jsonD, true);
		$dirUsuario = $objD[0]["direccion"];

	


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

$mail->From = "sale@handmarket.info";
	$mail->FromName = "Hand Market App";
	$mail->Subject = "Detalles de su compra";
	$mail->AltBody = "mensaje";
	$mail->MsgHTML("<font size='3'> Hola, $nomUsu </font> <br/> 
					Gracias por su compra. Envío: Domicilio <br/> 
					Direccion de envío: $dirUsuario 	<br/>
					<i> Factura N° $numFactura , </i> <br/> <br/> 
					$enviaFactura
					<br/> <br/>
					Sub-total: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  $totalP Bs.  <br/>
					Costo de envio: &nbsp;&nbsp;  70 Bs. <br/>
				 <b>TOTAL: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $totalD Bs.</b>
	
	");

$mail->AddAddress($cuentaEmail, "Cliente Hand Market");
$mail->IsHTML(false);
$mail->Send();

$desactivar = mysql_query ("UPDATE facturacompra SET activo=0 
						WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)");
					
$eliminarCarrito = mysql_query ("DELETE FROM shoppingcar WHERE id_user=(SELECT id FROM usuarios WHERE usuario='$usuario' and activo=1)");

echo 1;

}
mysql_close();
?>