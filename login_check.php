<?php

//Start session
session_start();
 
//Include database connection details
require_once('connection.php');
 
//Array to store validation errors
$errmsg_arr = array();
 
//Validation error flag
$errflag = false;
 
// Function to clean values recieved from the form Prevents SQL injection
	function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return mysql_real_escape_string($str);
	}
 
//Clean the POST variables
	$user = clean($_POST['user']);
	$p = clean($_POST['pass']);

// User name and input validations

    if($user == '') {
		$errmsg_arr[] = 'User Id Not Entered';
		$errflag = true;
	}
	if($p == '') {
		$errmsg_arr[] = 'Password Not Entered';
		$errflag = true;
	}
// What happens after the validations
if($errflag) {
		$_SESSION['ERRMSG_ARR'] = $errmsg_arr; // Save the error message in the session variable
		session_write_close(); //  End the session
		header("location: index.php"); // redirect to login page
		exit();
	}

$hashpass = md5($p);
$_SESSION['UID'] = $user;

$result = mysql_query("select * from user where uid = \"" . $user . "\"  AND pass = \"".$hashpass . "\"  ");

//Check whether the query gives any result
	if($result)
	{
		// If Login successful
		if(mysql_num_rows($result) > 0) {
			session_regenerate_id();
			$member = mysql_fetch_assoc($result);
			$_SESSION['SESS_MEMBER_ID'] = $member['mem_id'];
			$_SESSION['SESS_FIRST_NAME'] = $member['f_name'];
			$_SESSION['SESS_LAST_NAME'] = $member['l_name'];
			$_SESSION['EMAIL'] = $member['email'];
			
			$_SESSION['SESS_A_FLAG'] = $member['a_flag'];
			$_SESSION['flag_tablet'] = false;
			$_SESSION['flag_laptop'] = false;
			if ($_SESSION['SESS_A_FLAG'] == 0 )
			{ 
			
			session_write_close();
			header("location: home2.php");
			exit();
			}
			else
			{
			session_write_close();
			header("location: admin.php");
			exit();
			}
		}
		else
		{
			//Login failed
			$errmsg_arr[] = 'Incorrect Username or Password';
			$errflag = true;
			if($errflag) {
				$_SESSION['ERRMSG_ARR'] = $errmsg_arr;
				session_write_close();
				header("location: index.php");
				exit();
			}
		}		
		
	}
	else
	{
		die("Query failed");
	}


?>

