import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { LoginComponent } from './login/login.component';
import { RegistrarUsuarioComponent } from './registrar-usuario/registrar-usuario.component';
import { RegistrarPerfilComponent } from './registrar-perfil/registrar-perfil.component';
import { SeleccionarPerfilComponent } from './seleccionar-perfil/seleccionar-perfil.component';
import { RegistrarDispositivoComponent } from './registrar-dispositivo/registrar-dispositivo.component';
import { InicioComponent } from './inicio/inicio.component';
import { EditarUsuarioComponent } from './editar-usuario/editar-usuario.component';
import { HttpClientModule } from '@angular/common/http';
import { RegistrarUsuarioService } from './registrar-usuario/registrar-usuario.service';
import { LoginServicioService } from './login/login-servicio.service'; 
import { DashboardComponent } from './dashboard/dashboard.component';
import { CatalogoComponent } from './catalogo/catalogo.component';

//import { Authguard } from './authguard.guard';

const routes: Routes = [
  { path: 'Login', component: LoginComponent },
  { path: '', component: LoginComponent, pathMatch:'full'},
  { path: 'Registrar', component: RegistrarUsuarioComponent },
  { path: 'RegistrarPerfil/:email', component: RegistrarPerfilComponent },
  { path: 'Dashboard', component: DashboardComponent },
  { path: 'ListaPerfiles/:email', component: SeleccionarPerfilComponent },
  { path: 'Dispositivo', component: RegistrarDispositivoComponent },
  { path: 'Inicio', component: InicioComponent },
  { path: 'EditarUser', component: EditarUsuarioComponent },
  { path: 'Catalogo', component: CatalogoComponent },
];

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    LoginComponent,
    RegistrarUsuarioComponent,
    RegistrarPerfilComponent,
    SeleccionarPerfilComponent,
    RegistrarDispositivoComponent,
    InicioComponent,
    EditarUsuarioComponent,
    DashboardComponent,
    CatalogoComponent,
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule.forRoot(routes),
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule
  ],
  providers: [
    RegistrarUsuarioService,
    LoginServicioService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
