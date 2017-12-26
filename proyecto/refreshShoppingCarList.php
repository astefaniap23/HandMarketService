 <?php

		include("conexion.php");	


	$id_productCheck = $_POST['id_productCheck'];
	

		$phpArray = json_decode($id_productCheck,TRUE);
		//print_r($phpArray);
		foreach ($phpArray as $value) {     
			$eliminarCuenta = mysql_query("DELETE FROM shoppingcar WHERE id_code ='$value' ");        
			$value;
			echo 3;
		}

	mysql_close();
?>