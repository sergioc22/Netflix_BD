import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class SerieService {
  URL = 'http://localhost/proyecto/Netflix_BD/API/'
  constructor(private http: HttpClient) { }

  obtenerSerie(idserie: any) {
    return this.http.get(`${this.URL}mostrarSerie.php?idserie=${idserie}`);
  }
  obtenerIdioma(idcontenido: any) {
    return this.http.get(`${this.URL}obtenerIdioma.php?idcontenido=${idcontenido}`);
  }
  obtenerEdad(idcontenido: any) {
    return this.http.get(`${this.URL}obtenerEdad.php?idcontenido=${idcontenido}`);
  }
  obtenerActor(idcontenido: any){
    return this.http.get(`${this.URL}obtenerActor.php?idcontenido=${idcontenido}`);
  }
  obtenerTemporada(idcontenido: any){
    return this.http.get(`${this.URL}obtenerTemporada.php?idcontenido=${idcontenido}`);
  }
  obtenerEpisodio(idtemporada: any){
    return this.http.get(`${this.URL}obtenerEpisodios.php?idtemporada=${idtemporada}`);
  }
  obtenerSuscripcion(idcontenido: any){
    return this.http.get(`${this.URL}obtenerSuscripcion.php?idcontenido=${idcontenido}`);
  }
  obtenerCalificacion(idcontenido: any, idperfil:any){
    let params = new HttpParams();

    params = params.append('idperfil', idperfil);
    params = params.append('idcontenido', idcontenido);
    return this.http.get(`${this.URL}obtenerCalificacion.php`, {
      params: params
  });
  }
  InsertarPuntuacion(califica: any){
    return this.http.post(`${this.URL}Insertarpuntuacion.php`, JSON.stringify(califica));
  }
  eliminarCalificacion(idcontenido: any, idperfil:any){
    let params = new HttpParams();

    params = params.append('idperfil', idperfil);
    params = params.append('idcontenido', idcontenido);
    return this.http.get(`${this.URL}eliminarPuntuacion.php`, {
      params: params
    });
  }
}
