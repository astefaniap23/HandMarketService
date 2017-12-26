 <?php

	include("conexion.php");	

	$id_facturaCheck = $_POST['id_facturaCheck'];
		
	$phpArray = json_decode($id_facturaCheck,TRUE);
		//print_r($phpArray);
		foreach ($phpArray as $value) {     		
		$eliminarFacturaHistorial = mysql_query("DELETE FROM factura_historial WHERE id_factura ='$value' "); 
		$eliminarFacturaCompra = mysql_query("DELETE FROM facturacompra WHERE id ='$value' "); 	
			$value;
			echo 3;
		
		}
	
mysql_close();
?>		