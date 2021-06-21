<?php
/*
class config {
private static $pdo = NULL;
public static function getConnexion() {
if (!isset(self::$pdo)) {
try{
self::$pdo = new PDO('mysql:host=localhost;dbname=databasephp','root','', 
[

PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC


]);

}catch(Exception $e){
die('Erreur: '.$e->getMessage());
print($e->getMessage) ; 
}
}
return self::$pdo;
}


}*/


    $username="root";//change username 
	$password=""; //change password
	$host="localhost";
	$db_name="databasephp"; //change databasename
	

	$connect=mysqli_connect($host,$username,$password,$db_name);
	

	if(!$connect)
	{
		echo json_encode("Connection Failed");
	}

?>