import { Component, Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, CanActivate, Router } from '@angular/router';
import { ApiServicio } from './servioLogin';

//@Injectable({
    //providedIn: 'root'
    //})

//export class Authguard implements CanActivate {
//constructor(private dataService: ApiServicio,private router: Router ) {}

//canActivate(
    //route: ActivatedRouteSnapshot,
    //state: RouterStateSnapshot): boolean {
    //const routeurl: string = state.url;
    //return this.isLogin(routeurl);
//}

//isLogin(routeurl: string) {
    //if (this.dataService.isLoggedIn()) {
    //return true;
//}

//this.dataService.redirectUrl = routeurl;
//this.router.navigate([''], {queryParams: { returnUrl: routeurl }} );
//}
//}