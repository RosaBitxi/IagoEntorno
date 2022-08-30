<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

$bd= include_once "bd.php";

if(empty($_GET['nomeNivel'])) {
    exit("Not found");
}

$nomeNivel=htmlspecialchars($_GET['nomeNivel']);

//Non fai falla que Angular lle pase ningún dato
//Este arquivo só é de consulta
$sentenza = $bd->prepare("DELETE from Niveles where nome=:nome");
$sentenza->bindParam(':nome',$nomeNivel);
$resultado=$sentenza->execute();

//saida cara o front
echo json_encode($resultado);

?>