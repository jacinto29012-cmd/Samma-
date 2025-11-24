<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css.css">
<meta charset="utf 8"/>
<style type="text/css"></style>
</head>
<body>
<?php
$con = mysqli_connect("localhost","root","","colegio");
$resultado = mysqli_query($con,"select * from alumnos");
if($resultado === FALSE){
	echo "fallo";
	die(mysqli_error());
}
echo "<center>";
echo "<h1>Actualizar Datos</h1>";
echo "<table border='1'>
<tr>
<th>Matricula</th>
<th>especilidad</th>
<th>nombre</th>
<th>Apellidos</th>
<th>fecha_nac</th>
<th>direccion</th>
<th>telefono</th>
</tr>";

while($row=mysqli_fetch_array($resultado))
{
    echo "<tr>";
    echo "<td align='center'>" . $row['id_matricula'] . "</td>";
    echo "<td>" . $row['nombre'] . "</td>";
    echo "<td>" . $row['especilidad'] . "</td>";
    echo "<td>" . $row['apellidos'] . "</td>";
    echo "<td>" . $row['fecha_nac'] . "</td>";
    echo "<td>" . $row['direccion'] . "</td>";
    echo "<td align='center'>" . $row['telefono'] . "</td>";
    echo "</tr>";
}

echo "</table>";
$registros=mysqli_num_rows($resultado);
echo "<br>registros: ".$registros;

mysqli_close($con);
?>
<h3>Escribe la MATRICULA del Registro a editar</h3>
<form action="actualizar2_alumnos.php" method="post">
Matricula: <input type=text name=id />
<input type="submit" value="Editar" />
</form>
</body>
</html>