<?php
    header("Content-Type: application/json");
    header("Access-Contorl-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Juan Ochoa", "correo" => "juano@gmail.com"],
        ["id" => 1, "nombre" => "Victor Ojeda", "correo" => "victoro@gmail.com"],
        ["id" => 1, "nombre" => "Luis Perez", "correo" => "luisp@gmail.com"],
    ];

    echo json_encode($usuarios);
    
?>