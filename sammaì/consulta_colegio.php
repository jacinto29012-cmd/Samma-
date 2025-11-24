<meta charset="8">
<html>
<head>
  <title>Consultar colegio</title>
  <link rel="stylesheet" type="text/css" href="Css.css">
  <meta charset="utf-8"/>
  <style type="text/css"></style>
 </head>
 <body>
 <center>
 <?php
 $con = mysqli_connect("localhost", "root","","colegio");
 $resultado = mysqli_query($con,"select * from alumnos");

 if($resultado === FALSE) {
 echo "fallo";
 die(mysqli_error());
 }
 echo "<center><font face='Arial>";
 echo "<a href='consulta_colegio.php'>Actualizar tabla</a>";
 echo "<h1>Consulta de la tabla alumnos</h1>";
 echo "<table border='1'>
 <tr>
 <th>id_matricula</th>
 <th>especilidad</th>	
<th>nombre</th>
<th>apellidos</th>
<th>fecha_nac</th>
<th>direccion</th>
</tr>";
while($row=mysqli_fetch_array($resultado))
{
	echo"<tr>";
	echo"<td align=center>".$row['id_matricula']."</td>";
	echo"<td>".$row['especilidad']."</td>";
	echo"<td>".$row['nombre']."</td>";
	echo"<td>".$row['apellidos']."</td>";
	echo"<td>".$row['fecha_nac']."</td>";
	echo"<td align=center>".$row['direccion']."</td>";
	echo"</tr>";
	}
	echo "</table>";
	$registros=mysqli_num_rows($resultado);
	echo "<br>Registros:".$registros;
	mysqli_close($con);
?>
</center></body></html>