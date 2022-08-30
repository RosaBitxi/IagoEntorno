<?php
header("Access-Control-Allow-Origin: http://localhost:4200");
header("Access-Control-Allow-Headers: *");

//Obter os datos do usuario do login (/index)
$jsonUsuario= json_decode(file_get_contents("php://input"));
if(!$jsonUsuario) {
    exit("Not found");
}


//Conexión coa bbdd
$bd= include_once "bd.php";

$sentenza=$bd->query("SELECT * from Usuarios");
$usuariosExistentes=$sentenza->fetchAll();
$xaExiste=false; //por defecto, o usuario non existe
$eContrasinal=false; //por defecto, non coincide o contrasinal
$usuarioTarget; //esta sen inicializar

foreach($usuariosExistentes as $clave => $usuario) {
    if(strcmp($usuario['alias'],$jsonUsuario->alias) === 0) {
        $xaExiste=true;
        $usuarioTarget=$usuario;
        break;
    }
}

if(!$xaExiste) {
    $resultado="NOK-U";
} else {
    //no caso de existir, comprobase o contrasinal
    if($xaExiste) {
            if(password_verify($jsonUsuario->passwd,$usuarioTarget['passwd'])) {
                $eContrasinal=true;
            } else {
                $resultado="NOK-P";
            }
    }
}

if($xaExiste && $eContrasinal) {
    //devolve o id de usuario, no caso de existir
    $resultado=$usuarioTarget['id'];
}

// Para enviarlle de noo a saria a angular, volvese a codificar en json
echo json_encode([
    "resultado" => $resultado,
]);


?>