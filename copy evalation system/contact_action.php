<html>
	
    <body>
    
    	<?php
	
		$con=mysqli_connect("localhost", "root","","school_information");
		if(isset($_POST['submit']))
		{
		     
		$nam1=$_POST['nam1'];
		$reg1=$_POST['reg1'];
		$con1=$_POST['con1'];
		$em1=$_POST['em1'];
		$str1=$_POST['str1'];
		$str2=$_POST['str2'];
		$cit1=$_POST['cit1'];
		$dis1=$_POST['dis1'];
		$sta1=$_POST['sta1'];
		$pin1=$_POST['pin'];
		$pas1=$_POST['pas1'];
		$qry="insert into school_regis(sch_name, reg_no, con_no, e_mail, str_1, str_2, city, dist, state, pin,pas) values ('$nam1','$reg1',$con1,'$em1','$str1','$str2','$cit1','$dis1','$sta1', '$pin1','$pas1' )";
		if(mysqli_query($con,$qry))
		{
			header("location:regis_view.php");
		}	
		 
		 else
		 {
			 header("location:regis_view.php");
		 }
		 }
		?>
    </body>
</html>