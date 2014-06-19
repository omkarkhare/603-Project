<?php

require_once('connection.php');
session_start();

$_SESSION['add_tablet_name'] = $_POST['t_name'];
//echo $_SESSION['add_tablet_name'];
$_SESSION['add_tablet_eid'] = $_POST['t_eid'];
//echo $_SESSION['add_tablet_eid'];
$_SESSION['add_tablet_specs'] = $_POST['t_specs'];
//echo $_SESSION['add_tablet_specs'];


$selectquery = mysql_query("select * from tablet where EID= \"".$_SESSION['add_tablet_eid']."\"");
$no = mysql_num_rows($selectquery);



if($no==1 )
{
	//echo "EID ALREADY EXISTS !!!!!!!!!!!";
	
	$_SESSION['add_tablet_flag']= true;
     
    header ('Location: admin.php'); 
}
	
	
	
	else { $insertquery = mysql_query("insert into tablet (tablet_name,EID,specs,item_id) values (\"".$_SESSION['add_tablet_name']."\",\"".$_SESSION['add_tablet_eid']."\", \"".$_SESSION['add_tablet_specs']."\",2)");
echo "value entered";
$_SESSION['admin_item_name'] = 'name';  
header ('Location: display_admin.php');
	}



?>