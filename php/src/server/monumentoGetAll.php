<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
$bd= include_once "bd.php";

//Non fai falla que Angular lle pase ningún dato
//Este arquivo só é de consulta
$sentenza = $bd->query("SELECT * from Monumentos");

$monumentos= $sentenza->fetchAll(PDO::FETCH_OBJ);

//saida cara o front
echo json_encode($monumentos);

?>