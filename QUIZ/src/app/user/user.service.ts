import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { IUser, ICountry, IState, IBankDetails } from './user.model';
import { map, tap } from 'rxjs/operators';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  private API_URL = environment.API_URL;

  constructor(
    private http: HttpClient
  ) { }

  createUser(user): Observable<any> {
    return this.http.post<IUser>(this.API_URL + 'api/user/create-user', user);
  }


  getUser(user): Observable<any> {
    const payload = { 'user': user };
    return this.http.post<any>(this.API_URL + 'api/user/get-user', payload)
    .pipe(
      map(
        response => response['username']
      )
    );
  }

  loadCountries(): Observable<ICountry[]> {
    return this.http.get<ICountry[]>(this.API_URL + 'api/country/get-all-countries')
      .pipe(
        map(
          response => response['data']
        )
      );
  }

  getStates(country): Observable<IState[]> {
    return this.http.get<IState[]>(this.API_URL + 'api/states/get-all-states/' + country)
      .pipe(
        map(
          response => response['data']
        )
      );
  }


  saveBankDetails (bank): Observable<IBankDetails> {
    return this.http.post<IBankDetails> (this.API_URL + 'api/bank/add-bank-details', bank)
    .pipe(
      map(
        response => response
      )
    );
  }
}
