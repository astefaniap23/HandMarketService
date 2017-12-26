<?php
/*include("conexion.php");	


		$query = "SELECT p.nombre, p.precio FROM productos p, factura_historial fh
						WHERE fh.id_factura=17 and fh.id_product=p.id
								

						";
				$facturaDetalles = mysql_query($query) or die (mysql_error());		

				$rows = array();
			while($r = mysql_fetch_assoc($facturaDetalles)){ 
				$rows[] = $r;
			}
			
			echo json_encode($rows);
			
	*/		//------------------------------------------------------------------

			
			include("conexion.php");	
			
					
				
				$query = "SELECT p.nombre, p.precio FROM factura_historial fh, productos p ";
				$sql = "";
				
				if(isset($_GET['id']))
			{
				$id = $_GET['id'];
				
				$sql  = " WHERE fh.id_factura=$id and fh.id_product=p.id";
			}
			if(isset($_POST['id']))
			{
				$id = $_POST['id'];
				
				$sql  = " WHERE fh.id_factura=$id and fh.id_product=p.id";
			}
					
				
		$resultado = mysql_query ($query.$sql) ;	

						
						
		$rows = array();
		while($r = mysql_fetch_assoc($resultado)){ //Devuelve un array (cadenas) para los campos = nombre,apellido ..camposN
			$rows[] = $r;
		}

		echo json_encode($rows);

		mysql_close();
?>


