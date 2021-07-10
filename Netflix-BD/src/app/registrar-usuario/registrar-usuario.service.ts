import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class RegistrarUsuarioService {

  URL = 'http://localhost/proyecto/Netflix_BD/API/'
  baseUrl:string = "http://localhost/proyecto/Netflix_BD/API/";
  constructor(private http: HttpClient) { }

  listarPaises() {
    return this.http.get(`${this.URL}listarpaises.php`);
  }
  listarPlanes() {
    return this.http.get(`${this.URL}listarplanes.php`);
  }
  listarSuscripciones(idPlan: any) {
    return this.http.get(`${this.URL}listarsuscripciones.php?idPlan=${idPlan}`);
  }
  listarCiudades(idPais: any) {
    return this.http.get(`${this.URL}listarciudades.php?idPais=${idPais}`);
  }
  InsercionUsuario(usuario: any) {
    return this.http.post(`${this.URL}Insertarusuario.php`, JSON.stringify(usuario));
  }
  InsercionTarjeta(tarjeta: any) {
    return this.http.post(`${this.URL}Insertartarjeta.php`, JSON.stringify(tarjeta));
  }
  ObtenerId(email: any){
    return this.http.get(`${this.URL}obteneridUsuario.php?email=${email}`);
  }
  InsercionContrato(contrato: any){
    return this.http.post(`${this.URL}Insertarcontrato.php`, JSON.stringify(contrato));
  }
}
