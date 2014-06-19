 <?PHP
 session_start();
 ?>
 <html lang="en" dir="ltr">
  <head>
        <link rel="stylesheet" href="http://www.umd.edu/wrapper/wrapper/2013/wrapper.css" />
    
    <title>University of Maryland Electronic Items Booking Site</title>
  </head>
  <body>
   <div align="right" style="color:#FFFFFF" style="font-size:10px">Logged in as : <?php echo $_SESSION['UID'];?>  <br>
      <b><a href="index.php" style="color:#FFFFFF"> Signout </a>
      </div>
  <div id="wrapper">
    <div id="header">
      
      <br>
      
      <a href="https://www.umd.edu/" id="umd-logo"><img src="http://www.umd.edu/wrapper/wrapper/2013/images/umd-logo.png" alt="University of Maryland" /></a>
    </div>
    <div align="center"  >
        <font color="#FFFFFF" size="+6" face="Times New Roman, Times, serif">ALL THE ELECTRONIC ITEMS</font>
        
    </div>
<br>
 <?php
require_once('connection.php');
$result = mysql_query("SELECT * 
FROM laptop
UNION SELECT * 
FROM headphone
UNION SELECT * 
FROM tablet ");
if($result === FALSE) {
    die(mysql_error()); // TODO: better error handling

}

echo "<table border=\"1\" align=\"center\" style=\"color:black\" >";
echo "<tr style=color:grey><th>Name</th><th>EID</th><th>Specifications</th><th>Item Id</th></tr>";

while($row = mysql_fetch_array($result)) {
	if ($row[3]==1) {
		$color= '#B0E57C';
		}if ($row[3]==2) {
		$color= '#FFAEAE';
		}  if ($row[3]==3) {
		$color= '#FFEC94';
		}  
  echo "<tr bgcolor=$color>";
  
  echo "<td>" . $row[0] . "</td><td>" . $row[1] . "</td><td>" . $row[2] . "<td>" .$row[3] ."</td>";
  echo "</tr>";

}
echo "<table>";
?>
                  
  </form>
  
  </div>
   
  </div>
 
  
    </body>
</html>