<html>
	
    <body>
    
    	<?php
	
		$con=@mysql_connect("localhost", "root","");
		if(!$con)
		{
			echo "Not Connected";
		}
		mysql_select_db("school_information");
		
		$s1=$_REQUEST['d1'];     
		$s2=$_REQUEST['d2'];
		$s3=$_REQUEST['d3'];
		
		
		$qry="delete from upload_data 
		where SCH_ID=$s1 and STU_NAME='$s2'  and ROLL=$s3";
		$smt=mysql_query($qry);
		if(mysql_affected_rows()>0)
		{
			header("location:dell.php");
		  echo " Student Information Has been Delected";
		}	
		
		 
		 else
		 {
			 echo"You Have Put Wrong Input......!!";
		 }
		?>
    </body>
</html>