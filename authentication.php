<?php      
    include('connection.php');  
    $username = $_POST['user'];  
    $email = $_POST['eml']; 
    $number = $_POST['no']; 
    $password = $_POST['pass'];  
      
        //to prevent from mysqli injection  
        $username = stripcslashes($username);  
        $email = stripcslashes($email);  
        $number = stripcslashes($number);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($con, $username);  
        $email = mysqli_real_escape_string($con, $email);  
        $number = mysqli_real_escape_integer($con, $number);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select *from login where username = '$username' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
            echo "<h1><center> Login successful </center></h1>";  
        }  
        else{  
            echo "<h1> Login failed. Invalid username or password.</h1>";  
        }     
?>  