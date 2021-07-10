<?php 
// Ejemplo 
  header('Access-Control-Allow-Origin: *'); 
  header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
  
  $json = file_get_contents('php://input'); // RECIBE EL JSON DE ANGULAR
 
  $params = json_decode($json); // DECODIFICA EL JSON Y LO GUARADA EN LA VARIABLE
  
  require("../comun/db.php"); // IMPORTA EL ARCHIVO CON LA CONEXION A LA DB

  $conexion = conexion(); // CREA LA CONEXION
  
  // REALIZA LA QUERY A LA DB
  mysqli_query($conexion, "INSERT INTO contrata(Id_Usuario, Id_Tarjeta, Id_Suscripcion, Fecha_Inicio, Fecha_Fin) VALUES
                  ((SELECT Id_Usuario FROM usuario WHERE email='$params->iduser'), $params->idtarjeta, $params->idsuscripcion, CURRENT_DATE, DATE_ADD(CURRENT_DATE, INTERVAL 30 DAY) )");    
  
  class Result {}

  // GENERA LOS DATOS DE REPUESTA
  $response = new Result();
  $response->resultado = 'OK';
  $response->mensaje = 'SE REGISTRO EXITOSAMENTE EL USUARIO';

  header('Content-Type: application/json');

  echo json_encode($response); // MUESTRA EL JSON GENERADO
?>