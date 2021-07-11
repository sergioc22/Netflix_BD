import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class RegistrarPerfilSService {
  URL = 'http://localhost/proyecto/Netflix_BD/API/'
  constructor(private http: HttpClient) { }
  InsercionPerfil(perfil: any) {
    return this.http.post(`${this.URL}Insertarperfil.php`, JSON.stringify(perfil));
  }
}
