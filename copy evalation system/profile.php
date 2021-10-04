<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome</title>


<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">

<?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$qw="select *from evaluator order by  id desc limit 1";
$s=mysql_query("$qw");
$r=mysql_fetch_assoc($s);
$p= $r['paper'];

?>


<?php

$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
			
$sql ="select SUB,SCH_ID,ROLL from upload_data where SUB='$p'";
$smt=mysql_query($sql);
$m=mysql_fetch_assoc($smt);
	
	 echo "<table border='2' cellpadding='2' cellspacing='2' bgcolor='#CCCCCC'>";
        echo "<tr>";
       
          
            echo "<td bgcolor='#CCFF99'>Subject Name</td>";
           echo "<td bgcolor='#CCFF99'>School Code</td>";
		   echo "<td bgcolor='#CCFF99'>Roll Number</td>";
		 
		 
	while($m=mysql_fetch_assoc($smt))
	{ 
		echo "<tr>";
		
			echo  "<td>"."<input type='submit' name='p1' value='$m[SUB]'>". "</td>";
			echo "<td>" . $m['SCH_ID'] . "</td>";
            echo "<td>" . $m['ROLL'] . "</td>";
   echo "<tr>";
	}

?>


<script type="text/javascript">
	function bak()
	{
	window.location.assign("sch_regis.php");
}
</script>

</head>


<body id="page2">
<!-- START PAGE SOURCE -->
<div class="main">
  	<section>
    	  <article class="pad_loginbox">
      		<div class="school_log">
            	<form name="profile" id="profile" action="" method="post">
                <center>
            	<table width="498">
            	  <tr>
                  <td width="257" height="50">
      			  <b>Welcome</b></td>
                  <td width="229"> <input type="text" readonly class="input2" name="t1" 
                        				 id="t1" value="<?php echo $r['ev_name'] ?>"></td>
                                         
                   <td width="257" height="50">
      			  <b>id</b></td>
                  <td width="229"> <input type="text" readonly class="input2" name="t2" 
                        				 id="t2" value="<?php echo $r['id'] ?>"></td>
                                  
                  <td width="257" height="50">
      			  <b>Subject</b></td>
                  <td width="229"> <input type="text" readonly class="input2" name="t3" 
                        				 id="t3" value="<?php echo $r['paper'] ?>"></td>
            
                  </tr></table></center>
                		
       			   <hr size="6" color="#454545">
        
				  <div class="login_window"> 
           		    <center>
                    
                   
          	   	 </center>
                   
			   </div>
        
        
       
        	<hr size="6" color="#454545">
        	<div>  <center> 
                <input type="button"  class="button" value="Back" onClick="bak()";>
             		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit"  class="button" value="submit">
               
                 </center>
                    
           	</div>
            
            
        </form>    
      </div>   
       
  </article>
 </section>
 
 	 
</div>
</body>
</html>
