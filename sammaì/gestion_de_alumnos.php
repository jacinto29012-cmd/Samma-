<?php

$accion = $_GET['accion'] ?? '';
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestión de Alumnos</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
    <h1>Panel de Gestión de Alumnos</h1>
    <nav>
        <a href="gestion_de_alumnos.php?accion=consultar">Consultar</a> |
        <a href="gestion_de_alumnos.php?accion=insertar">Insertar</a> |
        <a href="gestion_de_alumnos.php?accion=borrar">Borrar</a> |
        <a href="gestion_de_alumnos.php?accion=actualizar">Actualizar</a>
    </nav>
    <hr>

    <?php
 
    switch($accion) {
        case 'consultar':
            include('consulta_colegio.php');
            break;
        case 'insertar':
            include('inserta_alumnos.html');  
            break;
        case 'borrar':
            include('borrar_alumnos.html'); 
            break;
        case 'actualizar':
            include('actualizar_alumnos.php');  
            break;
        default:
            echo "<p>Selecciona una acción arriba para comenzar.</p>";
    }
    ?>
</body>
</html>