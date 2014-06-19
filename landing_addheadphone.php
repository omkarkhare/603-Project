<?php

require_once('connection.php');
session_start();

$_SESSION['add_headphone_name'] = $_POST['h_name'];
echo $_SESSION['add_headphone_name'];
$_SESSION['add_headphone_eid'] = $_POST['h_eid'];
echo $_SESSION['add_headphone_eid'];
$_SESSION['add_headphone_specs'] = $_POST['h_specs'];
echo $_SESSION['add_headphone_specs'];
$selectquery = mysql_query("select * from headphone where EID= \"".$_SESSION['add_headphone_eid']."\"");
$no = mysql_num_rows($selectquery);



if($no==1 )
{
	//echo "EID ALREADY EXISTS !!!!!!!!!!!";
	
	$_SESSION['add_headphone_flag']= true;
     
    header ('Location: admin.php'); 
}
	
	
	
	else { $insertquery = mysql_query("insert into headphone (headphone_name,EID,specs,item_id) values (\"".$_SESSION['add_headphone_name']."\",\"".$_SESSION['add_headphone_eid']."\", \"".$_SESSION['add_headphone_specs']."\",3)");
echo "value entered";
$_SESSION['admin_item_name'] = 'name';  
header ('Location: display_admin.php');
	}



?>