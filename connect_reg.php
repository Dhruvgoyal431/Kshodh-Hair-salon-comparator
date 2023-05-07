<?php
$username=$_POST['username'];
$email=$_POST['email'];
$number=$_POST['number'];
$password=$_POST['password'];
// Database Connection
$conn = new mysqli('localhost','root','','kshodh');
if($conn->connect_error)
{
die("Connection Failed : ".$conn->connect_error);
}
else
{
$statement=$conn->prepare("INSERT INTO signup(username,email,number,password) VALUES(?,?,?,?)");
$statement->bind_param("ssis",$username,$email,$number,$password);
$statement->execute();
// echo("You have registered successfully!");
header("Location: http://localhost/miniproject/index.html");
$statement->close();
$conn->close();
}
?>