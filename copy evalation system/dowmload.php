<html>
<title>Welcome</title>
<head>
<link href="style.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="engine1/style1.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/easySlider1.5.js"></script>
<script type="text/javascript" charset="utf-8">
</script>
<script type="text/javascript">
function inf1()
	{
	window.location.assign("home.php");
}
</script>
<?php
$con=mysqli_connect("localhost","root","","school_information");

$qw="select *from log_info order by  id desc limit 1";
$s=mysqli_query($con,$qw);
$r=mysqli_fetch_assoc($s);
$p= $r['paper'];
$i=$r['reg'];

?>

<?php

$con=mysqli_connect("localhost","root","","school_information");

			
$sql ="select SUB,SCH_ID,ROLL from upload_data where SUB='$p'";
$smt=mysqli_query($con,$sql);
$m=mysqli_fetch_assoc($smt);

 $s=$m['SUB'];
 $n=$m['SCH_ID'];
$ro=$m['ROLL']; 


?>

<script type="text/javascript">
	function inf11()
	{
	window.location.assign("final_upload.php");
}
</script>


<script type="text/javascript">
	function bak()
	{
	window.location.assign("home.php");
}
</script>

</head>

<body bgcolor="#0099FF">
   <div class="body">
    
    		<div class="body_resize">
      <!-- START CONTAINER ABOUT -->
		<div class="right1">
   
<form id="f1" name="f1" action="math - Copy.php">
                <center>
            	<table width="839" height="54">
            	  <tr>
                  <td width="118" height="50">
      			  <b><font color="#99FF33" size="5">Welcome </font></b></td>
                  <td width="310"> <input type="text" readonly class="incoo" name="tt1" 
                        				 id="t1" value="<?php echo $r['name'] ?>"></td>
                                         
                   <td width="57" height="50">
      			  <b><font color="#99FF33" size="5">id</font></b></td>
                  <td width="194"> <input type="text" readonly class="incoo" name="t2" 
                        				 id="tt2" value="<?php echo $r['reg'] ?>"></td>
                                  
                  <td width="22" height="50">
      			  <b></b></td>
                  <td width="110"> <input type="hidden" readonly class="incoo" name="tt3" 
                        				 id="t3" value="<?php echo $r['paper'] ?>"></td>
            
  </tr></table></center>
                		
       			   <hr size="4" color="#00CCFF">
                   
                   <div>   
      
           <font color="#99FF33" size="5">Enter Subject&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
           <select class="incoo" name="t1" 
                        				 id="t1" title="Please select proper paper name">
                                         <option>English</option>
                                         <option>Hindi</option>
                                         <option>Math</option>
                                         <option>Science</option>
                                         <option>SST</option>
                                         
                                         </select><br><br>
        <font color="#99FF33" size="5">   Enter School code &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><input type="text" name="t2" id="t2" class="incoo" /><br><br>
         <font color="#99FF33" size="5">  Enter Roll &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font><input type="text" name="t3" id="t3" class="incoo" /><br>
           <br><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<input type="submit" id="s1" name="s1"  value="Open"/>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
           <input type="button" value="Log out" onClick="inf1()";> 
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Upload checked answer sheets" onClick="inf11()";>  </center>  
           
        <hr size="4" color="#00CCFF"></div>
				  
  				<center>
                    <?php
					
						
	 echo "<table border='2' cellpadding='2' cellspacing='2' bgcolor='#FFFF5B' width='500px'>";
        echo "<tr>";
       
          
            echo "<td bgcolor='#CCFF99'>Subject Name</td>";
           echo "<td bgcolor='#CCFF99'>School Code</td>";
		   echo "<td bgcolor='#CCFF99'>Roll Number</td>";
			
					
				 
	while($m=mysqli_fetch_assoc($smt))
	{ 
		echo "<tr>";
		
			echo  "<td>".  $m['SUB'] .  "</td>";
			echo "<td>" . $m['SCH_ID'] . "</td>";
            echo "<td>" . $m['ROLL'] . "</td>";
   echo "</tr>";
	}		
	
	echo"	</table>";
					?>
                   
          	   	 </center>
                   
			  
        
       
        	<hr size="4" color="#00CCFF">
        	
   </form>
   </div></div></div>
   </body>
</html>