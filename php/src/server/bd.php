<?php
//Conexion coa base de datos
$password='root';
$user='root';
$dbname='iago';

try {
    return new PDO('mysql:host=db;dbname='.$dbname,$user,$password);
} catch (Exception $error) {
    echo "Algo pasou" .$e->getMessage();
}
?>