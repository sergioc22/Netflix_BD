import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ListarPerfilesService } from './listar-perfiles.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';

@Component({
  selector: 'app-seleccionar-perfil',
  templateUrl: './seleccionar-perfil.component.html',
  styleUrls: ['./seleccionar-perfil.component.css']
})
export class SeleccionarPerfilComponent implements OnInit {
  perfil:any;
  constructor(private http:HttpClient, private formBuilder: FormBuilder, listarServicio: ListarPerfilesService) { }

  ngOnInit(): void {
    this.perfil = new FormGroup({
      idPerfil: new FormControl(),
      nombrePerfil: new FormControl()
    });
  }

}
