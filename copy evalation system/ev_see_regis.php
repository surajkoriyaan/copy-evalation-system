
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Scanner Login Form</title>
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

<script type="text/javascript">
	function home()
	{
	window.location.assign("home.php");
}

function next()
	{
	window.location.assign("eva_login.php");
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
<?php
	
		$con=mysqli_connect("localhost", "root","","school_information");
		
		$sq="select *from eve_info order by id desc limit 1";
		$sm1=mysqli_query($con,$sq);
		$rs=mysqli_fetch_assoc($sm1);
	    $t4=$rs['paper'];
		
		if($t4=="English")
		{
		$sq="select *from evaluator_eng order by ev_id desc limit 1";
		$sm=mysqli_query($con,$sq);
		$rs=mysqli_fetch_assoc($sm);
		
		$n=$rs['ev_name'];
		$c=$rs['contact'];
		$e=$rs['email'];
		$p=$rs['paper'];
		$pa=$rs['pass'];
		$id=$rs['ev_id'];
		$qry="insert into evaluator(ev_name,contact,email,paper,pass,id)values('$n','$c','$e','$p','$pa',$id)";
		$smt=mysqli_query($con,$qry);
	     
		}
		
		
		/*if($t4=="Hindi")
		{
		$sq="select *from evaluator_hin order by ev_id desc limit 1";
		$sm=mysql_query($sq);
		$rs=mysql_fetch_assoc($sm);
		
		$n=$rs['ev_name'];
		$c=$rs['contact'];
		$e=$rs['email'];
		$p=$rs['paper'];
		$pa=$rs['pass'];
		$id=$rs['ev_id'];
		$qry="insert into evaluator(ev_name,contact,email,paper,pass,id)values('$n','$c','$e','$p','$pa',$id)";
		$smt=mysql_query($qry);
		}
		
		
		if($t4=="Math")
		{
		$sq="select *from evaluator_math order by ev_id desc limit 1";
		$sm=mysql_query($sq);
		$rs=mysql_fetch_assoc($sm);
		
		$n=$rs['ev_name'];
		$c=$rs['contact'];
		$e=$rs['email'];
		$p=$rs['paper'];
		$pa=$rs['pass'];
		$id=$rs['ev_id'];
		$qry="insert into evaluator(ev_name,contact,email,paper,pass,id)values('$n','$c','$e','$p','$pa',$id)";
		$smt=mysql_query($qry);
	     
		}
		
		
		if($t4=="Science")
		{
		$sq="select *from evaluator_sci order by ev_id desc limit 1";
		$sm=mysql_query($sq);
		$rs=mysql_fetch_assoc($sm);
		
		$n=$rs['ev_name'];
		$c=$rs['contact'];
		$e=$rs['email'];
		$p=$rs['paper'];
		$pa=$rs['pass'];
		$id=$rs['ev_id'];
		$qry="insert into evaluator(ev_name,contact,email,paper,pass,id)values('$n','$c','$e','$p','$pa',$id)";
		$smt=mysql_query($qry);
	     
		}
		
		
		if($t4=="SST")
		{
		$sq="select *from evaluator_s_sci order by ev_id desc limit 1";
		$sm=mysql_query($sq);
		$rs=mysql_fetch_assoc($sm);
		
		$n=$rs['ev_name'];
		$c=$rs['contact'];
		$e=$rs['email'];
		$p=$rs['paper'];
		$pa=$rs['pass'];
		$id=$rs['ev_id'];
		$qry="insert into evaluator(ev_name,contact,email,paper,pass,id)values('$n','$c','$e','$p','$pa',$id)";
		$smt=mysql_query($qry);
	     
		}*/
		
?>

<div class="main">
  <div class="header">
    <div class="block_header">
      <div class="logo"><marquee behavior="alternate" direction="left"><font size="+5" color="#CCFF33" ><b> 
      e - Copy Evaluation System</b></font></marquee>
      </div>
      <div class="menu">
        <ul>
          <li><a href="home.php" >Home</a></li>
          <li><a href="sch.regis.php" class="active">Registration</a></li>
          <li><a href="school_login.php">Login</a></li>
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
                 <br> <br>
                 
			       <div class="leftRegUnder"><br>
                   <br><br>
                   
                   <form id="registration" name="registration" method="post" 
                 						 action="regis_win_action.php"> 
                   <center> 
                   <font color="#CCFF33" size="+2">
                   <strong>REGISTERED &nbsp;&nbsp;&nbsp;&nbsp;  SUCCESSFULLY
                   </strong>
                   </font>
                   </center>
                   <br>
                   <hr size="3" color="#FF6600" width="520">
                    <br>
                     <br>
                      <br>
                   <center>
                   
                   <div class="login_window"> 
				 
                   
         		 <form id="registration" name="registration" method="post" 
                 						 action="regis_win_action.php"> 
           		    <center>	
                  	
                   <table width="499" height="190">
           			
                     <tr>
           			 	<td width="92" height="60">
                     	<img src="images/User-Male.png" width="70" height="58"></td>
       		  	 	   <td width="169">&nbsp;&nbsp;<b> &nbsp;&nbsp; <font color="#FF6600" size="+1">Name</font></b></td>
                   	 <td width="222"><input type="text" class="incoo" value="<?php
				  						 echo $rs['ev_name'] ?>" name="nam1">
					   </td>
            			
                     </tr>		
                
               		 <tr>
           			   	<td height="60">
                        <img src="images/Protection.png" width="62" height="50"></td>
       		     		<td width="169">&nbsp;&nbsp;<b><font color="#FF6600" size="+1"> Registered code</font>&nbsp;&nbsp;</b></td>
                       <td width="222"><input type="text" class="incoo" value="<?php
				  						 echo $rs['ev_id'] ?>" >
                		</td>
                        
                    </tr>
              
       		 		<tr>
           		       <td height="60">
                       <img src="images/key_lock-animated - Copy.gif" width="55" height="60"></td>
       				  <td width="169">&nbsp;&nbsp;<b><font color="#FF6600" size="+1">Your&nbsp;&nbsp; Password</font></b></td>
            			<td width="222"><input type="text" class="incoo" value="<?php
				   echo $rs['pass'] ?>" name="pas1"></td>
                		
                    </tr>
         
                 </table>
                 <br><br>   
         <hr size="3" color="#FF6600" width="520"> 	   	  
			   <input type="button"  class="button" value="Home" onClick="home();">           
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <input type="button"  class="button" value="Proceed To Login >>" onClick="next()";>
                    
                   </center>
</form>               
              <hr size="3" color="#FF6600" width="520">    
         		 </div>
                 
                     
           </div>
         

         
    
                
      </div>
	<div>	
		
		<a href="sch.regis.php">  <div class="lef1">
           <center>
            <img src="images/school.jpg" width="202" height="130">
            <font color="#993300" size="+2">School Registration</font>
           </center>
        </div></a>
	 <a href="scn_regis.php">	<div class="lef2">
           <center>
           <img src="images/sca.jpg" width="202" height="100">
            <font color="#993300" size="+2">Scanner Registration</font>
            </center></div></a>
	
        <a href="eva_regis.php"> <div class="lef2" align="center">
        <center><img src="images/eva.jpg" width="220" height="102"></center>
        <center> <font color="#993300" size="+2">Evaluator Registration</font></center> </div></a>
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