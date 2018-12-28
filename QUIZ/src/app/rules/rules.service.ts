import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class RulesService {

  private API_URL = environment.API_URL;

  constructor(
    private http: HttpClient
  ) { }

  loadquestionsToBeAsked(participant): Observable<any> {
    return this.http.get<any>(this.API_URL + 'api/questions/load-questions-to-be-asked/' + participant)
    .pipe(
      map(
        response => response.data[0]
      )
    );
  }
}
