import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { IUser, ICountry, IState } from './user.model';
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
}
