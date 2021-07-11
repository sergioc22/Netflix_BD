import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { RegistrarPerfilSService } from './registrar-perfil-s.service';

@Component({
  selector: 'app-registrar-perfil',
  templateUrl: './registrar-perfil.component.html',
  styleUrls: ['./registrar-perfil.component.css']
})
export class RegistrarPerfilComponent implements OnInit {
  perfil:any;
  correo:any;
  constructor(private registrarPService: RegistrarPerfilSService, private route: ActivatedRoute) {
    this.correo = this.route.params
   }

  ngOnInit(): void {
    this.perfil = new FormGroup ({
      nombrePerfil: new FormControl('', Validators.required),
      id_usuario: new FormControl()
    })
  }
  get nombrePerfil() { return this.perfil.get('nombrePerfil'); }
  InsercionPerfil(){ 
  this.perfil.value.id_usuario = this.correo.value.email 
  this.registrarPService.InsercionPerfil(this.perfil.value).subscribe();
  alert("Suscripcion realizada con exito")
}
}
