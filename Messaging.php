<?php

session_start();

$db_host="127.0.0.1";
$db_username="root";
$db_pass="";
$db_name="registration";
$incr;
@mysql_connect("$db_host","$db_username","$db_pass") or die ("oopppsss...cannot connect to MySQL database");
@mysql_select_db("$db_name") or die ("database not found");

$user_id=$_POST['userID'];
$recipient=$_POST['recipient'];
$body=$_POST['body'];
$subject=$_POST['subject'];

$sql_subj = "SELECT `Subject` FROM `messages` ";
$query=mysql_query($sql_subj);

$sql = "INSERT INTO `registration`.`messages` (`ID`, `Body`, `Subject`, `User_ID`, `Recipient_ID`) VALUES (NULL,'$body','$subject','$user_id','$recipient');";
mysql_query($sql);


while ($incr=mysql_fetch_assoc($query)) {
	
	print_r($incr);

}






?>