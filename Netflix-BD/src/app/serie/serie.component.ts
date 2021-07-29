import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { SerieService } from './serie.service';
import { FormBuilder, FormGroup, Validators, FormControl } from '@angular/forms';

@Component({
  selector: 'app-serie',
  templateUrl: './serie.component.html',
  styleUrls: ['./serie.component.css']
})
export class SerieComponent implements OnInit {
  idSerie:any;
  serie:any;
  idioma:any;
  clasificacion:any;
  actor:any;
  temporadas:any;
  temporada = new FormGroup({
    id_temporada: new FormControl()
  });
  episodios:any;
  suscripcion:any;
  calificacion:any;
  califica= new FormGroup({
    puntuacion: new FormControl(),
    idperfil: new FormControl(),
    idcontenido:new FormControl()
  })
  constructor(private route: ActivatedRoute, private serieServicio: SerieService) {
    this.idSerie = this.route.params
   }

  ngOnInit(): void {
    this.mostrarSerie();
    this.obtenerIdioma();
    this.obtenerEdad();
    this.ObtenerActor();
    this.ObtenerTemporada();
  }

  mostrarSerie(){
    this.serieServicio.obtenerSerie(this.idSerie.value.idserie).subscribe(
      datos => this.serie = datos 
    );
  }
  obtenerIdioma(){
    this.serieServicio.obtenerIdioma(this.idSerie.value.idserie).subscribe(
      datos => this.idioma =datos
    );
  }
  obtenerEdad(){
    this.serieServicio.obtenerEdad(this.idSerie.value.idserie).subscribe(
      datos => this.clasificacion = datos
    );
  }
  ObtenerActor(){
    this.serieServicio.obtenerActor(this.idSerie.value.idserie).subscribe(
      datos => this.actor = datos
    );
  }
  ObtenerTemporada(){
    this.serieServicio.obtenerTemporada(this.idSerie.value.idserie).subscribe(
      datos => this.temporadas = datos
    );
  }
  ObtenerEpisodio(){
    this.serieServicio.obtenerEpisodio(this.temporada.value.id_temporada).subscribe(
      datos => this.episodios = datos
    );
  }
  obtenerSuscripcion(){
    this.serieServicio.obtenerSuscripcion(this.idSerie.value.idserie).subscribe(
      datos => this.suscripcion = datos
    );
  }
  obtenerCalificacion(){
    this.serieServicio.obtenerCalificacion(this.idSerie.value.idserie, this.idSerie.value.idperfil).subscribe(
      datos => this.calificacion = datos
    );
  }
  eliminarCalificacion(){
    this.serieServicio.eliminarCalificacion(this.idSerie.value.idserie, this.idSerie.value.idperfil).subscribe(
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
    this.califica.value.idperfil = this.idSerie.value.idperfil; 
    this.califica.value.idcontenido = this.idSerie.value.idserie;
    this.serieServicio.InsertarPuntuacion(this.califica.value).subscribe();
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
    if(this.serie == null) {
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
  existeActor() {
    if(this.actor == null) {
      return false;
    } else {
      return true;
    }
  }
  existeTemporada() {
    if(this.temporadas == null) {
      return false;
    } else {
      return true;
    }
  }
  existeEpisodios() {
    if(this.episodios == null) {
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
