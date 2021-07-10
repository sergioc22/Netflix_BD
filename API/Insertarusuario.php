<?php 
// Ejemplo 
  header('Access-Control-Allow-Origin: *'); 
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
  
  $json = file_get_contents('php://input'); // RECIBE EL JSON DE ANGULAR
 
  $params = json_decode($json); // DECODIFICA EL JSON Y LO GUARADA EN LA VARIABLE
  
  require("../comun/db.php"); // IMPORTA EL ARCHIVO CON LA CONEXION A LA DB

  $conexion = conexion(); // CREA LA CONEXION
  
  // REALIZA LA QUERY A LA DB
  mysqli_query($conexion, "INSERT INTO Usuario(Email, Contraseña, Nombre_Usuario , Nombre, Apellido, Edad, Sexo, id_Ciudad) VALUES
                  ('$params->email', '$params->password', '$params->nombreUser', '$params->nombre', '$params->apellido', $params->edad, '$params->sexo', $params->id_ciudad)");    
  
  class Result {}

  // GENERA LOS DATOS DE REPUESTA
  $response = new Result();
  $response->resultado = 'OK';
  $response->mensaje = 'SE REGISTRO EXITOSAMENTE EL USUARIO';

  header('Content-Type: application/json');

  echo json_encode($response); // MUESTRA EL JSON GENERADO
?>