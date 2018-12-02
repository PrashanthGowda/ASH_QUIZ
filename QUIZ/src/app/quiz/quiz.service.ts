import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { IQuestions } from './quiz.model';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class QuizService {

  private API_URL = environment.API_URL;

  constructor(private http: HttpClient) { }

  getRandomQuestion(): Observable<IQuestions> {
    return this.http.get<IQuestions>(this.API_URL + 'api/questions/' + localStorage.getItem('questionsToBeAsked'));
  }

  saveQuizDetails(details): Observable<any> {
    return this.http.post<any>(this.API_URL + 'api/user/user-quiz-detail', details);
  }

}
