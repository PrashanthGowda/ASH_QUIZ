import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { Router } from '@angular/router';
import { UserService } from './user.service';
import { MatSnackBar, MatDialog } from '@angular/material';
import { SharedService } from '../shared/services/shared.service';
import { ICountry, IState } from './user.model';
import { Observable } from 'rxjs';
import { startWith, map } from 'rxjs/operators';

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.scss']
})
export class UserComponent implements OnInit {

  userRegistrationForm: FormGroup;

  countrys: ICountry[] = [];
  filteredCountries: Observable<ICountry[]>;


  states: IState[] = [];
  filteredStates: Observable<IState[]>;


  constructor(
    private fb: FormBuilder,
    private router: Router,
    private user: UserService,
    private snackbar: MatSnackBar,
    private shared: SharedService,
    public dialogx: MatDialog
  ) {
    // On load clear everything in local storage
    localStorage.clear();


  }

  ngOnInit() {


    this.userRegistrationForm = this.fb.group({
      'user_name': ['', Validators.required],
      'user_age': ['', Validators.required],
      'user_gender': ['', Validators.required],
      'user_email': '',
      'user_mobile': ['', Validators.required],
      'user_country': ['', Validators.required],
      'user_state': ['', Validators.required]
    });
    this.userRegistrationForm.controls['user_state'].disable();
    this.loadCountries();

    this.filteredCountries = this.userRegistrationForm.controls['user_country'].valueChanges
      .pipe(
        startWith(''),
        map(country => country ? this._filterCountry(country) : this.countrys.slice())
      );

  }


  loadCountries() {
    this.user.loadCountries()
      .subscribe(
        coutries => {
          this.countrys = coutries;
        }
      );
  }

  createUser(form: FormGroup) {
    this.user.createUser(form.value)
      .subscribe(
        res => {

          const age = res.user_age;

          this.snackbar.open(res.success, '', {
            duration: 3000
          });
          this.shared.user_id = res.user_id;
          if (age <= 12) {
            localStorage.setItem('UserIs', 'CHILDREN');
          } else if (age >= 13 && age <= 25) {
            localStorage.setItem('UserIs', 'TEENAGER');
          } else if (age >= 26 && age <= 50) {
            localStorage.setItem('UserIs', 'ADULT');
          } else {
            localStorage.setItem('UserIs', 'GRAND_ADULT');
          }
          localStorage.setItem('userRegistered', 'yes');
          this.router.navigate(['rules']);
        },
        err => {
          this.snackbar.open(err.error.message, '', {
            duration: 3000
          });
        }
      );
  }


  private _filterCountry(value: string): ICountry[] {
    const filterValue = value.toLowerCase();
    return this.countrys.filter(country => country.name.toLowerCase().indexOf(filterValue) === 0);
  }

  getStates(_event: any, country) {

    if (_event.isUserInput) {
      this.states = [];
      this.states.slice();
      this.userRegistrationForm.patchValue({ 'user_state': '' });
      this.user.getStates(country).subscribe(
        states => {
          this.states = states;
          this.userRegistrationForm.controls['user_state'].enable();
          this.filteredStates = this.userRegistrationForm.controls['user_state'].valueChanges
            .pipe(
              startWith(''),
              map(state => state ? this._filterStates(state) : this.states.slice())
            );
        }
      );
    }
  }

  private _filterStates(value: string): IState[] {
    const filterValue = value.toLowerCase();
    return this.states.filter(state => state.name.toLowerCase().indexOf(filterValue) === 0);
  }
}
