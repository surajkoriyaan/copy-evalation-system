<html>
<body bgcolor="#CCFFCC">

<head>

</head>
<?php
    echo "<style>";

       	echo 'position:absolute';
	echo "left:450px";
	echo "top:80px";
	echo "height:500px";
	echo "width:500px";
	echo 'background-color:"#3FF"';
	echo "border-bottom-left-radius:30px";
	echo "border-bottom-right-radius:30px";
	echo "border-top-right-radius:30px";
	echo "border-top-left-radius:30px";
	echo "</style>";
      echo "<form id='f4' name='f4' action='message.php' method='post'>";   
 //echo "<div id=div1>";   

      if(isset($_POST['s1']))
          {
	  // $counts=count($_POST['chk']);
	 // $counts=count($_POST['check']);
	         $co = $_POST['check'];
			 $coo=$_POST['job_references'];
	  $c=count($co);
	  $s=count($coo);
	  for($i=0;$i<$s;$i++)
	  {
		  $coo[$i];
	  }
	   
	   for( $i=0;$i<$c;$i++)
	 {
		  
		  $p=$co[$i];
		  
		 
      }
	  echo "<table border='2' bordercolor='#2A3F00'>";
	  
	  
   
		   echo "<br> <center><b><font color='#FF0000'>JOB_REFENRENCES:- <input type='text' id='t0' name='t0' size='40'   style='border:1px solid #000;' value='$coo[0]'/><br/>";
		   echo "<br>";
	
			
		   $full="";
		   for($i=0;$i<1;$i++)
	   {
		for($j=0;$j<$c;$j++)
		{
			$full=$co[$j].';'.$full;
		
		
		}
		
	   }
	   
	  
	   echo "ROLL_NUMBER:-";
	   echo "<br>";
	   
	   for($i=0;$i<$c;$i++)
	   {
	  
	//  $a= "<a href='show.php'>".$co[$i]."</a>";
	  //echo $a;
	 
	 echo "<input type='text' name='t2' id='t2' size='40' style='border:1px solid #000;' value='$co[$i]'/>";
	   echo "<br>";
	   $conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		    mysql_select_db("complain");
	 
	   $a="update upload_data set ev_id='$coo[0]' where ROLL='$co[$i]'";
      mysql_query("$a");
	   }
		$to=$c;
	   
	   echo "<br>TOTAL WORK:-<input type='text' name='t3' id='t3' size='40' style='border:1px solid #000;' value='$to'/><br/><br>";
	   //$to=$_POST['t3'];
	   
	  // echo $full;
		  
	   $conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		    mysql_select_db("complain");
	 
		$t="select no_of_work from evaluator_eng where JOB_REFERENCES='$coo[0]'";
           $tm=mysql_query($t);
           $tr=mysql_fetch_assoc($tm);	   
		
		$total=$tr['no_of_work'] + $to;
		 
		   
			$q="update evaluator_eng set no_of_work=$total where ev_id='$coo[0]'";
			
          mysql_query("$q");
  
            $w="update employee set complain_no='$full' where ev_id='$coo[0]'";
            mysql_query("$w");
  
		echo"<form id='f4' name='f4' action='message.php' method='post'>";
        echo "<b><font color='#FF0000'>COMPLAIN DATE<input type='date' id='s1' name='s1'>";
		echo "<br>";
		echo "<br>";
       echo  "<input type='submit' id='s4' name='s4' value='SEND'>";
       echo "</div1>";  
		 echo "</table>"; 
		  }
		  else
		  if(isset($_POST['s2']))
		  { 
		  $co = $_POST['check'];
	  $c=count($co);
	//echo $co;
	  for($i=0;$i<$c;$i++)
	  {
		  $p=$co[$i];
		  //echo $p;
	  }
	  echo "<table border='2' cellpadding='2' cellspacing='2' bgcolor='#CCCCCC'>";
        echo "<tr>";
       
          
            echo "<td bgcolor='#666666'>NAME</td>";
           echo "<td bgcolor='#666666'>REGISTRATION_NO</td>";
		   echo "<td bgcolor='#666666'>ADDRESS</td>";
		   echo "<td bgcolor='#666666'>BLOCK</td>";
		   echo "<td bgcolor='#666666'>HOUSE_NUMBER</td>";
		   echo "<td bgcolor='#666666'>MOBILE_NUMBER</td>";
		   
		   
		   echo "<td bgcolor='#666666'>COMPLAIN_DESCRIPTION</td>";
		   echo "<td bgcolor='#666666'>COMPLAIN_DATE</td>";
		   
		  
		   echo "<td bgcolor='#666666'>E_MAIL</td>";
		   
           
       
          
        echo  "</tr> ";
	  $conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		    mysql_select_db("complain");
	 
		$t="select * from complaint where complain_no='$p'";
           $tm=mysql_query($t);
          while(($tr=mysql_fetch_assoc($tm)))
		  {	 
		   echo "<tr>";
		  echo "<td>".$tr['name']."</td>";
		echo "<td>" . $tr['registration_no'] . "</td>";
			echo "<td>" . $tr['address']. "</td>";
			echo "<td>" . $tr['block']. "</td>";
			echo "<td>" . $tr['house_no']. "</td>";
			 
		   echo "<td>" . $tr['mobile_no']. "</td>";
			echo "<td>" . $tr['complain']. "</td>";
			echo "<td>" . $tr['date']. "</td>";
			echo "<td>" . $tr['email']. "</td>";
			
			
			echo "<tr>";
		  }
	  
		  }
		  else 
		  
		   
		   if(isset($_POST['s3']))
		  { 
		  $co = $_POST['check'];
	  $c=count($co);
	//echo $co;
	  for($i=0;$i<$c;$i++)
	  {
		  $p=$co[$i];
		  //echo $p;
	  }
	  echo "<table border='2' cellpadding='2' cellspacing='2' bgcolor='#CCCCCC'>";
        echo "<tr>";
       
          
            echo "<td bgcolor='#666666'>NAME</td>";
           echo "<td bgcolor='#666666'>REGISTRATION_NO</td>";
		   echo "<td bgcolor='#666666'>ADDRESS</td>";
		   echo "<td bgcolor='#666666'>BLOCK</td>";
		    echo "<td bgcolor='#666666'>HOUSE_NUMBER</td>";
		   echo "<td bgcolor='#666666'>MOBILE_NUMBER</td>";
		   echo "<td bgcolor='#666666'>COMPLAIN_DESCRIPTION</td>";
		   echo "<td bgcolor='#666666'>COMPLAIN_DATE</td>";
		   
		   echo "<td bgcolor='#666666'>E_MAIL</td>";
		   
           
       
          
        echo  "</tr> ";
	  $conn=@mysql_connect("localhost","root","");
		   if(!$conn)
		   {
			   echo"connection failed...";
		   }
		    mysql_select_db("complain");
	 for($i=0;$i<$c;$i++)
	  {
		  $p=$co[$i];
		$t="select * from complaint where complain_no='$p'";
           $tm=mysql_query($t);
          while(($tr=mysql_fetch_assoc($tm)))
		  {	
		    echo "<tr>"; 
		  
		  echo "<td>".$tr['name']."</td>";
		echo "<td>" . $tr['registration_no'] . "</td>";
			echo "<td>" . $tr['address']. "</td>";
			echo "<td>" . $tr['block']. "</td>";
			echo "<td>" . $tr['house_no']. "</td>";
			  echo "<td>" . $tr['mobile_no']. "</td>";
			echo "<td>" . $tr['complain']. "</td>";
			echo "<td>" . $tr['date']. "</td>";
			echo "<td>" . $tr['email']. "</td>";
			
			echo "<tr>";
		  }
	  }
		  }
	  
		  ?>
         
       
          
	
         </form>
        
         </table>
         </body>
    </html>