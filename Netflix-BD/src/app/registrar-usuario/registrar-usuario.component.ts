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
  usuario:any;
  
  tarjetaCredito: any;
  plan = new FormGroup({
    idPlan: new FormControl()
  });
   suscripcion= new FormGroup({
    idSuscripcion: new FormControl()
  });
  pais:any;
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
  constructor(private registrarUsuarioServicio: RegistrarUsuarioService,  private http:HttpClient, private formBuilder: FormBuilder) { }

  ngOnInit(): void {
    this.listarPaises();
    this.listarPlanes();
    this.usuario = new FormGroup({
      email: new FormControl('',[Validators.email, Validators.required]),
      password: new FormControl('',Validators.required),
      nombreUser: new FormControl('',Validators.required),
      nombre: new FormControl('',Validators.required),
      apellido: new FormControl('',Validators.required),
      edad: new FormControl('',[Validators.min(18), Validators.max(99), Validators.required]),
      sexo: new FormControl('',[Validators.required, Validators.maxLength(1)]),
      id_ciudad: new FormControl('', Validators.required)
    });
    this.tarjetaCredito = new FormGroup({
      numero: new FormControl('', [Validators.required, Validators.min(1)]),
      cvv: new FormControl('', [Validators.required, Validators.max(999), Validators.min(100)]),
      fechaVencimiento: new FormControl('', Validators.required),
    });
    this.pais= new FormGroup({
      idPais: new FormControl('',Validators.required)
    });

  }
  get email() { return this.usuario.get('email'); }
  get password() { return this.usuario.get('password'); }
  get nombreUser() { return this.usuario.get('nombreUser'); }
  get nombre() { return this.usuario.get('nombre'); }
  get apellido() { return this.usuario.get('apellido'); }
  get edad() { return this.usuario.get('edad'); }
  get sexo() { return this.usuario.get('sexo'); }
  get id_ciudad() { return this.usuario.get('id_ciudad'); }
  get numero() { return this.tarjetaCredito.get('numero'); }
  get cvv() { return this.tarjetaCredito.get('cvv'); }
  get fechaVencimiento() { return this.tarjetaCredito.get('fechaVencimiento'); }
  get idPais() { return this.pais.get('idPais'); }
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


