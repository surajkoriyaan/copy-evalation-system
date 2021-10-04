<html>
	<body>
	<?php
		$conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			  echo("connection failed");
		   }
		mysql_select_db("school_information");
		
		$nam1=$_REQUEST['nam1'];
		$reg1=$_REQUEST['reg1'];
		$con1=$_REQUEST['con1'];
		$em1=$_REQUEST['em1'];
		$str1=$_REQUEST['str1'];
		$str2=$_REQUEST['str2'];
		$cit1=$_REQUEST['cit1'];
		$dis1=$_REQUEST['dis1'];
		$sta1=$_REQUEST['sta1'];
		$pin1=$_REQUEST['pin'];
		$pas1=$_REQUEST['pass'];
		$reg_code=$_REQUEST['reg_code'];
		$qry="update school_regis
set sch_name='$nam1',reg_no='$reg1',con_no=$con1,e_mail='$em1',str_1='$str1',str_2='$str2', city='$cit1',dist='$dis1',state='$sta1',pin=$pin1,pas='$pas1'
  where reg_code='$reg_code'";
  
  mysql_query($qry);
		if(mysql_affected_rows()>0)
		{
			header("location:regis_win.php");
		}
		  else
		   {
			   echo "Updation Fail ";
		   }
	?>
    </body>
</html>