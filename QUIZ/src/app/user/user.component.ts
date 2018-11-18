import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from './user.service';
import { MatSnackBar } from '@angular/material';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.scss']
})
export class UserComponent implements OnInit {

  userRegistrationForm: FormGroup;

  constructor(
    private fb: FormBuilder,
    private router: Router,
    private user: UserService,
    private snackbar: MatSnackBar
  ) { }

  ngOnInit() {

    this.userRegistrationForm = this.fb.group({
      'user_name': ['', Validators.required],
      'user_age': ['', Validators.required],
      'user_gender': ['', Validators.required],
      'user_email': '',
      'user_mobile': ['', Validators.required],
    });
  }


  createUser(form: FormGroup) {
    this.user.createUser(form.value)
    .subscribe(
      res => {
        this.snackbar.open(res.success, '', {
          duration: 3000
        });
        this.router.navigate(['rules']);
      },
      err => {
        this.snackbar.open(err.error.message, '', {
          duration: 3000
        });
      }
    );
  }
}
