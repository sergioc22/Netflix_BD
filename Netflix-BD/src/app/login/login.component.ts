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
  usuario:any;
  submitted = false;
  constructor(private dataService: ApiServicio, private httpClient: HttpClient, private router: Router, private formBuilder: FormBuilder ) { }

  ngOnInit(): void {
    this.usuario = new FormGroup({
      email: new FormControl('',[Validators.email, Validators.required]),
      password: new FormControl('', Validators.required)
    });
  }
  get email() { return this.usuario.get('email'); }
  get password() { return this.usuario.get('password'); }
  iniciarSesion(){
    this.submitted = true;
    this.iniciar_Sesion(this.usuario)
  }

  iniciar_Sesion(usuario: any){
    this.dataService.userlogin(usuario.value.email, usuario.value.password).pipe(first()).subscribe(
      data => {
        const redirect = this.dataService.redirectUrl ? this.dataService.redirectUrl : '/ListaPerfiles';
        this.router.navigate([redirect]);
    }

    );
      alert("Correo o Contraseña incorrectos") 
  }
}
