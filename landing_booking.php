<?php
session_start();
require_once('connection.php');
//echo $_SESSION['UID']; // UID
//echo "\n";
$bt_no = rand(); // bt_number
$_SESSION['BOOKING_NUMBER']=$bt_no;
//echo "\n";
$todays_date = $_POST['todays_date']; // b_date
$_SESSION['TODAY']=$todays_date ;
//echo $todays_date;
//echo "\n";
$selected_slot = $_SESSION['selected_slot']; // selected time slot : slot_id
//echo $selected_slot;
//echo "\n";

$date = $_SESSION['selected_date']; // selected date : d_date
$_SESSION['DOB']=$date;
//echo $date;
//echo "\n";
$item_id = $_SESSION['item'];  // item_id
//echo $item_id;
//echo "\n";

$option = $_POST['Radio_Select']; //option from previous page
//echo $option;
//echo "\n";
$get_eid_query = mysql_query("select name,EID,spec from temp_item where indx = \"".$option."\"")

or die($get_eid_query."<br/><br/>".mysql_error()); // FOR BETTER ERROR HANDLING



while($row = mysql_fetch_array($get_eid_query))
{
	$EID = $row['EID'];
	$SPEC = $row['spec'];
	$ITEM_NAME = $row['name'];
} 
//echo $EID;  // SELECTED EID
//echo "\n";
$_SESSION['spec'] = $SPEC;
$_SESSION['ITEM_NAME']= $ITEM_NAME;
$insert_into_booking = mysql_query("insert into booking_table(bt_no, uid,EID,slot_id,bt_date,d_date,item_id) VALUES
( \"".$bt_no."\" , \"".$_SESSION['UID']."\", \"".$EID."\",\"".$selected_slot."\", \"".$todays_date."\",\"".$date."\",\"".$item_id."\"  )") 

or die($get_eid_query."<br/><br/>".mysql_error());

header( 'Location: receipt.php' );



?>