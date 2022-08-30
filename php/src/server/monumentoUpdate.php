<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Methods: PUT");
header("Access-Control-Allow-Headers: *");

//Como é para meter datos na bbdd, angular pásalle os arquivos en formato json
//Neste punto recibense os arquivos, e decodificanse de json
$jsonMonumento= json_decode(file_get_contents("php://input"));
if(!$jsonMonumento) {
    exit("Not found");
}

//Conexion e traballo coa BBDD
$bd= include_once "bd.php";

//Consulta na BBDD
$sentenza = $bd->prepare("UPDATE Monumentos set imaxe=:imaxe, descripcion=:descripcion, coord=:coord, vision=:vision WHERE nome=:nome");
$sentenza->bindParam(':nome',htmlspecialchars($jsonMonumento->nome));
$sentenza->bindParam(':descripcion',htmlspecialchars($jsonMonumento->descripcion));
$sentenza->bindParam(':coord',htmlspecialchars($jsonMonumento->coord));
$sentenza->bindParam(':vision',htmlspecialchars($jsonMonumento->vision));
$nomeImaxe=substr($jsonMonumento->imaxe, 12);
$sentenza->bindParam(':imaxe',$nomeImaxe);
$resultado = $sentenza->execute();

//saida cara o front
echo json_encode($resultado);

?>