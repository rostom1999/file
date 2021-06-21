<?php

$username="root";//change username 
$password=""; //change password
$host="localhost";
$db_name="databasephp"; //change databasename
echo"ssssssseeeeee" ;

$connect=mysqli_connect($host,$username,$password,$db_name);


    $first = $_GET['first'];
    $last = ($_GET['last']);
    $msg = ($_GET['msg']);

/*
$first = "1";
$last = "2";
$msg = "3";
*/
        
        $sql="INSERT INTO ftt(first,last,msg) VALUES('$first','$last','$msg')" ;
        
        $db =$connect;
       
            $query = $db->prepare($sql) or die( $db->error); 
            
           /* $query->execute
            ([
                'first' => $first,
                'last' => $last,
                'msg' => $msg,
                
          
                
            ]); */
            $query->execute() ;

       




?>