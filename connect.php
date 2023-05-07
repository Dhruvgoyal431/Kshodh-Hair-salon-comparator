<?php
$email=$_POST['email'];
$password=$_POST['password'];
// Database Connection
$conn = new mysqli('localhost','root','','kshodh',);
if($conn->connect_error)
{
die("Connection Failed : ".$conn->connect_error);
}
else
{
$statement=$conn->prepare("INSERT INTO login(email,password) VALUES(?,?)");
$statement->bind_param("ss",$email, $password);
$statement->execute();
header("Location: http://localhost/miniproject/index.html");
$statement->close();
$conn->close();
}
?>