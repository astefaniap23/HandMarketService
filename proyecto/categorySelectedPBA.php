<?php
include("conexion.php");	
 
	$id_category = $_POST['id_category'];
	$id_name= $_POST['id_name'];


    // mysql inserting a new row
	
    $nuevoDato = mysql_query("INSERT INTO category_selected(id_category, id_name)
							 VALUES('$id_category','$id_name')");
	

	
	if($nuevoDato){
        // successfully inserted into database
        echo 3;
    }
mysql_close();
?>