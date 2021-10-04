<html>
	
    <body>
    
    	<?php
	
		$con=@mysql_connect("localhost", "root","");
		if(!$con)
		{
			echo "Not Connected";
		}
		mysql_select_db("school_information");
		
		$s1=$_REQUEST['stu1'];     
		$s2=$_REQUEST['stu2'];
		$s3=$_REQUEST['stu3'];
		$s4=$_REQUEST['stu4'];
		$s5=$_REQUEST['stu5'];
		$s6=$_REQUEST['e'];
		$s7=$_REQUEST['h'];
		$s8=$_REQUEST['m'];
		$s9=$_REQUEST['s'];
		$s10=$_REQUEST['ss'];
		
		
		$qry="insert into student_info(sch_code,stu_name,roll_no,dob,eng,hin,math,sci,s_sci)values($s1,'$s2',$s3,'$s5',$s6,$s7,$s8,$s9,$s10)";
		$smt=mysql_query($qry);
		if(mysql_affected_rows()>0)
		{
			header("location:succ.php");
		}	
		 
		 else
		 {
			 echo"Error";
		 }
		?>
    </body>
</html>