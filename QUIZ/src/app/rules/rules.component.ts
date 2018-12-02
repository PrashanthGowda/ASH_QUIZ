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
        let questions = [];
        questions = questionsToBeAsked.map(element => {
          const fromTo = element.split('-');
          return Math.floor(Math.random() * (+fromTo[1] - +fromTo[0] + 1)) + +fromTo[0];
        });
        localStorage.setItem('questionsToBeAsked', JSON.stringify(questions));
      }

    );
  }

  startQuiz() {
    localStorage.setItem('rulesVisited', 'yes');
    this.router.navigate(['quiz']);
  }

}
