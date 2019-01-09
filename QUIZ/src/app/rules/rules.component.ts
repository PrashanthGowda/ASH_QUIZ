import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { RulesService } from './rules.service';

@Component({
  selector: 'app-rules',
  templateUrl: './rules.component.html',
  styleUrls: ['./rules.component.scss']
})
export class RulesComponent implements OnInit {

  constructor(
    private router: Router,
    private rules: RulesService
  ) { }

  ngOnInit() {
    window.scroll(0, 0);
    this.loadquestionsToBeAsked();
  }

  loadquestionsToBeAsked() {
    const participant = localStorage.getItem('UserIs');
    this.rules.loadquestionsToBeAsked(participant).subscribe(
      questionsToBeAsked => {

        const questionsToBeAskedIs = questionsToBeAsked;

        const commonQuestions = JSON.parse(questionsToBeAskedIs['common']);

        const questions = [];

        for (let i = 1; i <= 10; i++) {
          const item = commonQuestions[Math.floor(Math.random() * commonQuestions.length)];
          if (questions.indexOf(item) === -1) {
            questions.push(item);
          } else {
            i--;
          }
        }

        localStorage.setItem('questionsToBeAsked', JSON.stringify(questions));
      }

    );
  }

  startQuiz() {
    localStorage.setItem('rulesVisited', 'yes');
    this.router.navigate(['quiz']);
  }

}
