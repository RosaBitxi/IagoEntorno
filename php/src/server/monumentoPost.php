<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

//Como é para meter datos na bbdd, angular pásalle os arquivos en formato json
//Neste punto recibense os arquivos, e decodificanse de json
$jsonMonumento= json_decode(file_get_contents("php://input"));
if(!$jsonMonumento) {
    exit("Not found");
}

$bd= include_once "bd.php";

//Comprobar que non hai un monumento con ese nome. Nese caso, pois engadeselle un "-2" ao novo nome do monumento
$sentenza=$bd->query("SELECT * from Monumentos");
$monumentosExistentes=$sentenza->fetchAll();
$xaExiste=false; //por defecto, o monumento non existe
foreach($monumentosExistentes as $clave => $monumento) {
    if(strcmp($monumento['nome'],$jsonMonumento->nome) === 0) {
        $xaExiste=true;
        break;
    }
}
//no caso de existir, cámbiaselle o nome
$nome=htmlspecialchars($jsonMonumento->nome);
if($xaExiste) {
    $novoNome= "". $nome ."-2";
} else {
    $novoNome=$nome;
}


$sentenza = $bd->prepare("INSERT into Monumentos(nome, descripcion, coord, vision, imaxe) values (:nome, :descripcion, :coord, :vision, :imaxe)");
$sentenza->bindParam(':nome',$novoNome);
$sentenza->bindParam(':descripcion',htmlspecialchars($jsonMonumento->descripcion));
$sentenza->bindParam(':coord',htmlspecialchars($jsonMonumento->coord));
$sentenza->bindParam(':vision',htmlspecialchars($jsonMonumento->vision));
$nomeImaxe=substr($jsonMonumento->imaxe, 12);
$sentenza->bindParam(':imaxe',$nomeImaxe);
$resultado = $sentenza->execute();


// Para enviarlle de noo a saria a angular, volvese a codificar en json
echo json_encode([
    "resultado" => $resultado,
]);

?>