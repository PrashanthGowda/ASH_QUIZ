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
    this.loadquestionsToBeAsked();
  }

  loadquestionsToBeAsked() {
    const participant = localStorage.getItem('UserIs');
    this.rules.loadquestionsToBeAsked(participant).subscribe(
      questionsToBeAsked => {
        const questions = [];

        for (let i = 1; i <= 5; i++) {
          const item = questionsToBeAsked[Math.floor(Math.random() * questionsToBeAsked.length)]
          if (questions.indexOf(item) === -1) {
            questions.push(item)
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
