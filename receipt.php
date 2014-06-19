<?php
session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	
	<title>Receipt</title>
	
	<link rel='stylesheet' type='text/css' href='css/style.css' />
	<link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
	

</head>

<body>

	<div id="page-wrap">

		<textarea id="header" readonly="readonly">RECEIPT</textarea>
		
		<div id="identity">
		
            <textarea id="address" readonly="readonly"><?php echo $_SESSION['SESS_FIRST_NAME'] ; echo" ";  echo $_SESSION['SESS_LAST_NAME'] ; echo"\n\n";echo "UID: ".$_SESSION['UID'];?> 

Email: <?php echo $_SESSION['EMAIL']; echo"\n\n";?> Date: <?php echo $_SESSION['TODAY']; ?>  </textarea>

            <div id="logo">

              <img id="image" src="images/logo.jpg" alt="logo" width="200" height="100" />
           
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer">

            <table id="meta">
                <tr>
                    <td class="meta-head">Booking Number</td>
                    <td><textarea readonly="readonly"><?php echo $_SESSION['BOOKING_NUMBER']; ?></textarea></td>
                </tr>
                <tr>

                    <td class="meta-head">Date</td>
                    <td><textarea id="date" readonly="readonly"><?php echo $_SESSION['DOB']; ?></textarea></td>
                </tr>
           

            </table>
		
		</div>
		
		<table id="items">
		
		  <tr>
		      <th>Item Name</th>
		      <th>Specification</th>
		      <th>Type</th>
		      <th>Date</th>
		      <th>Time Slot</th>
		  </tr>
		  
		  <tr class="item-row">
		      <td class="item-name"><textarea readonly="readonly"><?php echo $_SESSION['ITEM_NAME']; ?></textarea></td>
		      <td class="description"><textarea readonly="readonly"><?php echo$_SESSION['spec'];?></textarea></td>
		      <td><textarea class="cost" readonly="readonly"><?php 
			  
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
			  
					  
			  
			  ?></textarea></td>
		      <td><textarea class="qty" readonly="readonly"><?php echo $_SESSION['DOB']; ?></textarea></td>
		      <td><span class="price"><?php
			     echo $_SESSION['slot_name'];
			   ?></span></td>
		  </tr>
		  
		  
		  
		  
		
		</table>
		
		<div id="terms">
		  <h5>Terms</h5>
		  <textarea readonly="readonly">*An Additional charge of $2 per item would be charged for every additonal hour exceeding the reserved time slot*</textarea>
		</div>

	</div>
<?php  
 



$msg = 'A booking for a '  .$_SESSION['item_name'].' with booking number:' .$_SESSION['BOOKING_NUMBER'].' has been made for the date '.$_SESSION['DOB'];

   mail($_SESSION['EMAIL'] , ' Booking Confirmation' , $msg, 'HEADER GOES HERE');
   



?>
   <div style="text-align:center">  <a href="index.php"> <input type="button" value="SIGN OUT"> </a> </div>
</body>

</html>