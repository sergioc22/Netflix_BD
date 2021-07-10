import { Component, Input, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { RegistrarUsuarioService } from './registrar-usuario.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ApiServicio } from '../servioLogin';
import { compileDeclareComponentFromMetadata } from '@angular/compiler';

@Component({
  selector: 'app-registrar-usuario',
  templateUrl: './registrar-usuario.component.html',
  styleUrls: ['./registrar-usuario.component.css']
})
export class RegistrarUsuarioComponent implements OnInit {
  submited=false;
  usuario = new FormGroup({
    email: new FormControl(),
    password: new FormControl(),
    nombreUser: new FormControl(),
    nombre: new FormControl(),
    apellido: new FormControl(),
    edad: new FormControl(),
    sexo: new FormControl(),
    id_ciudad: new FormControl()
  });
  tarjetaCredito = new FormGroup({
    numero: new FormControl(),
    cvv: new FormControl(),
    fechaVencimiento: new FormControl(),
  });
  plan = new FormGroup({
    idPlan: new FormControl()
  });
   suscripcion= new FormGroup({
    idSuscripcion: new FormControl()
  });
  pais= new FormGroup({
    idPais: new FormControl()
  });
  listaPaises:any;
  listaCiudades:any;
  listaPlanes:any;
  listaSuscripciones:any;
  user: any; 
  contrata = new FormGroup({
    idsuscripcion: new FormControl(),
    iduser: new FormControl(),
    idtarjeta: new FormControl()
  });
  constructor(private registrarUsuarioServicio: RegistrarUsuarioService,  private http:HttpClient, private dataService: ApiServicio) { }

  ngOnInit(): void {
    this.listarPaises();
    this.listarPlanes();
  }

  listarPaises() {
    this.registrarUsuarioServicio.listarPaises().subscribe(
      datos => this.listaPaises = datos
    );
  }
  listarPlanes(){
    this.registrarUsuarioServicio.listarPlanes().subscribe(
      datos => this.listaPlanes = datos
    );
  }
  listarSuscripciones(){
    this.registrarUsuarioServicio.listarSuscripciones(this.plan.value.idPlan).subscribe(
      datos => this.listaSuscripciones = datos
    );
  }
  listarCiudades(){
    this.registrarUsuarioServicio.listarCiudades(this.pais.value.idPais).subscribe(
      datos => this.listaCiudades = datos
    );
  }
  Registrar() { 
     
    this.submited = true;
    this.InsercionUsuario();

}

InsercionUsuario() {
     
  this.registrarUsuarioServicio.InsercionUsuario(this.usuario.value).subscribe();
  this.InsercionTarjeta();
}

InsercionTarjeta(){
  this.registrarUsuarioServicio.InsercionTarjeta(this.tarjetaCredito.value).subscribe();
  //this.ObtenerUser();
  this.InsercionContrato();

}
//ObtenerUser(){
  //this.registrarUsuarioServicio.ObtenerId(this.usuario.value.email).subscribe(
   // datos => this.user = datos
  //);
  //this.InsercionContrato();
//}
InsercionContrato(){
  this.contrata.value.idsuscripcion = this.suscripcion.value.idSuscripcion; 
  this.contrata.value.iduser = this.usuario.value.email;
  this.contrata.value.idtarjeta = this.tarjetaCredito.value.numero; 
  this.registrarUsuarioServicio.InsercionContrato(this.contrata.value).subscribe();
  alert("Suscripcion realizada con exito")
}
  hayRegistros() {
    if(this.listaPaises == null) {
      return false;
    } else {
      return true;
    }
  }
  hayUser() {
    if(this.user == null) {
      return false;
    } else {
      return true;
    }
  }
  hayRegistrosPlanes() {
    if(this.listaPlanes == null) {
      return false;
    } else {
      return true;
    }
  }
  hayRegistrosSuscripciones() {
    if(this.listaSuscripciones == null) {
      return false;
    } else {
      return true;
    }
  }
  hayRegistrosCiudades() {
    if(this.listaCiudades == null) {
      return false;
    } else {
      return true;
    }
  }
}


