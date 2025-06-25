<?php

    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD' ]!== 'PUT'){
         http_response_code(500);
         echo json_encode(['ERROR' => 'Solo metodo PUT es permitido']);


    }

    require 'conexiongimnasio.php';

    
    $input = json_decode(file_get_contents('php://input'), true);
    $id = intval($input["id"]);
    $nombre = $conn->real_escape_string($input["nombre"]);
    $peso = intval($input["peso"]);
    $altura = intval($input["altura"]);
    $sexo = intval($input["sexo"]);
    $edad = intval($input["edad"]);

    
    $query = "UPDATE socios SET nombre = ?, peso = ?, altura = ?, sexo = ?, edad = ?  WHERE id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta . $conn->error"]);
        exit();

    }

        $st->bind_param("ssssss", $nombre, $peso, $altura, $sexo, $edad, $id);

        if($st->execute()){
            if($st->affected_rows > 0){
                echo json_encode(["mensage" => "Socio actualizado correctamente"]);

            }else{
                http_response_code(404);
                echo json_encode(["error" => "No se encontro el socio con id: $id" ]);

            }
        }else{
                http_response_code(500);
                echo json_encode(["error" => "Error al ejecutar" . $st->error ]);
        }  

        $st->close();
        $conn->close();
            















?>