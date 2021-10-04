<html>
<head>
<style>
#t1
{
	position:absolute;
	top:90px;
	left:300px;
	border:groove;
	border-color:#D43F00;
	height:500px;
	width:700px;
	background-color:#CCC;
}

#tw
{
	position:absolute;
	top:190px;
	left:110px;
	height:180px;
	width:230px;
	background-image:url(WWWWW.jpg);
	background-repeat:no-repeat;
}

#twe
{
	position:absolute;
	top:190px;
	left:399px;
	height:120px;
	width:140px;
	background-image:url(EEEEEE.jpg);
	background-repeat:no-repeat;
}


#twci
{
	position:absolute;
	top:380px;
	left:110px;
	height:120px;
	width:140px;
	background-image:url(CIVILSA.jpg);
	background-repeat:no-repeat;
}


#twcl
{
	position:absolute;
	top:380px;
	left:399px;
	height:100px;
	width:240px;
	background-image:url(CLEAN.jpg);
	background-repeat:no-repeat;
	
}
.su
{
	color:#000000;
	background-color:#00DF00;
	border:double;
	background-color:#55DF55;

}
</style>
</head>
<body bgcolor="#FF9F55">
<div id="t1"><center><br><b><h3>SELECT DEPARTMENT FOR ASSIGNING WORK</h3>....................................
<form action="switch.php?action=assignComplain" method="post">
<div id="tw">
<center><table border="2"><tr><td width="1" ><input name="btnLogin" type="submit" class="su"  id="btnLogin" width="100px" size="900" value=" WATER "
></td></tr></table></center></div>


<div id="twe"><center><TABLE border="2"><tr><td width="2" ><input name="btnLogin1" type="submit" class="su" id="btnLogin1" width="800px" size="900" value=" ELECTRICITY "></td></tr></center></table></div>



<div id="twci"><center><TABLE border="2"><tr><td width="2" ><input name="btnLogin2" type="submit" class="su" id="btnLogin2" width="800px" size="900" value=" CIVIL"></td></tr></table></center></div>


<div id="twcl"><center><TABLE border="2"><tr><td width="2" ><input name="btnLogin3" type="submit" class="su" id="btnLogin3" width="800px" size="900" value=" CLEANING"></td></tr>
</table></center></div>
</form>

</div>
</body>

</html>