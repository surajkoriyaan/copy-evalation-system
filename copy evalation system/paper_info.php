
<html>
<head>
<title>Upload Student Paper</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
 <link rel="stylesheet" href="engine1/style1.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/easySlider1.5.js"></script>
<script type="text/javascript" charset="utf-8">
// <![CDATA[
$(document).ready(function(){	
	$("#slider").easySlider({
		controlsBefore:	'<p id="controls">',
		controlsAfter:	'</p>',
		auto: true, 
		continuous: true
	});	
});
// ]]>
</script>
<style type="text/css">
#slider { margin:0; padding:0; list-style:none; }
#slider ul,
#slider li { margin:0; padding:0; list-style:none; }
/* 
    define width and height of list item (slide)
    entire slider area will adjust according to the parameters provided here
*/
#slider li { width:850px; height:378px; overflow:hidden; padding:0; margin:0; }
p#controls { margin:0; position:relative; }
#prevBtn,
#nextBtn { display:block; margin:0; overflow:hidden; width:29px; height:29px; position:absolute; left:-35px; top:-220px; }
#nextBtn { left:855px; }
#prevBtn a { display:block; width:29px; height:29px; background:url(images/l_arrow.gif) no-repeat 0 0; }
#nextBtn a { display:block; width:29px; height:29px; background:url(images/r_arrow.gif) no-repeat 0 0; }
#ba
{
width:100px;
height:100px;
transition:width 2s, height 2s, transform 2s;
-webkit-transition:width 2s, height 2s, -webkit-transform 2s; /* Safari */
}

#ba:hover
{
width:1000px;
height:500px;
background-image:url(images/adst5.jpg);
transform:rotate(360deg);
-webkit-transform:rotate(360deg); /* Safari */
}
</style>
<meta name="google-translate-customization" content="8f37e2103fb030fe-95042fe6d0f44f8e-gaad2828c37621323-12"></meta>
</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<script type="text/javascript">
	function bak()
	{
	window.location.assign("optionsss.php");
}


</script>
<script type="text/javascript">
var __lc = {};
__lc.license = 3650281;

(function() {
	var lc = document.createElement('script'); lc.type = 'text/javascript'; lc.async = true;
	lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(lc, s);
})();

</script>
<body>


<?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$q1="select *from stu_info order by  id desc limit 1";
$sm=mysql_query("$q1");
$rms=mysql_fetch_assoc($sm);
?>

<?php
if(isset($_FILES['files']))
{
    $errors= array();
	foreach($_FILES['files']['tmp_name'] as $key => $tmp_name )
	{
		$file_name = $key.$_FILES['files']['name'][$key];
		$file_size =$_FILES['files']['size'][$key];
		$file_tmp =$_FILES['files']['tmp_name'][$key];
		$file_type=$_FILES['files']['type'][$key];	
		$sub=$_REQUEST['t1'];
		$sch_code=$_REQUEST['t2'];
		$roll=$_REQUEST['t3'];
		$sh_name=$_REQUEST['t4'];
		$sn_name=$_REQUEST['t5'];
		$st_name=$_REQUEST['t6'];
		

		
        if($file_size > 2097152)
		{
			$errors[]='File size must be less than 2 MB';
        }	
		
		$con=@mysql_connect("localhost", "root","");
		if(!$con)
		{
			echo "Not Connected";
		}
		$subject=$_POST['t1'];	
        $sch_code=$_POST['t2'];
		$roll=$_POST['t3'];
		 
		$loc="$subject/$sch_code/$roll/$file_name";
       	$sh_name= $_POST['t4'];
		$sn_name= $_POST['t5'];
		$st_name= $_POST['t6'];

		mysql_select_db("school_information");
        $qry="INSERT into upload_data(`USER_ID`,`FILE_NAME`,`FILE_SIZE`,`FILE_TYPE`,`SUB`,`SCH_ID`,`ROLL`,`loc`,`SCH_NAME`,`SCN_NAME`,`STU_NAME`) 
			   VALUES('','$file_name','$file_size','$file_type','$sub',$sch_code,$roll,'$loc','$sh_name','$sn_name','$st_name')";
		$smt=mysql_query($qry);	 

if(empty($errors)==true)
  {
	if(is_dir($subject)==false)
	  {
        mkdir("$subject", 0700);
				
		 if(empty($errors)==true)
		 {  
			if(is_dir($sch_code)==false)
		    {
			  mkdir("$subject/$sch_code", 0700);
							 
			  if(empty($errors)==true)
			  {
				if(is_dir($roll)==false)
				{
				  mkdir("$subject/$sch_code/$roll", 0700);
				  
				} 
				if(is_dir("$subject/$sch_code/$roll/".$file_name)==false)
		        {
                  $loc= move_uploaded_file($file_tmp,"$subject/$sch_code/$roll/".$file_name);
				  
		        }							  
			  }	   				             
			}
		 }
	  }					  
      
	 
	  
	  if(is_dir("$subject/$sch_code")==false)
	  {
	    mkdir("$subject/$sch_code", 0700);
	      if(empty($errors)==true)
		 {
			if(is_dir($roll)==false)
			{
			 mkdir("$subject/$sch_code/$roll", 0700);
			 
			} 
			if(is_dir("$subject/$sch_code/$roll/".$file_name)==false)
		    {
              $loc= move_uploaded_file($file_tmp,"$subject/$sch_code/$roll/".$file_name);
		    }							  
		 }
	  }
	  
	   if(is_dir("$subject/$sch_code/$roll")==false)
	  {
	   mkdir("$subject/$sch_code/$roll", 0700);
	   
	   
	  } 
	  if(is_dir("$subject/$sch_code/$roll/".$file_name)==false)
		 {
          $loc= move_uploaded_file($file_tmp,"$subject/$sch_code/$roll/".$file_name);
		 }	
	
       else
         {									
			$new_dir="$subject".$file_name.time();
			rename($file_tmp,$new_dir) ;				
          }
	
		 mysql_query($qry);	
		 	
	}  //end subject
		
	else
	{
         print_r($errors);
       }
    }//end foreach
	if(empty($error))
	{
	   
	}
	
	
}//end isset
?>





<div class="main">
  <div class="header">
    <div class="block_header">
    
      <div class="logo">
      <marquee behavior="alternate" direction="left"><font size="+5" color="#CCFF33" ><b> 
      e - Copy Evaluation System</b></font></marquee>
    
      </div>
      <div class="menu">
        <ul>
          <li><a href="home.php">Home</a></li>
          <li><a href="sch.regis.php">Registration</a></li>
          <li><a href="login.php" class="active">Login</a></li>
          <li><a href="result.php">Result</a></li>
          <li><a href="contactus.html"> Contact us</a></li>
        </ul>
        <div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE, multilanguagePage: true}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
        
      </div>
      <div class="clr"> </div>
    </div>
  </div>
  <div class="slider">
    <div class="slice1">
      
      
	<!--[if IE]><link rel="stylesheet" href="engine1/ie.css"><![endif]-->
	<!--[if lte IE 9]><script type="text/javascript" src="engine1/ie.js"></script><![endif]-->

	<div class='csslider1 autoplay '>
		<input name="cs_anchor1" id='cs_play1' type="radio" class='cs_anchor' checked>
		<input name="cs_anchor1" id='cs_pause1' type="radio" class='cs_anchor' >
		<ul>
			<div style="width: 100%; visibility: hidden; font-size: 0px; line-height: 0;">
				<img src="data1/images/9.jpg" style="width: 100%;">
			</div>
			<li class='num0 img'>
				<img src='data1/images/9.jpg' alt='9' title='9' />
			</li>
			<li class='num1 img'>
				<img src='data1/images/10.jpg' alt='10' title='10' />
			</li>
			<li class='num2 img'>
				<img src='data1/images/11.jpg' alt='11' title='11' />
			</li>
			<li class='num3 img'>
				<img src='data1/images/12.jpg' alt='12' title='12' />
			</li>
			<li class='num4 img'>
				<img src='data1/images/13.jpg' alt='13' title='13' />
			</li>
			<li class='num5 img'>
				<img src='data1/images/14.jpg' alt='14' title='14' />
			</li>
			<li class='num6 img'>
				<img src='data1/images/15.jpg' alt='15' title='15' />
			</li>
			<li class='num7 img'>
				<img src='data1/images/16.jpg' alt='16' title='16' />
			</li>
			<li class='num8 img'>
				<img src='data1/images/17.jpg' alt='17' title='17' />
			</li>
			<li class='num9 img'>
				<img src='data1/images/18.jpg' alt='18' title='18' />
			</li>
			<li class='num10 img'>
				<img src='data1/images/images_1.jpg' alt='images (1)' title='images (1)' />
			</li>
			<li class='num11 img'>
				<img src='data1/images/images_12.jpg' alt='images (12)' title='images (12)' />
			</li>
		
		</ul>
		
		
		
		
		
		
	  </div>
		<!-- End cssSlider.com -->
      
    </div>
  </div>
  <div class="clr"></div>
  
  
  	<div class="body">
    
    		<div class="body_resize">
      <!-- START CONTAINER ABOUT -->
		<div class="right1"><center>
         <font  size="+3" color="#FF6600" face="Georgia, Times New Roman, Times, serif"  > <b> Please  Upload the Details </b></font>
         <hr size="4" color="#00FFFF" width="600px">
         </center>

            <form name="student_info" id="student_info" action="" method="POST" enctype="multipart/form-data">
            
            
            <center><font color="#666666">
            
      			  
           		    <center>	
                   <table width="498" height="399">
                   
                    <tr>
           		       <td height="21"></td>
   		              <td width="232"><!--&nbsp;&nbsp;<b> scanner&nbsp;&nbsp;Name--></b></td>
            			<td width="239"><input type="hidden" readonly class="input2" name="t5" 
                        id="t5" value="<?php echo $rms['scn_name'] ?>"></td>
                		
                    </tr>
                   
                   
           			<tr>
           		       <td height="60"></td>
   		              <td width="232">&nbsp;&nbsp;<b> Subject&nbsp;&nbsp;Name</b></td>
            			<td width="239"><input type="text" readonly class="incoo" name="t1" 
                        id="t1"  value="<?php echo $rms['sub'] ?>"></td>
                		
                    </tr>
                    
                
                    <tr>
           		       <td height="60"></td>
   		              <td width="232">&nbsp;&nbsp;<b> School&nbsp;&nbsp;Name</b></td>
            			<td width="239"><input type="text" readonly class="incoo" name="t4" 
                        id="t4" title="Please Enter Student Roll Code" value="<?php echo $rms['sch_name'] ?>"></td>
                		
                    </tr>
                     	
       		 		<tr>
           		       <td height="60"></td>
   		              <td width="232">&nbsp;&nbsp;<b> School Registered&nbsp;&nbsp; code</b></td>
            			<td width="239"><input type="text" readonly class="incoo" name="t2" 
                        id="t2"  value="<?php echo $rms['sch_id'] ?>"></td>
                		
                    </tr>
                    
                    <tr>
           			 	<td width="11" height="60"></td>
   			 	       	<td width="232">&nbsp;&nbsp;<b> Student&nbsp;&nbsp; Name</b></td>
                     	<td width="239"><input type="text" class="incoo" name="t6"
                     					 id="t6" title="Please Enter Student Name">
            			</td>
                        
                       	
                     </tr>	
                     
                     <tr>
           			   	<td height="60"></td>
   			   	       <td width="232">&nbsp;&nbsp;<b> Roll  &nbsp;&nbsp; Number</b></td>
                        <td width="239"><input type="text" class="incoo" name="t3" 
                        				 id="t3" title="Please Enter Student Roll Number">
                		</td>
                       
                    </tr>
              

               		 <tr>
						<td height="60"></td>
           			 	<td width="74" height="60">
                          <b>select scanned folder</b></td>
   			 	     
                     	<td width="241">
                         <input type="file" name="files[]" multiple title="Please select the scan image folder"></td>
            			</td>

                     </tr>		
                </table>     
          	   	 </center>  
			   </div>
        
        <hr size="4" color="#00FFFF" width="600px">
       
        	<div><center> 
                <input type="button"  class="button" value="Back" onClick="bak()";>
             		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
                    
               		<input type="submit" class="button" name="e" id="e" value="Upload">
                    
                 </center>
                    
         
           </div>
           
        </form>   
      </div>   

	
      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="clr"></div>
</div>
</body>
</html>