<?php

       header("Content-Type: application/json");

       if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'solo metodo POST es permitido']);
         
    
        }

        require 'conexiongimnasio.php';


        $data = json_decode(file_get_contents('php://input'), true);
        $nombre = $data['nombre'];
        $peso = $data['peso'];
        $altura = $data['altura'];
        $sexo = $data['sexo'];
        $edad = $data['edad'];


        $query = $conn->prepare("INSERT INTO socios (nombre, peso, altura, sexo, edad) VALUES (?, ?, ?, ?, ?)");

        if(!$query){
            http_response_code(500);
            echo json_encode(["error" => "Ocurrio un error"]);
            exit;

        }

        $query->bind_param("sssss", $nombre, $peso, $altura, $sexo, $edad);

        if($query->execute()){
            echo json_encode(["mensaje" => "Socio insertado correctamente", "id" => $query->insert_id]);

        }else{
            http_response_code(500);
            echo json_encode(["error" => "Fallo la incerción" . $query->error]);

        }

        $query->close();
        $conn->close();
        
    
    ?>