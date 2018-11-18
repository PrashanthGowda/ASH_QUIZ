import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { IQuestions } from './quiz.model';

@Injectable({
  providedIn: 'root'
})
export class QuizService {

  constructor(private http: HttpClient) { }

  getRandomQuestion(): Observable<IQuestions> {
    return this.http.get<IQuestions>('http://localhost:3625/api/questions/get_random_questions');
  }

  saveQuizDetails(details): Observable<any> {
    return this.http.post<any>('http://localhost:3625/api/user/user-quiz-detail', details);
  }

}
