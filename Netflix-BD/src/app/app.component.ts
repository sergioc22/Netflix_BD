import { Component } from '@angular/core';
import { ApiServicio } from './servioLogin';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  loginbtn:boolean | undefined;
  logoutbtn:boolean | undefined;
  title = 'Netflix-BD';
  constructor(private dataServicio: ApiServicio){
    dataServicio.getLoggedInName.subscribe(name => this.changeName(name));
    if(dataServicio.isLoggedIn()){
      this.loginbtn=false;
      this.logoutbtn=true;
    }
    else{
      this.loginbtn=true;
      this.logoutbtn=false;
    }
  }
  private changeName(name: boolean): void{
    this.logoutbtn=name;
    this.loginbtn=!name;
  }
  logout(){
    this.dataServicio.deleteToken();
    window.location.href = "";
  }
}
