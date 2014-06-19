function calculatedate ()
{
function setoffset (day)  // 
{
  var offset;
  switch (day)
  {
    case 0: offset = 5; break;
    case 1: offset=  4; break;
    case 2: offset = 5; break;
    case 3 : offset = 6; break;
    case 4 : offset = 6; break;
    case 5 : offset = 6; break;
    case 6:  offset = 6; break;
  }
  return offset;
	
}

function adjustweekend (myDate)
{
	if (/sat/i.test(myDate)) 
{
    myDate.setDate(myDate.getDate() + 2);
    
} 
  else if (/sun/i.test(myDate)) 
  {
    myDate.setDate(myDate.getDate() + 1);
}  
	
}

var myDate = new Date();
var day = myDate.getDay();
var offset = setoffset(day);
  // IF START DATE IS A WEEKEND ADJUST IT TO A MONDAY

var startDate = new Date (myDate);
//alert("start date:"+startDate); 
   
  
myDate.setDate(myDate.getDate() + offset); 
    
  // IF END DATE IS A WEEKEND ADJUST IT TO A MONDAY
//alert("After addition of "+offset+" days " +myDate) ;
adjustweekend(myDate);
 
var endDate = new Date (myDate);
//alert("Final : "+endDate);
  
var checkDate = new Date (startDate);
endDate.setDate(endDate.getDate()+1);
var a = Array();
var i=0;
  while ((endDate - checkDate )!=0)
  {
	  var checkday = checkDate.getDay();
	  if (!(checkday===0 || checkday===6)) // Check for saturday or sunday
	  {
	    a[i]= checkDate.getDate()+"/"+(checkDate.getMonth()+1)+"/"+checkDate.getFullYear();
		i++;
		
	  }
	  checkDate.setDate(checkDate.getDate()+1);
  }

return a;
}