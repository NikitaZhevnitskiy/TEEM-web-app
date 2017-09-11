import { Component, OnInit } from '@angular/core';
import { LoginService } from './services/login.service';
import {Router} from "@angular/router";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  title = 'app works!';
  constructor(
    private router : Router,
    private loginService: LoginService) {
    console.log('app-root constructor...');
  }

  ngOnInit(): void {
    console.log('app-root onInit');
  }
}
