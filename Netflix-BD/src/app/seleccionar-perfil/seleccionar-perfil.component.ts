import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ListarPerfilesService } from './listar-perfiles.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-seleccionar-perfil',
  templateUrl: './seleccionar-perfil.component.html',
  styleUrls: ['./seleccionar-perfil.component.css']
})
export class SeleccionarPerfilComponent implements OnInit {
  perfil:any;
  correo:any;
  listaPerfiles:any;
  redirectUrl:any;
  constructor(private http:HttpClient, private formBuilder: FormBuilder,private listarServicio: ListarPerfilesService, private route: ActivatedRoute) {
    this.correo = this.route.params;
  }

  ngOnInit(): void {
    this.listarPerfiles();
    this.perfil = new FormGroup({
      idPerfil: new FormControl(),
      nombrePerfil: new FormControl()
    });
  }
  listarPerfiles(){
    this.listarServicio.listarPerfiles(this.correo.value.email).subscribe(
      datos => this.listaPerfiles = datos
    );
  }
  irRegistrar(){
    this.redirectUrl = '/ListaPerfiles/'+this.correo.value.email ;
  }
  hayRegistros() {
    if(this.listaPerfiles == null) {
      return false;
    } else {
      return true;
    }
  }
  validarNumeroPerfiles(i: any){
    if(i>5)
      return false;
      else  
      return true;
  }
  EliminarPerfil(idPerfil: any) {
    this.listarServicio.EliminarPerfil(idPerfil).subscribe(
      datos => {
          this.listarPerfiles();
      }
    );
  }
}
