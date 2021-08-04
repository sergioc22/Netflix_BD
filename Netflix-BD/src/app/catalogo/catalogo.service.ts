import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class CatalogoService {
  URL = 'http://localhost/proyecto/Netflix_BD/API/'
  constructor(private http: HttpClient) { }
  obtenerUsuario(idperfil: any) {
    return this.http.get(`${this.URL}obtenerUsuario.php?idperfil=${idperfil}`);
  }
  listarPeliculas() {
    return this.http.get(`${this.URL}obtenerPeliculas.php`);
  }

  listarSeries() {
    return this.http.get(`${this.URL}obtenerSeries.php`);
  }
  
  listarRecomendaciones(idperfil: any){
    return this.http.get(`${this.URL}listarRecomendaciones.php?idperfil=${idperfil}`);
  }
}
