<?php

session_start();

$db_host="127.0.0.1";
$db_username="root";
$db_pass="";
$db_name="registration";

@mysql_connect("$db_host","$db_username","$db_pass") or die ("oopppsss...cannot connect to MySQL database");
@mysql_select_db("$db_name") or die ("database not found");

$username=$_POST['email'];
$password=$_POST['password'];

if($username&&$password)
{
	$query=mysql_query("SELECT * FROM `registration`.`register` WHERE `Password`='$password' AND `Username`='$username'" );
	$rowcount=mysql_num_rows($query);
	
	if($rowcount==0)
	{
		echo 'user not found';
	}
	else
	{
		$_SESSION['username']=$username;
		echo $_SESSION['username'];
	}

}
else
{
	echo("null");
}

?>