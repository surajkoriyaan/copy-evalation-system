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
		$s5=$_REQUEST['e'];
		$s6=$_REQUEST['h'];
		$s7=$_REQUEST['m'];
		$s8=$_REQUEST['s'];
		$s9=$_REQUEST['ss'];
		if($s5!=""||$s6!=""||$s7!=""||$s8!=""||$s9!="")
		{
		
		$qry="insert into paper_info(sch_code,stu_name,roll_no,roll_code,eng,hin,math,sci,s_sci)values($s1,'$s2',$s3,$s4,'$s5','$s6','$s7','$s8','$s9')";
		$smt=mysql_query($qry);
		}
		if(mysql_affected_rows()>0)
		{
			header("location:options.php");
		}	
		 
		 else
		 {
			 echo"Error";
		 }
		?>
    </body>
</html>