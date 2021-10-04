<html>
	
    <body>
    
    	<?php
	
		$con=mysqli_connect("localhost", "root","","school_information");
		if(isset($_POST["submit"]))
		     {
		$t1=$_REQUEST['s1'];
		$t2=$_REQUEST['s2'];
		$t3=$_REQUEST['s3'];
		$t4=$_REQUEST['s4'];
		$t5=$_REQUEST['s5'];
		
		
		if($t4=="English")
		 {
			$qry="insert into evaluator_eng (ev_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysqli_query($con,$qry);
	       $qr="insert into eve_info(paper)
		   value('$t4')";
		   if(mysqli_query($con,$qr))
		
			
			{
			   
				header("location:ev_see_regis.php");
				
			 }
		
			else
		 	{
			 echo"error";
		 	}
		
		 }
			 }
	/*	if($t4=="Hindi")
		{
			$qry="insert into evaluator_hin (ev_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into eve_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
			if(mysql_affected_rows()>0)
			{
				header("location:ev_see_regis.php");
			}
		
			else
		 	{
			 	echo"error";
		 	}
		}
		
		if($t4=="Math")
		{
			$qry="insert into evaluator_math (ev_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into eve_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
			if(mysql_affected_rows()>0)
			{
				header("location:ev_see_regis.php");
			}
		
			else
		 	{
			 echo"error";
		 	}
		}
		
		if($t4=="Science")
		{
			$qry="insert into evaluator_sci (ev_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into eve_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
		
		 if(mysql_affected_rows()>0)
			{
				header("location:ev_see_regis.php");
			}
		
		else
		 	{
			 echo"error";
		 	}
		
		}
		
		if($t4=="SST")
		{
			$qry="insert into evaluator_s_sci (ev_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into eve_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
		
			if(mysql_affected_rows()>0)
			{
			header("location:ev_see_regis.php");
			}
		
			else
			 {
			 echo"error";
		 	}
		
		
		}
		
		*/ 
		?>
    </body>
</html>