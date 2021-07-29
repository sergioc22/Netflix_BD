import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { ActivatedRoute } from '@angular/router';
import { PeliculaService } from './pelicula.service';

@Component({
  selector: 'app-pelicula',
  templateUrl: './pelicula.component.html',
  styleUrls: ['./pelicula.component.css']
})
export class PeliculaComponent implements OnInit {
  idPelicula:any;
  pelicula: any;
  idioma:any;
  clasificacion:any;
  director:any;
  actor:any;
  premio:any;
  suscripcion:any;
  calificacion:any;
  califica= new FormGroup({
    puntuacion: new FormControl(),
    idperfil: new FormControl(),
    idcontenido:new FormControl()
  })
  constructor(private route: ActivatedRoute, private peliculaServicio: PeliculaService) {
    this.idPelicula = this.route.params
   }

  ngOnInit(): void {
    this.mostrarPelicula();
    this.obtenerIdioma();
    this.obtenerEdad();
    this.ObtenerDirector();
    this.ObtenerActor();
    this.obtenerPremio();
    this.obtenerSuscripcion();
    this.obtenerCalificacion();
    this.califica = new FormGroup({
      puntuacion: new FormControl(),
      idperfil: new FormControl(),
      idcontenido:new FormControl()
    })
  }
  get puntuacion() { return this.califica.get('puntuacion'); }

  mostrarPelicula(){
    this.peliculaServicio.obtenerPelicula(this.idPelicula.value.idpelicula).subscribe(
      datos => this.pelicula = datos
    );
  }
  obtenerIdioma(){
    this.peliculaServicio.obtenerIdioma(this.idPelicula.value.idpelicula).subscribe(
      datos => this.idioma =datos
    );
  }
  obtenerEdad(){
    this.peliculaServicio.obtenerEdad(this.idPelicula.value.idpelicula).subscribe(
      datos => this.clasificacion = datos
    );
  }
  ObtenerDirector(){
    this.peliculaServicio.obtenerDirector(this.idPelicula.value.idpelicula).subscribe(
      datos => this.director = datos
    );
  }
  ObtenerActor(){
    this.peliculaServicio.obtenerActor(this.idPelicula.value.idpelicula).subscribe(
      datos => this.actor = datos
    );
  }
  obtenerPremio(){
    this.peliculaServicio.obtenerPremio(this.idPelicula.value.idpelicula).subscribe(
      datos => this.premio = datos
    );
  }
  obtenerSuscripcion(){
    this.peliculaServicio.obtenerSuscripcion(this.idPelicula.value.idpelicula).subscribe(
      datos => this.suscripcion = datos
    );
  }
  obtenerCalificacion(){
    this.peliculaServicio.obtenerCalificacion(this.idPelicula.value.idpelicula, this.idPelicula.value.idperfil).subscribe(
      datos => this.calificacion = datos
    );
  }
  eliminarCalificacion(){
    this.peliculaServicio.eliminarCalificacion(this.idPelicula.value.idpelicula, this.idPelicula.value.idperfil).subscribe(
    );
  }
  cambiarPuntuacion(){
    this.eliminarCalificacion();
    this.obtenerCalificacion();
  }
  registrarPuntuacion(){
    this.InsertarPuntuacion();
    this.obtenerCalificacion();
  }
  InsertarPuntuacion(){
    this.califica.value.idperfil = this.idPelicula.value.idperfil; 
    this.califica.value.idcontenido = this.idPelicula.value.idpelicula;
    this.peliculaServicio.InsertarPuntuacion(this.califica.value).subscribe();
  }
  esContenidoOriginal(original:any){
    if(original == 0){
      return false
    }
    else {
      return true
    }
  }
  existe () {
    if(this.pelicula == null) {
      return false;
    } else {
      return true;
    }
  }
  existeEdad(){
    if(this.clasificacion == null) {
      return false;
    } else {
      return true;
    }
  }

  existeIdioma() {
    if(this.idioma == null) {
      return false;
    } else {
      return true;
    }
  }
  existeDirector() {
    if(this.director == null) {
      return false;
    } else {
      return true;
    }
  }
  existeActor() {
    if(this.actor == null) {
      return false;
    } else {
      return true;
    }
  }
  existePremio() {
    if(this.premio == null) {
      return false;
    } else {
      return true;
    }
  }
  existeSuscripcion() {
    if(this.suscripcion == null) {
      return false;
    } else {
      return true;
    }
  }
  existeCalificacion() {
    if(this.calificacion == null) {
      return false;
    } else {
      return true;
    }
  }
}
