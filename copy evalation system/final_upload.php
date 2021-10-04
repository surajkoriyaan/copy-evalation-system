<html>
<body>


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
		$sch=$_REQUEST['t2'];
		$roll=$_REQUEST['t3'];
		
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

		mysql_select_db("data");
        $qry="INSERT into upload_data(`USER_ID`,`FILE_NAME`,`FILE_SIZE`,`FILE_TYPE`,`SUB`,`SCH`,`ROLL`,`loc`) 
			   VALUES('','$file_name','$file_size','$file_type','$sub',$sch,$roll,'$loc')";
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
		$loc="$subject/$sch_code/$roll/$file_name";
		echo "Success";
		echo "$loc";	
	}
	
	
}//end isset
?>


<form action="" method="POST" enctype="multipart/form-data">
	<input type="file" name="files[]" multiple/><br>
    <input type="text" name="t1"><br>
     <input type="text" name="t2"><br>
     <input type="text" name="t3"><br>
	<input type="submit"/>
</form>
</body></html>