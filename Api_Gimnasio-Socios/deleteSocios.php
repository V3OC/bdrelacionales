<?php
    
    header("Content-Type: application/json");
    
    if($_SERVER['REQUEST_METHOD'] !== 'DELETE'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo DELETE es permitido']);

    }


    //conectar a la BD sakila
    require 'conexionGimnasio.php';

    
    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    


    $query = "DELETE FROM socios WHERE id = ?";


    $st = $conn->prepare($query);
    

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error en la consulta" . $conn->error()]);
        exit();
    }

    $st->bind_param("i", $id);
    $st->execute();

    if($st->affected_rows > 0){
        echo json_encode(["mensaje" => "Socio eliminado con exito"]);
    } else {
        http_response_code(404);
        echo json_encode(["error" => "No se encontro el socio con ID $id"]);

    }

    $st->close();
    $conn->close();


?>