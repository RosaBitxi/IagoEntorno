<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Methods: PUT");
header("Access-Control-Allow-Headers: *");

//Como é para meter datos na bbdd, angular pásalle os arquivos en formato json
//Neste punto recibense os arquivos, e decodificanse de json
$jsonNivel= json_decode(file_get_contents("php://input"));
if(!$jsonNivel) {
    exit("Not found");
}

//Conexion e traballo coa BBDD
$bd= include_once "bd.php";

//Consulta na BBDD
$sentenza = $bd->prepare("UPDATE Niveles set mon1=:mon1, mon2=:mon2, mon3=:mon3, dificultade=:dificultade WHERE nome=:nome");
$sentenza->bindParam(':mon1',htmlspecialchars($jsonNivel->mon1));
$sentenza->bindParam(':mon2',htmlspecialchars($jsonNivel->mon2));
$sentenza->bindParam(':mon3',htmlspecialchars($jsonNivel->mon3));
$sentenza->bindParam(':dificultade',htmlspecialchars($jsonNivel->dificultade));
$sentenza->bindParam(':nome',htmlspecialchars($jsonNivel->nome));
$resultado = $sentenza->execute();

//saida cara o front
echo json_encode($resultado);

?>