<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

$bd= include_once "bd.php";

if(empty($_GET['nomeMonumento'])) {
    exit("Not found");
}

$nomeMonumento=htmlspecialchars($_GET['nomeMonumento']);

$sentenza = $bd->prepare("DELETE from Monumentos where nome=:nome");
$sentenza->bindParam(':nome',$nomeMonumento);
$resultado=$sentenza->execute();

//saida cara o front
echo json_encode($resultado);

?>