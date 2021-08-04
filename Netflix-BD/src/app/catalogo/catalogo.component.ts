import { Component, OnInit } from '@angular/core';
import { CatalogoService } from './catalogo.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-catalogo',
  templateUrl: './catalogo.component.html',
  styleUrls: ['./catalogo.component.css']
})
export class CatalogoComponent implements OnInit {
  idPerfil: any;
  listaPeliculas: any;
  listaSeries: any;
  usuario: any;
  listaRecomendaciones:any;
  constructor( private route: ActivatedRoute, private catalogoServicio: CatalogoService) { 
    this.idPerfil = this.route.params;
  }

  ngOnInit(): void {
    this.obtenerUsuario();
    this.listarPeliculas();
    this.listarSerie();
    this.listarRecomendaciones();
  }
  
  obtenerUsuario (){
    this.catalogoServicio.obtenerUsuario(this.idPerfil.value.idperfil).subscribe(
      datos => this.usuario = datos
    );
  }
  listarPeliculas (){
    this.catalogoServicio.listarPeliculas().subscribe(
      datos => this.listaPeliculas = datos
    );
  }
  listarSerie (){
    this.catalogoServicio.listarSeries().subscribe(
      datos => this.listaSeries = datos
    );
  }

  listarRecomendaciones(){
    this.catalogoServicio.listarRecomendaciones(this.idPerfil.value.idperfil).subscribe(
      datos => this.listaRecomendaciones = datos
    );
  }

  hayPeliculas() {
    if(this.listaPeliculas == null) {
      return false;
    } else {
      return true;
    }
  }
  haySeries() {
    if(this.listaSeries == null) {
      return false;
    } else {
      return true;
    }
  }
  hayRecomendaciones() {
    if(this.listaRecomendaciones == null) {
      return false;
    } else {
      return true;
    }
  }
}
