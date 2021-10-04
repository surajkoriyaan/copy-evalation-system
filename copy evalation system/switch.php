<?php

$action = isset($_GET['action']) ? $_GET['action'] : '';
//$action= 'assignComplain';
switch ($action) {
	
	case 'makecomplain' :
		makeComplain();
	break;
	
	case 'assignComplain' :
		assignComplain();
	break;
	
	
		
	default :
	    // if action is not defined or unknown
		// move to main user page
	//	header('Location: index.php');
}

?>
<body>
<?php
function assignComplain()
{
	//echo 'Make Complain...';
	
         
    $conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		   mysql_select_db("student_information");	
$sql ="select * from evaluator_eng";
	
	$sm=mysql_query($sql);
	//$rs=mysql_fetch_assoc($smt);
	?>
 
	<center>
    
    <h4>EMPLOYEES DETAILS</h4>
    <table border="2" cellpadding="2" cellspacing="2">
        <tr>
       
           <td bgcolor="#99CC99">EVALUATOR ID</td>
           <td bgcolor="#99CC99">EVALUATOR NAME</td>
           <td bgcolor="#99CC99">EVALUATOR SUB</td>
           
                   
         </tr>
         
   
    <?php
	 
	while(($r=mysql_fetch_assoc($sm)))
	{
		echo "<form name='f1' id='f1' action='forward.php' method='post'>";
		    echo "<tr>" ;
			echo "<td bgcolor='#99CC99'>" . "<input type='radio' name='job_references[]' id='job_references[]' value='$r[ev_id]'>". $r['ev_id']. "</td>";
			//echo "<td bgcolor='#99CC99'>" . $rs['EMPLOYEE_NAME'] . "</td>";
			echo "<td bgcolor='#99CC99'>" . $r['ev_name'] . "</td>";
			echo "<td bgcolor='#99CC99'>" .  $r['paper']. "</td>";
			
		echo "<tr>";	
// "<input type='text' name='txtgrt' tabindex='19' size='20'>";
}

}
?>
</table>

<?php
$conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		   mysql_select_db("complain");	
$sql ="select * from upload_data where ev_id=''";
	
	$smt=mysql_query($sql);
	//$rs=mysql_fetch_assoc($smt);
	?>
    
   

    <style>
	#div2
{
	/*position:absolute;
	top:100px;
	left:400px;
	right:400px;
	height:500px;
	width:600px;
	border-bottom-left-radius:30px;
	border-bottom-right-radius:30px;
	border-top-left-radius:30px;
	border-top-right-radius:30px;
	display:none;
	background-color:#0CF;*/
}
	</style>
    ****************************************************************************************************************************************
    <center>
    
     ......................student DETAILS............................
    <table border="2" cellpadding="2" cellspacing="2" bgcolor="#CCCCCC">
        <tr>
       
           <td bgcolor="#666666">roll_NO</td>
           <td bgcolor="#666666">NAME</td>
           <td bgcolor="#666666">sch_id</td>
  
         
         </tr>
        
    <?php
	/*$ql ="select * from count";
	
	$mt=mysql_query($ql);
	$s=mysql_fetch_assoc($mt);*/
	
	
	while(($rs=mysql_fetch_assoc($smt)))
	{
		    echo "<tr>" ;
			//echo "<td>"."<input type='checkbox' name='chk[]' value=''>". "</td>";
			//echo "<td>"."<input type='checkbox' value=''>"."</td>";
       echo "<td>" . "<input type='checkbox' name='check[]' id='check[]' value='$rs[ROLL]'>". $rs['ROLL']. "</td>";
   
			echo "<td>" . $rs['STU_NAME'] . "</td>";
			echo "<td>" . $rs['SCH_ID'] . "</td>";
			//echo "<td>" . $rs['address']. "</td>";
			//echo "<td>" . $rs['complain'] . "</td>";
			
			echo "<td>"."<input type='submit' name='s2' value='VIEW'>"."</td>";
		
			//echo "<td>" ."<a href='show.php'>". "history"."</a>"."</td>";
			/*echo "<td>" . $rs['E_MAIL'] . "</td>";
			echo "<td>" . $rs['PHONE_NO'] . "</td>";*/
			
	
	
	//echo "<form name='f1' id='f1' action='forward.php' method='post'>";
	//for($i=0;$i<=4;$i++)
	
  //    echo "<td>"."<input type='checkbox' name='chk'  value='<?php '>"."</td>";
	
    //  echo "<input type='submit' id='s1'  name='s1' value='distribution' onClick='call()'>";
     //echo "</form>";
	echo "</tr>";
	;
	
	}
	
	
	//echo "<input type='submit' id='s1'  name='s1' value='send' onClick='call()'>";
   
	?>
 </table>
 <input type='submit' id='s1'  name='s1' value='SEND'>
  <input type="submit" id="s3" name="s3" value="VIEW"><br> *********************************************************************************************
  
  </center>
  </body>
  <body>
  </head>
  </html>

</table>
</center>
</body>
