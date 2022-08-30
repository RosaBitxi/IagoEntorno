<?php
header("Access-Control-Allow-Origin: http://localhost:4200");

if(empty($_GET['id'])) {
    exit("Not found");
}

$id=htmlspecialchars($_GET['id']);
$bd= include_once "bd.php";

$sentenza = $bd->prepare("SELECT * from UsuarioNivel where idUsuario=:id");
$sentenza->bindParam(':id',$id);
$sentenza->execute();

if($sentenza->rowCount() != 0) {
    $saida = $sentenza->fetchAll(PDO::FETCH_OBJ);
} else {
    $saida=false;
}

//saida cara o front
echo json_encode($saida);


?>