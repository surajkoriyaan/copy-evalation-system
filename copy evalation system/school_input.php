
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>School input</title>
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

<?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$qw="select *from scn_info_id order by  id desc limit 1";
$s=mysql_query("$qw");
$r=mysql_fetch_assoc($s);

?>

<?php
$con=@mysql_connect("localhost","root","");
if(!$con)
{
	echo"connection failed";
}
mysql_select_db("school_information");
$err="";

$qury="select * from school_regis";
$smt=mysql_query("$qury");

	
while($rs=mysql_fetch_assoc($smt))
 {
	if($_SERVER["REQUEST_METHOD"]=="POST")
	{
   
   	    if($rs['sch_name']==$_POST["t2"] && $rs['reg_code']==$_POST["t3"])
		  {
			        $r1=$r['paper'];
					$r2=$rs['sch_name'];
					$r3=$rs['reg_code'];
			        $r4= $r['name'];	 
					$q2="insert into stu_info(sub,sch_name,sch_id,scn_name) values('$r1','$r2',$r3,'$r4')";
					mysql_query("$q2");  
		    		header("location:optionsss.php");
	      }
				
				
	    else
		{  
		    $err="Wrong Input";
		}
	
		 
   }
 }
   	
?>



<script type="text/javascript">
	function bak()
	{
	window.location.assign("home.php");
}
</script>
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
var __lc = {};
__lc.license = 3650281;

(function() {
	var lc = document.createElement('script'); lc.type = 'text/javascript'; lc.async = true;
	lc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.livechatinc.com/tracking.js';
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(lc, s);
})();
</script>
<body>
<form name="school_input" id="school_input" action="<?php echo $_SERVER["PHP_SELF"];?>" method="post">
<div class="main">
  <div class="header">
    <div class="block_header">
      <div class="logo"><font size="+4" color="#FFFFFF" >
            	<marquee behavior="alternate" direction="left"><font size="+5" color="#CCFF33" ><b> 
      e - Copy Evaluation System</b></font></marquee>
      				</font>
      </div>
      <div class="menu">
        <ul>
          <li><a href="home.php" >Home</a></li>
          <li><a href="sch.regis.php" >Registration</a></li>
          <li><a href="school_login.php" class="active">Login</a></li>
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
		<div class="right">
        
                <br>
                   <br>
                <br>
			       <div class="leftRegUnder"><br>
                   <br><br>
                   
                    <form name="ContactForm" id="ContactForm" action="contact_action.php" method="post">
                   <center> 
                   <hr size="3" color="#00CCFF" width="480">
<br>
                  
                   <table width="498">
            	  <tr>
                  <td width="281" height="50">
                   <font color="#CCFF33" size="+3"><center>  <b>Welcome</b></center></font>
                  </td>
                  <td width="205"> <input type="text" readonly class="incoo" name="t" 
                        				 id="t" value="<?php echo $r['name'] ?>">
                                         </td></tr></table>
                                         <hr size="3" color="#00CCFF" width="500">

                   
                   </center>
                   
                   
                   <center>
                   
                   <div class="login_window"> 
				 
                   
         		 <form id="registration" name="registration" method="post" 
                 						 action="regis_win_action.php"> 
       		       <center>	
                  	<br>
                   <br>
                   <table width="499" height="190">
           			
                     <tr>
           			 	<td width="61" height="60">&nbsp;</td>
       		  	 	   <td width="214">&nbsp;&nbsp;<b><font size="+1" color="#6699FF">Subject</font></b></td>
                   	 <td width="208"><input type="text" readonly class="incoo" name="t1" 
                        				 id="t1" value="<?php echo $r['paper'] ?>">
					   </td>
            			
                     </tr>		
                
               		 <tr>
           			   	<td height="60">&nbsp;</td>
       		     		<td width="214">&nbsp;&nbsp;<b><font size="+1" color="#6699FF">School Name</font> </b></b></td>
                       <td width="208"><input type="text" class="incoo" name="t2"
                     					 id="t2" title="Please Enter School Name">
                		</td>
                        
                    </tr>
              
       		 		<tr>
           		       <td height="60">&nbsp;</td>
       				  <td width="214">&nbsp;&nbsp;<b><font size="+1" color="#6699FF">Registered code</font> </b></td>
            			<td width="208"><input type="text" class="incoo" name="t3" 
                        				 id="t3" title="Please Enter school Registered code"></td>
                		
                    </tr>
        <font size="+3" color="#FF0000"> <?php echo "$err";?></font>
                 </table>
                 <br><br><br>   
          	   <hr size="3" color="#00CCFF" width="500">	  
			   <input type="button"  class="button" value="log out" onClick="bak();">           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <input type="submit"  class="button" value="submit">
               <hr size="3" color="#00CCFF" width="500">     
                   </center>
</form>               
                  
         		 </div>
                 
                     
           </div>
         

         
    
                
      </div>
	<div>	
		<a href="school_login.php">	<div class="lef1">
           <center>
            <img src="images/school.jpg" width="202" height="130">
            <font color="#993300" size="+2">School Login</font>
           </center>
        </div>
        </a>
        
        <a href="scn_login.php">
		<div class="lef2">
           <center>
           <img src="images/sca.jpg" width="202" height="100">
            <font color="#993300" size="+2">Scanner Login</font>
            </center></div></a>
	
    <a href="eva_login.php">
        <div class="lef2" align="center">
        <center><img src="images/eva.jpg" width="220" height="102"></center>
        <center> <font color="#993300" size="+2">Evaluator Login</font>
        </center> </div></a>
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