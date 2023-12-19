<?php 
$host="localhost";
$veritabani_ismi="trackingsystem_db";
$kullanici_adi="root";
$sifre="1234";

try {
	$db=new PDO("mysql:host=$host;dbname=$veritabani_ismi;charset=utf8",$kullanici_adi,$sifre);
}

catch (PDOExpception $e) {
	echo $e->getMessage();
}
$api_key="05a8acd63ecadfc55842804bc537f76e";
?>
