<?php
	require_once('auth.php');
	unset($_SESSION['item']);
?>

<html>
<head>
<link rel="stylesheet" href="http://www.umd.edu/wrapper/wrapper/2013/wrapper.css" />
   
    <title>Welcome Administrator</title>

<style type="text/css">
 body { font-size: 80%; font-family: 'Lucida Grande', Verdana, Arial, Sans-Serif; }
 ul#tabs { list-style-type: none; margin: 30px 0 0 0; padding: 0 0 0.3em 0; color: }
 ul#tabs li { display: inline; }
ul#tabs li a {  color:#cc0000; background-color: #CC9999; border: 1px solid #c9c3ba; border-bottom: none; padding: 0.3em; text-decoration: none; }
ul#tabs li a:hover { background-color: #F3DA83; }
ul#tabs li a.selected { color: #ff0000; background-color: #f1f0ee; font-weight: bold; padding: 0.7em 0.3em 0.38em 0.3em; }
div.tabContent { border: 1px solid #c9c3ba; padding: 0.5em; background-color: #f1f0ee; }
div.tabContent.hide { display: none; }
</style>
<script type="text/javascript" src="calcdate.js"></script>
<script type="text/javascript">

    var tabLinks = new Array();
    var contentDivs = new Array();

    function init() {

      // Grab the tab links and content divs from the page
      var tabListItems = document.getElementById('tabs').childNodes;
      for ( var i = 0; i < tabListItems.length; i++ ) {
        if ( tabListItems[i].nodeName == "LI" ) {
          var tabLink = getFirstChildWithTagName( tabListItems[i], 'A' );
          var id = getHash( tabLink.getAttribute('href') );
          tabLinks[id] = tabLink;
          contentDivs[id] = document.getElementById( id );
        }
      }

      // Assign onclick events to the tab links, and
      // highlight the first tab
      var i = 0;

      for ( var id in tabLinks ) {
        tabLinks[id].onclick = showTab;
        tabLinks[id].onfocus = function() { this.blur() };
        if ( i == 0 ) tabLinks[id].className = 'selected';
        i++;
      }

      // Hide all content divs except the first
      var i = 0;

      for ( var id in contentDivs ) {
        if ( i != 0 ) contentDivs[id].className = 'tabContent hide';
        i++;
      }
    }

    function showTab() {
      var selectedId = getHash( this.getAttribute('href') );

      // Highlight the selected tab, and dim all others.
      // Also show the selected content div, and hide all others.
      for ( var id in contentDivs ) {
        if ( id == selectedId ) {
          tabLinks[id].className = 'selected';
          contentDivs[id].className = 'tabContent';
        } else {
          tabLinks[id].className = '';
          contentDivs[id].className = 'tabContent hide';
        }
      }

      // Stop the browser following the link
      return false;
    }

    function getFirstChildWithTagName( element, tagName ) {
      for ( var i = 0; i < element.childNodes.length; i++ ) {
        if ( element.childNodes[i].nodeName == tagName ) return element.childNodes[i];
      }
    }

    function getHash( url ) {
      var hashPos = url.lastIndexOf ( '#' );
      return url.substring( hashPos + 1 );
    }

    //]]>
    </script>


</head>
<body onLoad="init()">
<div align="right" style="color:#FFFFFF" style="font-size:10px">Logged in as : <?php echo $_SESSION['UID'];?>  <br>
      <b><a href="index.php" style="color:#FFFFFF"> Signout </a>
      </div>
  <div id="wrapper">
    <div id="header">
      
      <br>


      
      <a href="https://www.umd.edu/" id="umd-logo"><img src="http://www.umd.edu/wrapper/wrapper/2013/images/umd-logo.png" alt="University of Maryland" /></a>
    </div>
    <div align="center"  >
        <font color="#FFFFFF" size="+6" face="Times New Roman, Times, serif">Welcome to Electronic Item Booking Site </font>
        
    </div>
<br>

<ul id="tabs">

      <li><a href="#laptop">Laptop</a></li>
      <li><a href="#tablet">Tablet</a></li>
      <li><a href="#headphone">Headphone</a></li>
      <li><a href="#ADD LAPTOP">ADD LAPTOP </a></li>
      <li><a href="#ADD TABLET">ADD TABLET </a></li>
      <li><a href="#ADD HEADPHONE">ADD HEADPHONE </a></li>
    </ul>

    <div class="tabContent" id="laptop">
      <h2 style="color:#FF0000">Laptop Reservation</h2>
      <div>
                 <form name="laptop" method="post" action="landing_laptop.php" onSubmit="return validate_laptop()">
                     <input type="hidden" name="selected_date_laptop" id="selected_date_laptop" value="" />
                     <label> Select Date : </label>
                     <select id="datelist_laptop" size="5"onchange="document.getElementById('selected_date_laptop').value=this.options[this.selectedIndex].text" >
                     
                     </select>
                     <?php 
					 //$_SESSION['item'] = 1;
					 //
					 //echo $_SESSION['item_name']; 
					 ?>
  
                   <script>
					 
                     var dates = calculatedate();
					 var sel = document.getElementById('datelist_laptop');
					 for (var i=0 ; i<dates.length;i++)
					 {
						 
                           var opt = document.createElement('option');
                           opt.innerHTML = dates[i];
                           opt.value = dates[i];
                           sel.appendChild(opt);
					 }
		
                      </SCRIPT>
                      
                      <div id="time" style="visibility:visible">

<table width="200">
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_laptop" value="1" id="RadioGroup1_0">
      8 AM to 12 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_laptop" value="2" id="RadioGroup1_1">
      12 PM to 4 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_laptop" value="3" id="RadioGroup1_2">
      4 PM to 8 PM</label></td>
  </tr>
</table>

</div>

<input type="submit" value="Next>>" id="next_laptop" style="visibility:visible">
<script>
function validate_laptop() 
{
	
	var date=document.forms["laptop"]["selected_date_laptop"].value;
	var x = document.getElementsByName('RadioGroup1_laptop');
	var slot="";
        for(var k=0;k<x.length;k++)
          if(x[k].checked){
            slot=x[k].value;
          }
		  if ( ((slot==="") || (slot===null)) || ((date ==="") || (date === null)))
		  {
			  var errmsg = document.getElementById('errmsg');
			  errmsg.innerHTML="Please Select Date and Time";
			  return false;
		  }
	
	
};
</script>

  <?php
					

if(!isset($_SESSION)){
    session_start();
}

if(isset($_SESSION['flag_laptop']) && $_SESSION['flag_laptop']) {
	

	echo '<script type="text/javascript">';
	echo 'alert("Selected Time Slot and Date not available")';
	echo '</script>';

  unset($_SESSION['flag_laptop']);
  }
?>

                  
</form>
      </div>
    </div>

    <div class="tabContent" id="tablet">
      <h2 style="color:#FF0000">Tablet Reservation</h2>
      <div>
       
         <form name="tablet" method="post" action="landing_tablet.php" onSubmit="return validate_tablet()">
                     <input type="hidden" name="selected_date_tablet" id="selected_date_tablet" value="" />
                     <label> Select Date : </label>
                     <select id="datelist_tablet" size="5"onchange="document.getElementById('selected_date_tablet').value=this.options[this.selectedIndex].text" >
                     
                     </select>
                   
                   <script>
					 
                     var dates = calculatedate();
					 var sel = document.getElementById('datelist_tablet');
					 for (var i=0 ; i<dates.length;i++)
					 {
						 
                           var opt = document.createElement('option');
                           opt.innerHTML = dates[i];
                           opt.value = dates[i];
                           sel.appendChild(opt);
					 }
		
                      </SCRIPT>
                      
                      <div id="time" style="visibility:visible">

<table width="200">
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_tablet" value="1" id="RadioGroup1_0">
      8 AM to 12 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_tablet" value="2" id="RadioGroup1_1">
      12 PM to 4 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_tablet" value="3" id="RadioGroup1_2">
      4 PM to 8 PM</label></td>
  </tr>
</table>

</div>

<input type="submit" value="Next>>" id="next_tablet" style="visibility:visible">

<script>
function validate_tablet() {
	
	var date=document.forms["tablet"]["selected_date_tablet"].value;
	var x = document.getElementsByName('RadioGroup1_tablet');
	var slot="";
        for(var k=0;k<x.length;k++)
          if(x[k].checked){
            slot=x[k].value;
          }
		  if ( ((slot==="") || (slot===null)) || ((date ==="") || (date === null)))
		  {
			  var errmsg = document.getElementById('errmsg');
			  errmsg.innerHTML="Please Select Date and Time";
			  return false;
		  }
	
	
};
</script>

  <?php
					

if(!isset($_SESSION)){
    session_start();
}

if(isset($_SESSION['flag_tablet']) && $_SESSION['flag_tablet']) {
	
	echo '<script type="text/javascript">';
	echo 'alert("Selected Time Slot and Date not available")';
	echo '</script>';
	
    

  unset($_SESSION['flag_tablet']);
  }
?>  

                  
</form>
      
             
      </div>
    </div>

    <div class="tabContent" id="headphone">
      <h2 style="color:#FF0000">Headphone Reservation</h2>
      <div>
        <form name="headphone" method="post" action="landing_headphone.php" onSubmit="return validate_headphone()">
                     <input type="hidden" name="selected_date_headphone" id="selected_date_headphone" value="" />
                     <label> Select Date : </label>
                     <select id="datelist_headphone" size="5"onchange="document.getElementById('selected_date_headphone').value=this.options[this.selectedIndex].text" >
                     
                     </select>
                    
  
                   <script>
					 
                     var dates = calculatedate();
					 var sel = document.getElementById('datelist_headphone');
					 for (var i=0 ; i<dates.length;i++)
					 {
						 
                           var opt = document.createElement('option');
                           opt.innerHTML = dates[i];
                           opt.value = dates[i];
                           sel.appendChild(opt);
					 }
		
                      </SCRIPT>
                      
                      <div id="time" style="visibility:visible">

<table width="200">
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_headphone" value="1" id="RadioGroup1_0">
      8 AM to 12 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_headphone" value="2" id="RadioGroup1_1">
      12 PM to 4 PM</label></td>
  </tr>
  <tr>
    <td><label>
      <input type="radio" name="RadioGroup1_headphone" value="3" id="RadioGroup1_2">
      4 PM to 8 PM</label></td>
  </tr>
</table>

</div>

<input type="submit" value="Next>>" id="next_headphone" >

<script>
function validate_headphone() {
	
	var date=document.forms["headphone"]["selected_date_headphone"].value;
	var x = document.getElementsByName('RadioGroup1_headphone');
	var slot="";
        for(var k=0;k<x.length;k++)
          if(x[k].checked){
            slot=x[k].value;
          }
		  if ( ((slot==="") || (slot===null)) || ((date ==="") || (date === null)))
		  {
			  var errmsg = document.getElementById('errmsg');
			  errmsg.innerHTML="Please Select Date and Time";
			  return false;
		  }
	
	
};
</script>


  <?php
					

if(!isset($_SESSION)){
    session_start();
}

if(isset($_SESSION['flag_headphone']) && $_SESSION['flag_headphone']) {
	echo '<script type="text/javascript">';
	echo 'alert("Selected Time Slot and Date not available")';
	echo '</script>';

  unset($_SESSION['flag_headphone']);
  }
?>  

                  
</form>
      </div>
    </div>
    
  <div class="tab" id="ADD LAPTOP">
      <h2 style="color:#FF0000">ADD LAPTOP</h2>
      <div>
        <form name="add_laptop" method="post" action="landing_addlaptop.php" onSubmit="return validate_addlaptop()" >
        <table width="550" height="142" border="0">
  <tr>
    <td width="171"><strong>Laptop Name :</strong></td>
    <td width="346"><input type="text" name = "l_name" id="l_name"></td>
  </tr>
  <tr>
    <td><strong>Laptop EID :</strong></td>
    <td><input type="text" name = "l_eid" id="l_eid"></br></td>
  </tr>
  <tr>
    <td><strong>Laptop Specification :</strong></td>
    <td><textarea id="l_specs" name="l_specs"></textarea></td>
  </tr>
</table>
<input type="Submit" name="Add" value="Add" >
<script>
function validate_addlaptop()
{ var a= document.getElementById('l_name');
var b = document.getElementById('l_eid');
var c = document.getElementById('l_specs');
var h = a.value;
var f = b.value;
var g = c.value ;
if(
(h===""|| h===null) || (f==="" || f===null) || (g==="" || g===null)
)
{ 
var err = document.getElementById('errmsg');
err.innerHTML = "Enter all the details";
return false ;
	}
	}
</script>
 
 <?php
 if(!isset($_SESSION))
 {
	 session_start();
 }
if (isset($_SESSION['add_laptop_flag']) && $_SESSION['add_laptop_flag'])
	 {
		
	echo '<script type="text/javascript">';
	echo 'alert("Laptop Already Exists")';
	echo '</script>';
  unset($_SESSION['add_laptop_flag']); 
  }
?>                  
                      
                     
                 
</form>
      </div>
    </div>
    
<div class="tab" id="ADD TABLET">
      <h2 style="color:#FF0000">ADD TABLET</h2>
      <div>
        <form name="add_tablet" method="post" action="landing_addtablet.php" onSubmit="return validate_addtablet()" >
        <table width="550" height="142" border="0">
  <tr>
    <td width="171"><strong>Tablet Name :</strong></td>
    <td width="346"><input type="text" name = "t_name" id="t_name"></td>
  </tr>
  <tr>
    <td><strong>Tablet EID :</strong></td>
    <td><input type="text" name = "t_eid" id="t_eid"></br></td>
  </tr>
  <tr>
    <td><strong>Tablet Specification :</strong></td>
    <td><textarea id="t_specs" name="t_specs"></textarea></td>
  </tr>
</table>
<input type="Submit" name="Add" value="Add" >
<script>
function validate_addtablet()
{ var a= document.getElementById('t_name');
var b = document.getElementById('t_eid');
var c = document.getElementById('t_specs');
var h = a.value;
var f = b.value;
var g = c.value ;
if(
(h===""|| h===null) || (f==="" || f===null) || (g==="" || g===null)
)
{ 
var err = document.getElementById('errmsg');
err.innerHTML = "Enter all the details";
return false ;
	}
	}
</script>
 
 <?php
 if(!isset($_SESSION))
 {
	 session_start();
 }
if (isset($_SESSION['add_tablet_flag']) && $_SESSION['add_tablet_flag'])
	 {
		
	echo '<script type="text/javascript">';
	echo 'alert("Tablet Already Exists")';
	echo '</script>';
  unset($_SESSION['add_tablet_flag']); 
  }
?>                  
                      
                     
                 
</form>
      </div>
    </div>
    
    <div class="tab" id="ADD HEADPHONE">
      <h2 style="color:#FF0000">ADD HEADPHONE</h2>
      <div>
        <form name="add_headphone" method="post" action="landing_addheadphone.php" onSubmit="return validate_addheadphone()" >
        <table width="550" height="142" border="0">
  <tr>
    <td width="171"><strong>Headphone Name :</strong></td>
    <td width="346"><input type="text" name = "h_name" id="h_name"></td>
  </tr>
  <tr>
    <td><strong>Headphone EID :</strong></td>
    <td><input type="text" name = "h_eid" id="h_eid"></br></td>
  </tr>
  <tr>
    <td><strong>Headphone Specification :</strong></td>
    <td><textarea id="h_specs" name="h_specs"></textarea></td>
  </tr>
</table>
<input type="Submit" name="Add" value="Add" >
<script>
function validate_addheadphone()
{ var a= document.getElementById('h_name');
var b = document.getElementById('h_eid');
var c = document.getElementById('h_specs');
var h = a.value;
var f = b.value;
var g = c.value ;
if(
(h===""|| h===null) || (f==="" || f===null) || (g==="" || g===null)
)
{ 
var err = document.getElementById('errmsg');
err.innerHTML = "Enter all the details";
return false ;
	}
	}
</script>
 
 <?php
 if(!isset($_SESSION))
 {
	 session_start();
 }
if (isset($_SESSION['add_headphone_flag']) && $_SESSION['add_headphone_flag'])
	 {
		
	echo '<script type="text/javascript">';
	echo 'alert("Headphone Already Exists")';
	echo '</script>';
  unset($_SESSION['add_headphone_flag']); 
  }
?>                  
                      
                     
                 
</form>
      </div>
    </div>
    <div align="center">
 <font color="#FF0000"><b>
 <label id="errmsg" name="errmsg"> </label> </div>
</div>
</body>
</html>
