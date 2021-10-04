<html>
	
    <body>
    
    	<?php
	
		$con=@mysql_connect("localhost", "root","");
		if(!$con)
		{
			echo "Not Connected";
		}
		mysql_select_db("school_information");
		     
		$t1=$_REQUEST['wc1'];
		$t2=$_REQUEST['wc2'];
		$t3=$_REQUEST['sn'];
		$t4=$_REQUEST['sc'];
		$t5=$_REQUEST['rn'];
		$t6=$_REQUEST['A27'];
		echo $t1;
		echo $t2;echo $t3;echo $t4;echo $t5; echo $t6;
		if($t3=='a')
		 {
			$qry="insert into eng_mks(e_id,e_nm,sub,sch_name,roll,mks)values($t1,'$t2','$t3','$t4',$t5,$t6)";
		$smt=mysql_query("$qry");
		
		echo "success";
		 }
		 
		else if($t3=="Hindi")
		 {
			$qry="insert into hin_nks(e_id,e_nm,sub,sch_name,roll,mks)values($t1,'$t2','$t3','$t4',$t5,$t6)";
	mysql_query($qry);
		 }
		 else if($t3=="Math")
		 {
			$qry="insert into math_mks(e_id,e_nm,sub,sch_name,roll,mks)values($t1,'$t2','$t3','$t4',$t5,$t6)";
		$smt=mysql_query($qry);
		 }
		 
		else if($t3=="Science")
		 {
			$qry="insert into sci_mks(e_id,e_nm,sub,sch_name,roll,mks)values($t1,'$t2','$t3','$t4',$t5,$t6)";
		$smt=mysql_query($qry);
		 }
			
		else
		{
			$qry="insert into SST_mks (e_id,e_nm,sub,sch_name,roll,mks)values($t1,'$t2','$t3','$t4',$t5,$t6)";
		mysql_query($qry);
		}
			if(mysql_affected_rows()>0)
			{
				header("location:dowmload.php");
			}
		
			else
		 	{
			 	echo"error";
		 	}
		
		
		 
		?>
    </body>
</html>