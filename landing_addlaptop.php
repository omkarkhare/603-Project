<?php

require_once('connection.php');
session_start();

$_SESSION['add_laptop_name'] = $_POST['l_name'];
echo $_SESSION['add_laptop_name'];
$_SESSION['add_laptop_eid'] = $_POST['l_eid'];
echo $_SESSION['add_laptop_eid'];
$_SESSION['add_laptop_specs'] = $_POST['l_specs'];
echo $_SESSION['add_laptop_specs'];
$selectquery = mysql_query("select * from laptop where EID= \"".$_SESSION['add_laptop_eid']."\"");
$no = mysql_num_rows($selectquery);



if($no==1 )
{
	//echo "EID ALREADY EXISTS !!!!!!!!!!!";
	
	$_SESSION['add_laptop_flag']= true;
     
    header ('Location: admin.php'); 
}
	
	
	
	else { $insertquery = mysql_query("insert into laptop (laptop_name,EID,specs,item_id) values (\"".$_SESSION['add_laptop_name']."\",\"".$_SESSION['add_laptop_eid']."\", \"".$_SESSION['add_laptop_specs']."\",1)");
echo "value entered";
$_SESSION['admin_item_name'] = 'name';  
header ('Location: display_admin.php');
	}



?>