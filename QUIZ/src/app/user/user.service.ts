import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { IUser } from './user.model';
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
}
