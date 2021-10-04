<html>
	
    <body>
    
    	<?php
	
		$con=mysql_connect("localhost", "root","");
		if(!$con)
		{
			echo "Not Connected";
		}
		mysql_select_db("school_information");
		     
		$t1=$_REQUEST['s1'];
		$t2=$_REQUEST['s2'];
		$t3=$_REQUEST['s3'];
		$t4=$_REQUEST['s4'];
		$t5=$_REQUEST['s5'];
		
		
		if($t4=="English")
		 {
			$qry="insert into scn_eng (scn_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
	       $qr="insert into scn_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
		
			if(mysql_affected_rows()>0)
			{
			   
				header("location:see_regis.php");
				
			 }
		
			else
		 	{
			 echo"error";
		 	}
		
		 }
		 
		if($t4=="Hindi")
		{
			$qry="insert into scn_hin (scn_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into scn_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
			if(mysql_affected_rows()>0)
			{
				header("location:see_regis.php");
			}
		
			else
		 	{
			 	echo"error";
		 	}
		}
		
		if($t4=="Math")
		{
			$qry="insert into scn_math (scn_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into scn_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
			if(mysql_affected_rows()>0)
			{
				header("location:see_regis.php");
			}
		
			else
		 	{
			 echo"error";
		 	}
		}
		
		if($t4=="Science")
		{
			$qry="insert into scn_sci (scn_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into scn_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
		
		 if(mysql_affected_rows()>0)
			{
				header("location:see_regis.php");
			}
		
		else
		 	{
			 echo"error";
		 	}
		
		}
		
		if($t4=="SST")
		{
			$qry="insert into scn_s_sci (scn_name,contact,email,paper,pass)values('$t1','$t2','$t3','$t4','$t5')";
		$smt=mysql_query($qry);
		 $qr="insert into scn_info(paper)
		   value('$t4')";
		   $smt1=mysql_query($qr);
		
			if(mysql_affected_rows()>0)
			{
			header("location:see_regis.php");
			}
		
			else
			 {
			 echo"error";
		 	}
		
		
		}
		
		 
		?>
    </body>
</html>