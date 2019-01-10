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
        const level1 = JSON.parse(questionsToBeAskedIs['level_1']);
        const level2 = JSON.parse(questionsToBeAskedIs['level_2']);
        const level3 = JSON.parse(questionsToBeAskedIs['level_3']);

        const questions = [];

        for (let i = 1; i <= 7; i++) {
          const item = commonQuestions[Math.floor(Math.random() * commonQuestions.length)];
          if (questions.indexOf(item) === -1) {
            questions.push(item);
          } else {
            i--;
          }
        }

        if (questions.length === 7) {
          questions[questions.length] = level1[Math.floor(Math.random() * level1.length)];
          questions[questions.length] = level2[Math.floor(Math.random() * level2.length)];
          questions[questions.length] = level3[Math.floor(Math.random() * level3.length)];
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
