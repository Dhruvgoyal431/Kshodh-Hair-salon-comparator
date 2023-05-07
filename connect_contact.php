<?php
$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$email=$_POST['email'];
$subject=$_POST['subject'];
// Database Connection
$conn = new mysqli('localhost','root','','kshodh',);
if($conn->connect_error)
{
die("Connection Failed : ".$conn->connect_error);
}
else
{
$statement=$conn->prepare("INSERT INTO conatctus(firstname,lastname,email,subject) VALUES(?,?,?,?)");
$statement->bind_param("ssss",$firstname,$lastname,$email,$subject);
$statement->execute();
header("Location: http://localhost/miniproject/index.html");
$statement->close();
$conn->close();
}
?>