import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.scss']
})
export class UserComponent implements OnInit {

  userRegistrationForm: FormGroup;

  constructor(
    private fb: FormBuilder,
    private router: Router
    ) { }

  ngOnInit() {

    this.userRegistrationForm = this.fb.group({
      'user_name': '',
        'user_age': '',
        'user_gender': '',
        'user_email': '',
        'user_mobile': '',
    });
  }


  createUser () {
    this.router.navigate(['rules']);
  }
}
