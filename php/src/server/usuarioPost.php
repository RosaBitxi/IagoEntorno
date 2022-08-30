<?php
@session_start();
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

//Como é para meter datos na bbdd, angular pásalle os arquivos en formato json
//Neste punto recibense os arquivos, e decodificanse de json
$jsonUsuario= json_decode(file_get_contents("php://input"));
if(!$jsonUsuario) {
    exit("Not found");
}

//traballase cos arquivos en php
$bd= include_once "bd.php";

//funcions
function comprobarUsuario($novosDatos, $bd) {
    $eNovo = false; //por defecto, xa existe o usuario
    $sentenza = $bd->prepare("SELECT * FROM Usuarios where alias=:alias");
    $sentenza->bindParam(':alias',$novosDatos->alias);
    $sentenza->execute();

    if($sentenza->rowCount() == 0) {
        $eNovo=true;
    }

    return $eNovo;
}

//para insertar o usuario
if(comprobarUsuario($jsonUsuario, $bd)) {
$sentenza = $bd->prepare("INSERT into Usuarios(alias, email, passwd, animal, puntuacion) values (:alias, :email, :passwd, :animal, '0')");

$passwdEncript = password_hash(htmlspecialchars($jsonUsuario->passwd), PASSWORD_DEFAULT); //na bbdd esta encriptada
$aliasNew = htmlspecialchars($jsonUsuario->alias);
$emailNew = htmlspecialchars($jsonUsuario->email);
$animalNew = htmlspecialchars($jsonUsuario->animal);

$sentenza->bindParam(':alias',$aliasNew);
$sentenza->bindParam(':email',$emailNew);
$sentenza->bindParam(':passwd',$passwdEncript);
$sentenza->bindParam(':animal',$animalNew);
$resultado = $sentenza->execute();

//Unha vez que se crea un usuario na táboa, tamén se actualizan os valores a 0 de cada nivel correspondente
$usuario=$bd->prepare("SELECT * FROM Usuarios where alias=:alias");
$usuario->bindParam(':alias',$aliasNew);
$usuario->execute();
$userio=$usuario->fetch();

//aqui xa temos o ID de usuario
$_SESSION['idUsuario']=$userio['id'];


$sent = $bd->prepare("INSERT into UsuarioNivel(idUsuario, idNivel, completado) values (:idUsuario,'1','0')");
$sent->bindParam(':idUsuario',$userio['id']);
$sent->execute();

$sent = $bd->prepare("INSERT into UsuarioNivel(idUsuario, idNivel, completado) values (:idUsuario,'2','0')");
$sent->bindParam(':idUsuario',$userio['id']);
$sent->execute();

$sent = $bd->prepare("INSERT into UsuarioNivel(idUsuario, idNivel, completado) values (:idUsuario,'3','0')");
$sent->bindParam(':idUsuario',$userio['id']);
$sent->execute();

} else {
    exit();
}

// Para enviarlle de noo a saria a angular, volvese a codificar en json
echo json_encode([
    "resultado" => $resultado,
]);

?>