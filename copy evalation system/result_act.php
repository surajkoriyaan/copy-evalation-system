<html>
	<head>    
    <title>result</title>
    
    <script type="text/javascript">
	function inf11()
	{
	window.location.assign("viewcopy.php");
}
</script>

	</head>
    <body><form name="result" id="result" action="display.php" method="post">
    	<h1>!!!! Result !!!!</h1>
        <?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$sc=$_REQUEST['r1'];
$rl=$_REQUEST['r2'];

$q1="select *from student_info where (sch_code=$sc AND roll_no=$rl)";
$st=mysql_query($q1);
$rs1=mysql_fetch_assoc($st);
$a1=$rs1['eng'];
$a2= $rs1['hin'];
$a3= $rs1['math'];
$a4= $rs1['sci'];
$a5= $rs1['s_sci'];

$q2="select *from eng_mks  where roll=$rl";
$st1=mysql_query($q2);
$rs2=mysql_fetch_assoc($st1);

$b1=$rs2['mks'];

$q3="select *from hin_nks  where roll=$rl";
$st2=mysql_query($q3);
$rs3=mysql_fetch_assoc($st2);
$b2=$rs3['mks'];

$q4="select *from math_mks  where roll=$rl";
$st4=mysql_query($q4);
$rs4=mysql_fetch_assoc($st4);
$b3=$rs4['mks'];

$q5="select *from sci_mks  where roll=$rl";
$st5=mysql_query($q5);
$rs5=mysql_fetch_assoc($st5);
$b4=$rs5['mks'];

$q6="select *from sst_mks  where roll=$rl";
$st6=mysql_query($q6);
$rs6=mysql_fetch_assoc($st6);
$b5=$rs6['mks'];
$te=$a1+$b1;
$th=$a2+$b2;
$tm=$a3+$b3;
$ts=$a4+$b4;
$tss=$a5+$b5;

$total=$te+$th+$tm+$ts+$tss;
$per=($total*100/500);
			if($per>=60)
			{
				$dv='First';
			}
			else if($per>=45 && $per<60)
			{
				$dv="Second";
			}
			else
			{
				$dv="Third";
			}
			 
		?>
        <table border="2">
           <tr>
              <td> Name</td>
              <td>School Code</td>
              <td>Roll No</td>
           </tr>
           <tr>
              <td><?php echo $rs1['stu_name']; ?></td>
              <td><?php echo $rs1['sch_code']; ?></td>
              <td><?php echo $rs1['roll_no']; ?></td>
           </tr>
           <tr>
              <td>Subject</td>
              <td>Internal marks</td>
              <td>theory marks</td>
               <td>Total Marks</td>
              <td>Obtain Marks</td>
           </tr>
           <tr>
              <td>English</td>
              <td><?php echo $a1; ?></td>
              <td><?php echo $b1; ?></td>
              <td>100</td>
              <td><?php echo $te; ?></td>
           </tr>
           <tr>
              <td>Hindi</td>
              <td><?php echo $a2; ?></td>
              <td><?php echo $b2; ?></td>
              <td>100</td>
              <td><?php echo $th; ?></td>
           </tr>
           <tr>
              <td>Math</td>
              <td><?php echo $a3; ?></td>
              <td><?php echo $b3; ?></td>
              <td>100</td>
              <td><?php echo $tm; ?></td>
           </tr>
           <tr>
              <td>Science</td>
              <td><?php echo $a4; ?></td>
              <td><?php echo $b4; ?></td>
              <td>100</td>
              <td><?php echo $ts; ?></td>
           </tr>
           <tr>
              <td>SST</td>
              <td><?php echo $a5; ?></td>
              <td><?php echo $b5; ?></td>
              <td>100</td>
              <td><?php echo $tss; ?></td>
           </tr>
            <tr>
              <td>Total Obtain Marks</td>
              <td>Percentage</td>
              <td>Division</td>
           </tr>
           <tr>
              <td><?php echo $total; ?></td>
              <td><?php echo $per; ?></td>
              <td><?php echo $dv; ?></td>
           </tr>
           
           
          
        </table>
        
        <input type="button" value="Upload checked answer sheets" onClick="inf11()";> 
        </form>
    </body>
</html>