<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");

/*
//Esto equivale a imaxe subida, xunto cos datos do monumento
$jsonMonumento= json_decode(file_get_contents("php://input"));
if(!$jsonMonumento) {
    exit("Not founderrrrr");
}

//para movela á carpeta desexada
$nomeImaxe = $_FILES[$jsonMonumento->imaxe]['name'];
$extensionImaxe = $_FILES[$jsonMonumento->imaxe]['type'];
$nomeTmpImaxe = $_FILES[$jsonMonumento->imaxe]['tmp_name'];

//comprobase se é unha imaxe
if ( strpos($extensionImaxe, "gif") ||
    strpos($extensionImaxe, 'jpeg') ||
    strpos($extensionImaxe, "jpg") ||
    strpos($extensionImaxe, "png") ) {
    //Neste caso, subeuse unha imaxe, e movese para a carpeta desexada
    if (move_uploaded_file($nomeTmpImaxe, "/assets/monuments/". $nomeImaxe)) {
        $resultado= true;
    }
} else {
    $resultado = false;
}

//saida do programa de php
echo json_encode([
    "resultado" => $resultado,
]);
*/
?>