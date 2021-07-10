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

  constructor() { }

  ngOnInit(): void {
  }

}
