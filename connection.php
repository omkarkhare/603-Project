<?php
$mysql_hostname = "mysql1.000webhost.com";
$mysql_user = "a1647698_infm603";
$mysql_password = "abc1234";
$mysql_database = "a1647698_infm603";
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");
?>