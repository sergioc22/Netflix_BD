import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators, FormControl } from '@angular/forms';
import { Router } from '@angular/router';
import { HttpClient } from '@angular/common/http';
import { ApiServicio } from '../servioLogin';
import { first } from 'rxjs/operators';
import { LoginServicioService } from './login-servicio.service';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  usuario = new FormGroup({
    email: new FormControl(),
    password: new FormControl()
  });
  submitted = false;
  constructor(private dataService: ApiServicio, private httpClient: HttpClient, private router: Router, private formBuilder: FormBuilder ) { }

  ngOnInit(): void {
  }
  iniciarSesion(){
    this.submitted = true;
    this.iniciar_Sesion(this.usuario)
  }

  iniciar_Sesion(usuario: any){
    this.dataService.userlogin(usuario.value.email, usuario.value.password).pipe(first()).subscribe(
      data => {
        const redirect = this.dataService.redirectUrl ? this.dataService.redirectUrl : '/ListaPerfiles';
        this.router.navigate([redirect]);
    });
  }


}
