<?php 
  header('Access-Control-Allow-Origin: *'); 
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
  
  global $datos; 
  
  require("../comun/db.php"); // IMPORTA EL ARCHIVO CON LA CONEXION A LA DB
 
  
  $conexion = conexion(); // CREA LA CONEXION

  // REALIZA LA QUERY A LA DB
  $registros = mysqli_query($conexion, "SELECT * FROM ciudad WHERE Id_Pais = $_GET[idPais]");
  
  // RECORRE EL RESULTADO Y LO GUARDA EN UN ARRAY
  while ($resultado = mysqli_fetch_array($registros))  
  
  {
    $datos[] = $resultado;
  }
  
  $json = json_encode($datos); // GENERA EL JSON CON LOS DATOS OBTENIDOS
  

  echo $json; // MUESTRA EL JSON GENERADO AL EJECUTAR DIRECTAMENTE EL LOCALHOST DE XAMPP
  
  
?>