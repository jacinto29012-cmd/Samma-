<?php
$con = mysqli_connect("localhost","root","","colegio");
if(!$con)
{
	die("No se establecio la conexion cn el servidor:'.mysqli_error"());
}
// Evitar errores si alguna clave falta
    $id_matricula = $_POST['id_matricula'] ?? '';
    $especilidad = $_POST['especilidad'] ?? '';
    $nombre = $_POST['nombre'] ?? '';
    $apellidos = $_POST['apellidos'] ?? '';
    $fecha_nac = $_POST['fecha_nac'] ?? '';
    $direccion = $_POST['direccion'] ?? '';
    $telefono = $_POST['telefono'] ?? '';

    $sql = "INSERT INTO alumnos (id_matricula, especilidad, nombre, apellidos, fecha_nac, direccion, telefono)
            VALUES ('$id_matricula','$especilidad','$nombre','$apellidos','$fecha_nac','$direccion','$telefono')";


if(!mysqli_query($con, $sql))
{
	die('Error:'.mysqli_error($con));
}
echo "<center>";
echo "1 registro agregado<br>";
echo "<a href='gestion_de_alumnos.php'>Ver registro</a>";
mysqli_close($con);
?>
