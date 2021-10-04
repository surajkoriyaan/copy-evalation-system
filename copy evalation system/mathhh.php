<!DOCTYPE html>
<html lang="en">
<head>
<title>Copy correction section</title>
 <style type="text/css">
      #container {
	position: absolute;
	left: 9px;
	top: 9px;
	width: 682px;
	height: 923px;
		    }
      #imageView { border: 1px solid #000; }
    </style>

<meta charset="utf-8">
<link rel="stylesheet" href="file:///I|/Evaluation System/Evaluator/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="file:///I|/Evaluation System/Evaluator/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="file:///I|/Evaluation System/Evaluator/css/style.css" type="text/css" media="all">


<style type="text/css">



.top
{
	display:block;
	position: absolute;
	height: 35px;
	top: 15px;
	left: 29px;
	right: 45px;
	width: 1229px;
	padding-top:1%;
	padding-left: 2%;
	padding-right: 2%;
	background-color: #FF9;
	alignment-adjust: central;
	
	border-top-left-radius: 100px;
	border-top-right-radius:100px;
	border: 3px solid  #C00 ;
}

.lt
{
	display: block;
	position: absolute;
	top: 76px;
	left: 29px;
	right: 1066px;
	width: 237px;
	background-color: #333;
	text-justify: auto;
	alignment-adjust: middle;
	line-height: 25px;
	border: 5px  ridge #FF9900;
}


.rt
{
	display: block;
	position: absolute;
	top: 76px;
	left: 1075px;
	right: 55px;
	width: 231px;
	background-color: #333;
	text-justify: auto;
	alignment-adjust: middle;
	line-height: 25px;
	border: 5px  ridge #FF9900;
}

.mid
{
	display: block;
	position: absolute;
	height: 911px;
	top: 129px;
	left: 286px;
	right: 275px;
	width: 770px;
	background-color: #D2D2D2;
	alignment-adjust: central;
	border: 3px  ridge #003;
	overflow: scroll;
	color: #006;
}
.pg_info
{
	display: block;
	position: absolute;
	height: 37px;
	top: 76px;
	left: 285px;
	right: 275px;
	width: 746px;
	padding-top: 4px;
	padding-left: 1%;
	padding-right: 1%;
	background-color: #FFFFCA;
	box-shadow: #FFF 0px 0px 3px 3px;
	alignment-adjust: central;
	border: 3px  ridge #003;
	font-size: 21px;
}


.put {
	float:none;
	width:45px;
	height:18px;
	padding:5px 0px;
	border:2px solid #CF0;
	border-top-left-radius:9px;
	border-bottom-left-radius:9px;
	border-bottom-right-radius:9px;
	border-top-right-radius:9px;
	background:#333;
	padding:1px 0px;
	margin-top:1px;
	margin-bottom:2px;
	text-align:center;
	box-shadow:#333 0px 0px 3px 3px;
	font:15px Arial, Helvetica, sans-serif;
	color:#CF0;
}

.put1 {
	float:none;
	width:145px;
	height:16px;
	padding:5px 0px;
	border:2px solid #CF0;
	border-top-left-radius:9px;
	border-bottom-left-radius:9px;
	border-bottom-right-radius:9px;
	border-top-right-radius:9px;
	background:#333;
	padding:1px 1px;
	margin-top:1px;
	margin-bottom:2px;
	text-align:center;
	box-shadow:#333 0px 0px 3px 3px;
	font:12px Arial, Helvetica, sans-serif;
	color:#CF0;
}


.inco {
	width:95px;
	height:19px;
	border:2px solid #333;
	border-top-left-radius:7px;
	border-bottom-left-radius:7px;
	border-bottom-right-radius:7px;
	border-top-right-radius:7px;
	background:#EAEAEA;
	box-shadow:#F93 0px 0px 3px 3px;
	margin-right:3px;
	text-align:center;
	font:16px Arial, Helvetica, sans-serif;
	color:#003;
	
}

.ino {
	width:115px;
	height:19px;
	border:2px solid #333;
	border-top-left-radius:7px;
	border-bottom-left-radius:7px;
	border-bottom-right-radius:7px;
	border-top-right-radius:7px;
	background:#EAEAEA;
	box-shadow:#F93 0px 0px 3px 3px;
	margin-right:3px;
	text-align:center;
	font:16px Arial, Helvetica, sans-serif;
	color:#003;
	
}

.tick {
	display:inline-block;
	background:url(file:///I|/Evaluation%20System/Evaluator/images/tick.png) no-repeat;
	font-size:20px ;
	display:inline-block;
	text-align:center;
	text-decoration:none;
	color:#006;
	text-decoration:none ;
	line-height:31px;
	border: 2px solid #FFF;
	border-bottom-right-radius:16px;
	border-bottom-left-radius:16px;
	border-top-left-radius:16px;
	border-top-right-radius:16px;
	box-shadow:#CCC 0px 0px 5px 5px;
}
.cross {
	display:inline-block;
	background:url(file:///I|/Evaluation%20System/Evaluator/images/cross.png) no-repeat;
	font-size:20px ;
	display:inline-block;
	text-align:center;
	text-decoration:none;
	color:#006;
	text-decoration:none ;
	line-height:29px;
	border: 2px solid #FFF;
	border-bottom-right-radius:16px;
	border-bottom-left-radius:16px;
	border-top-left-radius:16px;
	border-top-right-radius:16px;
	box-shadow:#CCC 0px 0px 5px 5px;
}

.coput {
	float:none;
	width:40px;
	height:22px;
	padding:2px 0px;
	border:2px solid #000;
	border-top-left-radius:9px;
	border-bottom-left-radius:9px;
	border-bottom-right-radius:9px;
	border-top-right-radius:9px;
	background:#FF9;
	padding:1px 0px;
	margin-top:1px;
	margin-bottom:2px;
	text-align:center;
	font:19px Arial, Helvetica, sans-serif;
	color:#676767;
}


</style>

<?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$q1="select *from log_info order by  id desc limit 1";
$sm=mysql_query("$q1");
 $rs=mysql_fetch_assoc($sm);

?>

<?php
$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "school_information";
$prefix = "";

$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");

mysql_select_db($mysql_database, $bd) or die("Could not select database");

$sub=$_REQUEST['t1'];
$sch=$_REQUEST['t2'];
$roll=$_REQUEST['t3'];
$result = mysql_query("SELECT * FROM upload_data where (ROLL=$roll and  SUB='$sub' and  SCH_ID=$sch)");

?>

 <script type="text/javascript">
function Calculate()
{

  var a1 = GetFieldValue( "A1" );
  var a2 = GetFieldValue( "A2" );
  var a3 = GetFieldValue( "A3" );
  var a4 = GetFieldValue( "A4" );
  var a5 = GetFieldValue( "A5" );
  var a6 = GetFieldValue( "A6" );
  var a7 = GetFieldValue( "A7" );
  var a8 = GetFieldValue( "A8" );
  var a9 = GetFieldValue( "A9" );
  var a10 = GetFieldValue( "A10" );
  var a11 = GetFieldValue( "A11" );
  var a12 = GetFieldValue( "A12" );
  var a13 = GetFieldValue( "A13" );
  var a14 = GetFieldValue( "A14" );
  var a15 = GetFieldValue( "A15" );
  var a16 = GetFieldValue( "A16" );
  var a17 = GetFieldValue( "A17" );
  var a18 = GetFieldValue( "A18" );
  var a19 = GetFieldValue( "A19" );
  var a20 = GetFieldValue( "A20" );
  var a21 = GetFieldValue( "A21" );
  var a22 = GetFieldValue( "A22" );
  var a23 = GetFieldValue( "A23" );
  var a24 = GetFieldValue( "A24" );
  var a25 = GetFieldValue( "A25" );
  var a26 = GetFieldValue( "A26" );
}
				 
</script>



<script type="text/javascript">


function Calculate()
{
  var a1 = document.getElementById('A1').value;
  var a2 = document.getElementById('A2').value; 
  var a3 = document.getElementById('A3').value; 
  var a4 = document.getElementById('A4').value; 
  var a5 = document.getElementById('A5').value; 
  var a6 = document.getElementById('A6').value; 
  var a7 = document.getElementById('A7').value; 
  var a8 = document.getElementById('A8').value; 
  var a9 = document.getElementById('A9').value; 
  var a10 = document.getElementById('A10').value; 
  var a11 = document.getElementById('A11').value; 
  var a12 = document.getElementById('A12').value; 
  var a13 = document.getElementById('A13').value; 
  var a14 = document.getElementById('A14').value;  
  var a15 = document.getElementById('A15').value; 
  var a16 = document.getElementById('A16').value; 
  var a17 = document.getElementById('A17').value; 
  var a18 = document.getElementById('A18').value; 
  var a19 = document.getElementById('A19').value; 
  var a20 = document.getElementById('A20').value; 
  var a21 = document.getElementById('A21').value; 
  var a22 = document.getElementById('A22').value; 
  var a23 = document.getElementById('A23').value; 
  var a24 = document.getElementById('A24').value; 
  var a25 = document.getElementById('A25').value; 
  var a26 = document.getElementById('A26').value; 
					    
  document.getElementById('A27').value= parseFloat(a1)+ parseFloat(a2)+parseFloat(a3)+parseFloat(a4)+  
										parseFloat(a5)+parseFloat(a6)+ parseFloat(a7)+parseFloat(a8)+
										parseFloat(a9)+ parseFloat(a10)+parseFloat(a11)+parseFloat(a12)+
										parseFloat(a13)+ parseFloat(a14)+parseFloat(a15)+ parseFloat(a16)+
										parseFloat(a17)+ parseFloat(a18)+parseFloat(a19)+parseFloat(a20)+ 
										parseFloat(a21)+parseFloat(a22)+parseFloat(a23)+parseFloat(a24)+
										parseFloat(a25)+parseFloat(a26);
  document.fm2.submit();
}
</script>
<script language = "javascript" type = "text/javascript">
	function validate()
	{
		var  A1 = document.form.fm2.A1.value;
		if(A1 == "")
		{
			alert(" Please enter  number");
			document.form.fm2.A1.focus();
			return false;
		}
			var A1Pattern = new RegExp("[0-1]{1}");
			if(A1Pattern.test(A1) == false)
			{
				alert("Number should be a number and 1 digit");
				document.form.fm2.A1.focus();
				return false;
			}
		
		return true;
		
	}
	</script>

</head>
<body >
         <div class="top">
    <form name="fm1" id="fm1" action="#" method="post">
    				<font size="+4"  color="#990000">
              
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <b> Total No. of Allot Copies </b>
                    &nbsp;<input type="text" class="put" name="tc" id="tc">  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    				<b>No. of Download  Copies &nbsp;</b>
                    <input type="text" class="put" name="dc" id="dc">	
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        
        			<b>No. of Checked Copies  &nbsp;</b>
                    <input type="text" class="put" name="cc" id="cc">
        			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        			<b>No. of Remaining Copies  &nbsp;</b>
        			<input type="text" class="put" name="rc" id="rc">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
      </font>
                         
      </form>
    </div>
    
    

<form name ="fm6" Method="post" Action="" id="fm2"> 
	<div class="lt">
    	<br> 
      
      <center>
	  	 <hr size="5" color="#3399FF">
      	 <font size="+4"  color="#CCFF66">  
         <b>For  Input  Marks Please Click On Required Buttons</b>
         </font>
 		 <hr  size="5"  color="#3399FF">
	  </center>
        <hr  size="3"  color="#333333">
        <center>
        <input type="submit" class="num" value=" 1 " id="b1" name="b1">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="submit" class="num" value=" 2 " id="b2" name="b2">
        <br> 
        <hr  size="3"  color="#333333">
        
        <input type="submit" class="num" value=" 3 " id="b3" name="b3">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
     	<input type="submit" class="num" value=" 4 " id="b4" name="b4">
        <br>
        <hr  size="3"  color="#333333">
       
        <input type="submit" class="num" value=" 5 " id="b5" name="b5">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="submit" class="num" value=" 6 " id="b6" name="b6">
        <br>
        <hr  size="3"  color="#333333">
          
        <input type="submit" class="num" value=" 7 " id="b7" name="b7">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="submit" class="num" value=" 8 " id="b8" name="b8">
        <br>
        <hr  size="3"  color="#333333">
        
        <input type="submit" class="num" value=" 9 " id="b9" name="b9">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
        <input type="submit" class="num" value="10" id="b10" name="b10">
       
        <br>  
        <hr  size="3"  color="#333333">
        <input type="submit" class="num" value="1/2" id="b11" name="b11">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="submit" class="num" value="1/4" id="b12" name="b12">
        <br>
 		<hr  size="3"  color="#333333">
        
        <input type="submit" class="num" value=" + " id="b13" name="b13">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <input type="submit" class="num" value=" = " id="b14" name="b14">
        <br>
 		<br>
        </center>
        <hr size="5" color="#3399FF"> 
        <center>
 		
        <font size="+4"  color="#CCFF66">  
        <b>&nbsp;For &nbsp;Correction &nbsp;Please &nbsp;Click &nbsp;   On &nbsp; Required &nbsp; Sign</b>
        </font></center>
        <hr size="5" color="#3399FF">
        <center>
        <table width="232" height="42">
        <tr>
        <td width="165" height="36"><center>
        <font size="+4"  color="#FF9"><b>
        For Give Tick Mark </b></font></center>
        </td>
       
       	<td width="55" height="36" ><center>
        <input type="submit" class="tick" value="    " id="b15" name="b15"></center>
        </td>
        </tr></table>
        <hr size="5" color="#3399FF">
        <table width="232" height="42">
        <tr>
       	<td width="165" height="36"><center><b><font size="+4"  color="#FF9">
         For Give Cross mark</font></b></center>
        </td>
        <td width="55" height="36"><center>
        <input type="submit" class="cross" value="    " id="b16" name="b16"></center>
        </td>
        </tr>
        </table>
        
        <hr size="5" color="#3399FF">
        <table width="232" height="42">
        
        <tr>
        <td width="145" height="36"><center><b> <font size="+4"  color="#FF9">
        For No Resopnse</font></b></center>
        </td>
        
       <td width="75" height="36"><center>
       <input type="submit" class="num" value=" N/R " id="b17" name="b17"></center>
       </td>
       </tr>
       </table>
       
       <hr size="5" color="#3399FF">
       <hr  size="5"  color="#333333">
       <table width="232" height="56">
       
       <tr>
       <td width="139" height="50"><center>
       <b>
       <font size="+4"  color="#FF9">
       For Seen The Blank Page</font></b></center>
       </td>
       
       <td width="81" height="50"><center>
       <input type="submit" class="num" value="Seen" id="b18" name="b18"></center>
       </td></tr>
       </table>
       <hr size="5" color="#3399FF">
       <table width="232" height="56">
       <tr>
       <td width="105" height="50"><center><b><font size="+4"  color="#FF9">
       For Give Comment</font></b></center>
       </td>
       <td width="115"> &nbsp;
       <input type="submit" class="num" value="Comment" id="b19" name="b19">
       </td></tr>
       </table>
       </center>
       
 
  </div>
  
  
 <div class="rt"><br><center>
 <input type="text" class="inco" name="wc1" id="wc1" readonly value="<?php echo $rs['reg'] ?>">
      <font color="#FFFF99">
     <input type="text" class="inco" name="wc2" id="wc2" readonly value="<?php echo $rs['name'] ?>"></font></center> 
	  	<hr size="5" color="#3399FF">
        <center>
        <font size="+4"  color="#CCFF66"> 
        
        <b>Annotation</b>
        </font>
 		<hr  size="5"  color="#3399FF">
     <table width="224" height="110">
     
        <tr>
        <td width="117" height="37">
        <font color="#FFFF99">
        <b>Subject Name</b>
        </font>
        </td> 
        
        <td width="95">
      	<input type="text" class="inco" name="sn" id="sn">
        </td>
        </tr>
        
		<tr> 
		<td height="38"> 
        <font color="#FFFF99">
        <b>School Code</b>
        </font>
        </td>
        
        <td>  
    	<input type="text" class="inco" name="sc" id="sc">
        </td>
        </tr>
        
    	<tr>
    	<td height="25">
        <font color="#FFFF99">
        <b>Roll Number &nbsp;</b>
        </font>
        </td>
        
        <td>  
   	    <input type="text" class="inco" name="rn" id="rn">
        </td>
        </tr>
        </table>
        </center>
        
    	<hr size="5" color="#3399FF">
      
   		<font size="+4"  color="#CCFF66">
        <center>
  	   <table width="209" height="35">
   		  
   		
    	<tr> 
        <td width="19" height="29">1.</td> 
        <td width="24"><font face="Georgia, Times New Roman, Times, serif">i )</font></td>
 	    <td width="56"><input type="text" class="coput" name="A1" id="A1" onblur='Calculate();'></td>

    
        <td width="27"><font face="Georgia, Times New Roman, Times, serif">ii )</font> </td>
   		<td width="59"> <input type="text" class="coput" name="A2" id="A2" onblur='Calculate();'></td>
        </tr>
    
   		
        </table>
  		</center>
  
  		<hr  size="5"  color="#3399FF">
        <center>
 	    <table width="209" height="35">
        
       	<tr> 
         <td width="5" height="29"></td> 
        <td width="32"> &nbsp; 2.</td>  
      	<td width="52"><input type="text" class="coput" name="A3" id="A3" onblur='Calculate();'></td>
       
        <td width="30"> &nbsp; 3.</td>   
        <td width="66"> <input type="text" class="coput" name="A4" id="A4" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="5" height="29"></td>
        <td width="32">&nbsp; 4.</td>  
      	<td width="52"><input type="text" class="coput" name="A5" id="A5" onblur='Calculate();'></td>
        
        <td width="30">&nbsp; 5.</td>
  	    <td width="66"><input type="text" class="coput" name="A6" id="A6" onblur='Calculate();'></td>
        </tr>
    
   		<tr> 
        <td width="5" height="29"></td>
		<td width="32">&nbsp; 6.</td>
        <td width="52"><input type="text" class="coput" name="A7" id="A7" onblur='Calculate();'></td>
        
        <td width="30" height="29">&nbsp; 7.</td>  
      	<td width="66"><input type="text" class="coput" name="A8" id="A8" onblur='Calculate();'></td>
        </tr>
        </table>
	</center>
        
	<hr  size="5"  color="#3399FF">
    
        <center>
 		<table width="212" height="64">
        
       	<tr> 
        <td width="4" height="29"></td>
        <td width="32">&nbsp; 8.</td>  
      	<td width="56"><input type="text" class="coput" name="A9" id="A9" onblur='Calculate();'></td>
       
        <td width="32">&nbsp; 9.</td>   
        <td width="64"> <input type="text" class="coput" name="A10" id="A10" onblur='Calculate();'></td>
        
        </tr>
        <tr> 
        <td width="4" height="29"></td>
        <td width="32">10.</td> 
      	<td width="56"><input type="text" class="coput" name="A11" id="A11" onblur='Calculate();'></td>
	
        <td width="32">11.</td> 
  	    <td width="64"><input type="text" class="coput" name="A12" id="A12" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="4" height="29"></td>
		<td width="32">12.</td> 
        <td><input type="text" class="coput" name="A13" id="A13"></td>
        
        <td width="32" height="29">13.</td>  
      	<td width="64"><input type="text" class="coput" name="A14" id="A14" onblur='Calculate();'></td>
        </tr>
        
        <tr> 
        <td width="4" height="29"></td>
        <td width="32">14.</td>
  	    <td width="56"><input type="text" class="coput" name="A15" id="A15" onblur='Calculate();'></td>
        
		<td width="32">15.</td>
        <td width="64"><input type="text" class="coput" name="A16" id="A16" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="4" height="29"></td>
        <td width="32">16.</td>  
      	<td width="56"><input type="text" class="coput" name="A17" id="A17" onblur='Calculate();'></td>
       
        <td width="32">17.</td>
  	    <td width="64"><input type="text" class="coput" name="A18" id="A18" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="4" height="29"></td>
		<td width="32">18.</td>
        <td width="56"><input type="text" class="coput" name="A19" id="A19" onblur='Calculate();'></td>
        
        <td width="32">19.</td>  
      	<td width="64"><input type="text" class="coput" name="A20" id="A20" onblur='Calculate();'></td>
        </tr>
      
        </table>
  		</center>
        
  		<hr  size="5"  color="#3399FF">
   
   		<center>
   		<table width="211" height="35">
    	 <tr> 
        <td width="6" height="29"></td>
        <td width="32">20.</td>
  	    <td width="56"><input type="text" class="coput" name="A21" id="A21" onblur='Calculate();'></td>
        
		<td width="29">21.</td>
        <td width="64"><input type="text" class="coput" name="A22" id="A22" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="6" height="29"></td>
        <td width="32">22.</td>  
      	<td width="56"><input type="text" class="coput" name="A23" id="A23" onblur='Calculate();'></td>
       
        <td width="29">23.</td>
  	    <td width="64"><input type="text" class="coput" name="A24" id="A24" onblur='Calculate();'></td>
        </tr>
        
        <tr>
        <td width="6" height="29"></td>
		<td width="32">24.</td>
        <td width="56"><input type="text" class="coput" name="A25" id="A25" onblur='Calculate();'></td>
        
        <td width="29">25.</td>  
      	<td width="64"><input type="text" class="coput" name="A26" id="A26" onblur='Calculate();'></td>
        </tr>
        </table>
  		</center>
        
 	   <hr  size="5"  color="#3399FF">
     
     <center>
     <table width="215" height="33">
     <tr>
     <td width="132"><font color="#99FF00"><b>Total Marks</b></font></td>
     <td width="71"><input type="text" class="inco" name="Aa27" id="A27"  readonly onblur='Calculate();' ></td>
     </tr>
     </table>
     </center>
     
    <hr  size="5"  color="#3399FF">
   
    <center>
   <input type="submit" class="num" value="Submit Marks" id="b23" name="b23">
   </center> 
   <br>
   <br>
  </div> 
   </form>      


<div class="pg_info"><center>
                 <table width="721"><tr><td width="212">
         <input type="button"  class="button" name="bb1" id="bb1" value="DOWNLOAD COPY"></td>
         <td width="403"> <font color="#660000"><b>&nbsp;Welcome&nbsp;&nbsp; </b>
      <input type="text"class="put1" name="wc" id="wc" readonly value="<?php echo $rs['name'] ?>"></font></td>                               
	   <td width="90"> <input type="button"  class="button" name="bb2" id="bb2" value="LOG OUT"></td>	  
            </tr></table></center> 
       </div>  
      
       <div class="mid">
       
        <?PHP 
		
		while($row = mysql_fetch_array($result))
{ 
    
echo '<div id="imagelist">';
echo '<img height="650px" width="750px" src="'.$row['LOC'].'">';
echo '<p id="caption">'.$row['ROLL'];
	
echo '</div>';
}
		?>	
        <div id="container">
      <canvas id="imageView" width="840" height="930">
        
        <p>Supported browsers: <a href="http://www.opera.com">Opera</a>, <a
          href="http://www.mozilla.com">Firefox</a>, <a
          href="http://www.apple.com/safari">Safari</a>, and <a
          href="http://www.konqueror.org">Konqueror</a>.</p>
      </canvas>
    </div>    
             
</div>  

<script type="text/javascript" src="example-2.js"></script>

</body></html>
