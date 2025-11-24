<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css.css">
<meta charset="utf-8"/>
</head>
<body>

<?php
// Conexión
$con = mysqli_connect("localhost","root","","colegio");
if (!$con) {
    die("Error de conexión: " . mysqli_connect_error());
}

$MATRICULA = $_POST['id'];


$resultado = mysqli_query($con, "SELECT * FROM alumnos WHERE id_matricula = '$MATRICULA'");
if ($resultado === FALSE) {
    die("Error en la consulta: " . mysqli_error($con));
}


echo "<center>";
echo '<form action="actualizar3_alumnos.php" method="POST">';
echo "<h1>Editar Datos</h1>";
echo '<table border="0">';

while($row = mysqli_fetch_assoc($resultado)) {
    echo "<tr><td>Matricula:</td><td><input type='text' name='id_matricula' value='" . $row['id_matricula'] . "'></td></tr>";
    echo "<tr><td>Especilidad:</td><td><input type='text' name='especilidad' value='" . $row['especilidad'] . "'></td></tr>";
    echo "<tr><td>Nombre:</td><td><input type='text' name='nombre' value='" . $row['nombre'] . "'></td></tr>";
    echo "<tr><td>Apellidos:</td><td><input type='text' name='apellidos' value='" . $row['apellidos'] . "'></td></tr>";
    echo "<tr><td>fecha_nac:</td><td><input type='date' name='fecha_nac' value='" . $row['fecha_nac'] . "'></td></tr>";
    echo "<tr><td>Dirección:</td><td><input type='text' name='direccion' value='" . $row['direccion'] . "'></td></tr>";
    echo "<tr><td>Teléfono:</td><td><input type='text' name='telefono' value='" . $row['telefono'] . "'></td></tr>";
}

echo "</table>";
echo "<br><input type='submit' value='Actualizar Alumnos'>";
echo "</form>";
echo "</center>";

// Cerrar conexión
mysqli_close($con);
?>

</body>
</html>