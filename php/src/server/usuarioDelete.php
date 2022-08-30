<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

$bd= include_once "bd.php";

if(empty($_GET['nomeUsuario'])) {
    exit("Not found");
}

$nomeUsuario=htmlspecialchars($_GET['nomeUsuario']);

//Non fai falla que Angular lle pase ningún dato
//Este arquivo só é de consulta
$sentenza = $bd->prepare("DELETE from Usuarios where alias=:alias");
$sentenza->bindParam(':alias',$nomeUsuario);
$resultado=$sentenza->execute();

//saida cara o front
echo json_encode($resultado);

?>