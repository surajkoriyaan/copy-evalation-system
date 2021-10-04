<?php
 $conn=@mysql_connect("localhost","root","");
 if(!$conn)
 {
	 echo"Connection Failed...";
 }
 mysql_select_db("enqury");
 $name=$_REQUEST['name'];
 $email=$_REQUEST['email'];
 $ph=$_REQUEST['ph'];
 $subject=$_REQUEST['subject'];

 
 $qry="INSERT INTO student (name, email,ph,sub,msg) VALUES ('$name','$email','$ph','$sub','$msg')";
 
 mysql_query($qry);
 
 if(mysql_affected_rows()>0)
 {
	 echo"One Student Added...";
 }
 else
 {
	 echo"Insertion failed";
 }
 
?>