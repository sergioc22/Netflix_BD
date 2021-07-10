import { Injectable, EventEmitter, Output } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { map } from 'rxjs/operators';
import { Users } from './user';
@Injectable({
  providedIn: 'root'
})
export class ApiServicio {
  redirectUrl: string | undefined;
  URL = 'http://localhost/proyecto/Netflix_BD/API/';
  baseUrl:string = "http://localhost/proyecto/Netflix_BD/API/";
  @Output() getLoggedInName: EventEmitter<any> = new EventEmitter();
  constructor(private http: HttpClient,private httpClient : HttpClient) { }
  public userlogin(email: any, password: any) {
    //alert(username) //aparece el usuario de la persona que metio los datos
    return this.httpClient.post<any>(this.baseUrl + 'login.php', { email, password }).pipe(map(usuario => {
      this.setToken(usuario[0].name);
      this.getLoggedInName.emit(true);
    return Users;
    }));
    }

    setToken(token: string) {
      localStorage.setItem('token', token);
      }
        getToken() {
          return localStorage.getItem('token');
        }
        deleteToken() {
          localStorage.removeItem('token');
        }
        isLoggedIn() {
          const usertoken = this.getToken();
          if (usertoken != null) {
          return true
          }
          return false;
        }
}