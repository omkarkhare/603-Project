<?php

	require_once('auth.php');
	
?>
<html>
  <head>
    <link rel="stylesheet" href="http://www.umd.edu/wrapper/wrapper/2013/wrapper.css" />
      <link rel="stylesheet" href="tab.css" />
    
    <title>Welcome</title>
  </head>

  <body >
  <div align="right" style="color:#FFFFFF" style="font-size:10px">Logged in as : <?php echo $_SESSION['UID'];?>  <br>
      <b><a href="index.php" style="color:#FFFFFF"> Signout </a>
      </div>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script> 
        <script type="text/javascript" src="http://benalman.com/code/projects/jquery-hashchange/jquery.ba-hashchange.js"></script> 
        
  <div id="wrapper">
    <div id="header">
    
<br>
      <a href="https://www.umd.edu/" id="umd-logo"><img src="http://www.umd.edu/wrapper/wrapper/2013/images/umd-logo.png" alt="University of Maryland" /></a>
      
      
    </div>
    <div align="center"  >
    
        <font color="#FFFFFF" size="+6" face="Times New Roman, Times, serif">Welcome <?php
echo $_SESSION['SESS_FIRST_NAME'] ; ?> to the
<?php
// PHP converting item name in proper format
if($_SESSION['item_name'] == 'laptop')
  {
	  $displayitem = 'Laptop' ;
  }
if($_SESSION['item_name'] == 'tablet')
  {
	  $displayitem = 'Tablet' ;
  }
  if($_SESSION['item_name'] == 'headphone')
    {
	  $displayitem = 'Headphone' ;
  }
echo $displayitem;
?>



 Reservation Page  </font>
</div>

</div>

<?php
require_once('connection.php');
$item = $_SESSION['item'];
$date = $_SESSION['selected_date'];
$item_name = $_SESSION['item_name'];
$selected_slot = $_SESSION['selected_slot'];

if ($selected_slot==1)
{
$_SESSION['slot_name']= '8 AM to 12 PM';

}
if ($selected_slot==2)
{
$_SESSION['slot_name']= '12 AM to 4 PM';

}
if($selected_slot==3)
{
$_SESSION['slot_name']= '12 PM to 4 PM ';

}
$delete_temp_item = mysql_query ("DELETE FROM temp_item WHERE 1"); // TO DELETE THE TEMPORARY TABLE 
?>

<form name="book" id="book" method="post" action="landing_booking.php" onSubmit="return validate_booking()">

<?php
$result = mysql_query("select * from $item_name where $item_name.EID NOT IN (select EID from booking_table where booking_table.d_date = \"".$date."\" AND booking_table.slot_id = \"" .$selected_slot."\" )");


if($result === FALSE) {
    die(mysql_error()); // TODO: better error handling

}
echo "<div style=\"color:white\">";
echo "$displayitem's available on $date for time slot $_SESSION[slot_name] are:   ";
echo "</div>";
$i=1;
echo "<table border=\"1\" align=\"center\" style=\"color:white\"  >";
echo "<tr bgcolor=#CD5C5C style=color:#FFFFFF><th>Select</th><th>Name</th><th>EID</th><th>Specifications</th></tr>";
while($row = mysql_fetch_array($result)) {
  echo "<tr bgcolor=#FFFF99 style=color:#5F9EA0>";
  
  echo "<td><input type=radio name=Radio_Select value=\"".$i."\"> </td> <td> ". $row[0] ." </td> <td>" .$row[1]. " </td><td>" .$row[2]. " </td> \n";
  
  echo "</tr>";
  $temp_insert = mysql_query("INSERT INTO temp_item VALUES ( \"".$i."\" , \"".$row[0]."\", \"".$row[1]."\", \"".$row[2]."\")") or die($temp_insert."<br/><br/>".mysql_error());;
  $i++;
  
}
echo "<table>";
?> 
<input type="hidden" name="todays_date" value="" id="todays_date">

<script>
// SCRIPT TO CALCULATE TODAYS DATE
var today = new Date();
var year = today.getFullYear();
var month = today.getMonth();
month= month+1;
var day = today.getDate();
 
var fulldate = day+"/"+month+"/"+year;
var date = document.getElementById('todays_date');
date.value=fulldate;

 </script>

<div style="text-align:center" ><input  type="submit" value="Book" name="submit_booking">
<script>
function validate_booking() {
	
	
	var x = document.getElementsByName('Radio_Select');
	var choice="";
        for(var k=0;k<x.length;k++)
          if(x[k].checked){
            choice=x[k].value;
          }
		  if ((choice==="") || (choice===null)) {
			  var errmsg = document.getElementById('errmsg');
			  errmsg.innerHTML="Please select an item!";
			  return false;
		  }
	
	
};
</script>
</form>
<br>
<font color= color="#FF0000"> <b>
<label id="errmsg" name="errmsg"> </label>
</body>
</html>