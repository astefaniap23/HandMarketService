<?php
	
		// iniciando la base de datos - Servidor Gratuito
		//mysql_connect("sql310.eshost.es","eshos_13583159","123456");
		//mysql_select_db("eshos_13583159_hand_market"); // nombre de la base de datos

		//local
		mysql_connect("localhost","root","2310");
		mysql_select_db("hand_market")OR DIE ("Error: No es posible establecer la conexión"); // nombre de la base de datos
		
		//servidor cpanel
	//	mysql_connect("localhost","handmark_produc","hm123456");
//mysql_select_db("handmark_production")OR DIE ("Error: No es posible establecer la conexión"); // nombre de la base de datos

?>