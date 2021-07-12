import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ListarPerfilesService {
  URL = 'http://localhost/proyecto/Netflix_BD/API/'
  constructor(private http: HttpClient) { }

  listarPerfiles(email: any) {
    return this.http.get(`${this.URL}listarPerfiles.php?email=${email}`);
  }
  EliminarPerfil(idPerfil: number) {
    return this.http.get(`${this.URL}EliminarPerfil.php?idPerfil=${idPerfil}`);
  }
}
