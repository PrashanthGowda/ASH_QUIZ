import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class QuizGuardService implements CanActivate {
  canActivate() {
    const quizStarted = localStorage.getItem('quizStarted');
    if (quizStarted) {
      return false;
    }
    return true;
  }
}
