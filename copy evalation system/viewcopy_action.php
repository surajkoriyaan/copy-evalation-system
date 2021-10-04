

<?php
$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
mysql_select_db("school_information");
$prefix = "";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
mysql_select_db($mysql_database, $bd) or die("Could not select database");

$sub=$_REQUEST['t1'];
$sch=$_REQUEST['t2'];
$roll=$_REQUEST['t3'];
$result = mysql_query("SELECT * FROM upload_data where (ROLL=$roll and  SUB='$sub' and  SCH_ID=$sch)");
while($row = mysql_fetch_array($result))
{
/*echo '<div id="imagelist">';
echo '<img height="50px" width="50px" src="'.$row['loc'].'">';
echo '<p id="caption">'.$row['ROLL'].' </p>';
echo '</div>';*/
header("location:.php");
}
?>