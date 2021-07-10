import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class LoginServicioService {

  URL = 'http://localhost/proyecto/Netflix_BD/API/';

  constructor(private http: HttpClient) { }
}
