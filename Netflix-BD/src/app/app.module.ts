import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { LoginComponent } from './login/login.component';
import { RegistrarUsuarioComponent } from './registrar-usuario/registrar-usuario.component';
import { RegistrarTarjetaCComponent } from './registrar-tarjeta-c/registrar-tarjeta-c.component';
import { SeleccionSuscripcionComponent } from './seleccion-suscripcion/seleccion-suscripcion.component';
import { RegistrarPerfilComponent } from './registrar-perfil/registrar-perfil.component';
import { SeleccionarPerfilComponent } from './seleccionar-perfil/seleccionar-perfil.component';
import { RegistrarDispositivoComponent } from './registrar-dispositivo/registrar-dispositivo.component';
import { InicioComponent } from './inicio/inicio.component';
import { EditarUsuarioComponent } from './editar-usuario/editar-usuario.component';
const routes: Routes = [
  { path: 'Login', component: LoginComponent },
  { path: '', component: LoginComponent, pathMatch:'full'},
  { path: '**', redirectTo:'./', pathMatch:'full'},
  { path: 'Registrar', component: RegistrarUsuarioComponent },
  { path: 'TarjetaC', component: RegistrarTarjetaCComponent },
  { path: 'Suscripcion', component: SeleccionSuscripcionComponent },
  { path: 'RegistrarPerfil', component: RegistrarPerfilComponent },
  { path: 'ListaPerfiles', component: SeleccionarPerfilComponent },
  { path: 'Dispositivo', component: RegistrarDispositivoComponent },
  { path: 'Inicio', component: InicioComponent },
  { path: 'EditarUser', component: EditarUsuarioComponent },
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    LoginComponent,
    RegistrarUsuarioComponent,
    RegistrarTarjetaCComponent,
    SeleccionSuscripcionComponent,
    RegistrarPerfilComponent,
    SeleccionarPerfilComponent,
    RegistrarDispositivoComponent,
    InicioComponent,
    EditarUsuarioComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule.forRoot(routes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
