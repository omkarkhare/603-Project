<?php
	//Start session
	session_start();	
	//Unset the variables stored in session
	unset($_SESSION['SESS_MEMBER_ID']);
	unset($_SESSION['SESS_FIRST_NAME']);
	unset($_SESSION['SESS_LAST_NAME']);
	$_SESSION['start'] = 0;
?>


<html lang="en" dir="ltr">
  <head>
        <link rel="stylesheet" href="http://www.umd.edu/wrapper/wrapper/2013/wrapper.css" />
    
    <title>University of Maryland Electronic Items Booking Site</title>
  </head>

  <body>
  <div id="wrapper">
    <div id="header">
      
      <br>


      
      <a href="https://www.umd.edu/" id="umd-logo"><img src="http://www.umd.edu/wrapper/wrapper/2013/images/umd-logo.png" alt="University of Maryland" /></a>
    </div>
    <div align="center"  >
        <font color="#FFFFFF" size="+6" face="Times New Roman, Times, serif">Welcome to Electronic Item Booking Site </font>
        
    </div>
<br>
 <div >
<form action="login_check.php" method="post">

<table align="center" style="color: white" >
<tr>
     <td> Login Id:</td>
     <td> <input type="text" name="user" id="user" ></td>
</tr>
<tr>
     <td>Password: </td>
     <td> <input type="password" name="pass" id="pass"></td> 
</tr>

<tr colspan="2">
      <td> </td> <td> <input value="Login" type="submit" class="button" />
      <input type="button" value="Reset" onClick="re();"></td>
</tr>

</table>

<script>
function re()
{
var u = document.getElementById('user');

u.value="";
};
</script>
<font color="#FFFFFF">

<?php
//SCRIPT TO DISPLAY THE ERRORS IF INVALID CREDENTIALS ARE ENTERED
if( isset($_SESSION['ERRMSG_ARR']) && is_array($_SESSION['ERRMSG_ARR']) && count($_SESSION['ERRMSG_ARR']) >0 ) {
			echo '<ul class="err">';
			foreach($_SESSION['ERRMSG_ARR'] as $msg) {
				echo '<li>',$msg,'</li>'; 
				}
			echo '</ul>';
			unset($_SESSION['ERRMSG_ARR']);
			}
		?>


</font>
</form>

</div>

   
  </div>
 
  
    </body>
</html>