<?php
header("Access-Control-Allow-Origin: http://localhost:4200");

if(empty($_GET['id'])) {
    exit("Not found");
}

$id=htmlspecialchars($_GET['id']);
$bd= include_once "bd.php";

$sentenza = $bd->prepare("SELECT * from Niveles where id=:id");
$sentenza->bindParam(':id',$id);
$sentenza->execute();

$saida = $sentenza->fetchAll(PDO::FETCH_OBJ);


//saida cara o front
echo json_encode($saida);


?>