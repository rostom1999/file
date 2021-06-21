<?php

$username="root";//change username 
$password=""; //change password
$host="localhost";
$db_name="databasephp"; //change databasename


$connect=mysqli_connect($host,$username,$password,$db_name);


$first = $_GET['first'];
$last = ($_GET['last']);

/*
$first = "2";
$last = "1";
  */ 
        $sql="SELECT * FROM log where mail='$first' and pass='$last' " ;
        
           $db =$connect;
       
            $query = $db->prepare($sql) or die( $db->error); 
            
        
           // $query->execute() ;

             $result = $db->query($sql);
          
          
             if ($result->num_rows > 0){
                $response["comments"] = array();
                while ($row = $result -> fetch_assoc()){
                    $commentlist = array();
                    $commentlist['first'] = $row['mail'];
                    $commentlist['last'] = $row['pass'];
                  //  $commentlist['msg'] = $row['msg'];
          
                    array_push($response["comments"],$commentlist);
                }
                echo json_encode($response);
            }else{
                echo "nodata";
           
            }






?>