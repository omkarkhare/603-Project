<?php

require_once('connection.php');
session_start();
unset($_SESSION['item']);

//$_SESSION['selected_date_tablet']=  $_POST['selected_date_tablet']; // store the form specific date in session variable
//$_SESSION['selected_slot_tablet'] = $_POST['RadioGroup1_tablet'];   // store the form specific slot in session variable
$_SESSION['selected_slot'] = $_POST['RadioGroup1_tablet'];  //store form specific slot in session variable which is used in display.php

$_SESSION['selected_date'] = $_POST['selected_date_tablet'];  //store form specific date in session variable which is used in display.php


$_SESSION['item']=2;
$_SESSION['item_name']='tablet';


//echo $selected_slot;


$check_slot = mysql_query("select * from booking_table where d_date = \"" . $_SESSION['selected_date'] . "\"  AND slot_id = \"".$_SESSION['selected_slot'] . "\" AND item_id = \"".$_SESSION['item'] . "\" AND booking_table.EID IN (SELECT EID FROM tablet) ");

$result = mysql_query ("select * from tablet");
$no_of_rows = mysql_num_rows($result);
$a=mysql_num_rows($check_slot);


if (mysql_num_rows($check_slot) == $no_of_rows)
{
	
	$_SESSION['flag_tablet'] = true;
	
	header( 'Location: home2.php' );
	

}
else
{
	
	
	header( 'Location: display.php' );
	
} 

?>