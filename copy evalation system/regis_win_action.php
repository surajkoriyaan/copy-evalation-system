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
		$reg2=$_REQUEST['reg_code'];
		$pas1=$_REQUEST['pas1'];
		$qry="sch_name='$nam1',reg_code=$reg2,pas='$pas1'
  where reg_no='$reg1'";
  
  mysql_query($qry);
		if(mysql_affected_rows()>0)
		{
			echo("1 row modified");
		}
		  else
		   {
			   echo "updation failssss...";
		   }
	?>
    </body>
</html>