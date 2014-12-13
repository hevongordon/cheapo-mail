<?php

$db_host="127.0.0.1";
$db_username="root";
$db_pass="";
$db_name="registration";
@mysql_connect("$db_host","$db_username","$db_pass") or die ("oopppsss...cannot connect to MySQL database");
@mysql_select_db("$db_name") or die ("database not found");
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['email'];
$pword=$_POST['pword'];


//INSERT INTO `registration`.`register` (`ID`, `First Name`, `Last Name`, `Password`, `Username`) VALUES (NULL, 'Yanique', 'Dickson', 'yanyan1', 'yandix@gmail.com');
//if(isset($_POST['fname'],$_POST['lname'],$_POST['email'],$_POST['pword'],$_POST['rpword'])==false)

if($fname==""||$lname==""||$email==""||$pword=="" && $_POST['rpword']=="")
{
	
	echo 'blank';

}

else if(!preg_match("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8}$/", $pword))
{
	echo 'failed pattern';
}

else
{
mysql_query("INSERT INTO `registration`.`register` (`ID`, `First Name`, `Last Name`, `Password`, `Username`) VALUES (NULL, '$fname','$lname','$pword','$email');");
echo 'written to database';
}

	

?>