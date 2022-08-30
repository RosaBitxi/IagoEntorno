<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

//Como é para meter datos na bbdd, angular pásalle os arquivos en formato json
//Neste punto recibense os arquivos, e decodificanse de json
$jsonNivel= json_decode(file_get_contents("php://input"));
if(!$jsonNivel) {
    exit("Not found");
}

$bd= include_once "bd.php";

//Comprobar que non hai un nivel con ese nome. Nese caso, pois engadeselle un "-2" ao novo nome do nivel
$sentenza=$bd->query("SELECT * from Niveles");
$nivelesExistentes=$sentenza->fetchAll();
$xaExiste=false; //por defecto, o nivel non existe
foreach($nivelesExistentes as $clave => $nivel) {
    if(strcmp($nivel['nome'],htmlspecialchars($jsonNivel->nome)) === 0) {
        $xaExiste=true;
        break;
    }
}

//no caso de existir, cámbiaselle o nome
$nome=htmlspecialchars($jsonNivel->nome);
if($xaExiste) {
    $novoNome= "". $nome ."-2";
} else {
    $novoNome=$nome;
}

//engadese o nivel na bbdd
$sentenza = $bd->prepare("INSERT into Niveles(mon1, mon2, mon3, dificultade, nome) values (:mon1, :mon2, :mon3, :dificultade, :nome)");
$sentenza->bindParam(':mon1',htmlspecialchars($jsonNivel->mon1));
$sentenza->bindParam(':mon2',htmlspecialchars($jsonNivel->mon2));
$sentenza->bindParam(':mon3',htmlspecialchars($jsonNivel->mon3));
$sentenza->bindParam(':dificultade',htmlspecialchars($jsonNivel->dificultade));
$sentenza->bindParam(':nome',$novoNome);
$resultado = $sentenza->execute();


// Para enviarlle de noo a saria a angular, volvese a codificar en json
echo json_encode([
    "resultado" => $resultado,
]);

?>