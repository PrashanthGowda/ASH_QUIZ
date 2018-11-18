import { Component, OnInit } from '@angular/core';
import { QuizService } from './quiz.service';
import { MatSnackBar } from '@angular/material';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { SharedService } from '../shared/shared.service';

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.scss']
})
export class QuizComponent implements OnInit {

  constructor(
    private quizService: QuizService,
    private snackbar: MatSnackBar,
    private fb: FormBuilder,
    private router: Router,
    private shared: SharedService
  ) { }

  // questions
  questions = [];
  questionsAttended = [];
  questionIndex = 0;
  questionsForm: FormGroup;


  // user answers
  userAnswered = [];

  // validity
  notvalid = true;

  ngOnInit() {

    this.questionsForm = this.fb.group({
      option: ''
    });

    this.quizService.getRandomQuestion()
      .subscribe(
        res => {
          this.questions = res['randomQuestions'];
        },
        err => {
          this.snackbar.open('Something Went Wrong', '', {
            duration: 3000
          });
        }
      );
  }


  jsonparse(obj) {
    return JSON.parse(obj);
  }

  submitAndNext(form: FormGroup, question) {

    this.questionIndex++;

    // arr.splice(index, 0, item);
    this.questionsAttended.splice(this.questionIndex, 0, question.question_id);
    this.userAnswered.splice(this.questionIndex, 0, +form.value.option);

    if (+form.value.option === question.correct_answer_index) {

      this.shared.correctAnswers += 1;
    }

    this.questionsForm.reset();
    this.notvalid = true;
  }

  finishQuiz(form: FormGroup, question) {

    this.questionsAttended.splice(this.questionIndex, 0, question.question_id);

    if (+form.value.option === question.correct_answer_index) {
      this.shared.correctAnswers += 1;
    }

    const quizDetails = {
      'attended_quiz_questions': this.questionsAttended,
      'answers_index': this.userAnswered,
      'total_time_taken': '10 mins',
      'total_correct_answers': this.shared.correctAnswers,
      'total_question': this.questions.length,
      'user_id': this.shared.user_id,
      'voucher': '',
      'quiz_created_at': new Date()
    };


    this.quizService.saveQuizDetails(quizDetails)
      .subscribe(
        res => {
          this.shared.voucher = res.voucher;
        },
        err => {
          console.log('Voucher error');
        }
      );
    this.router.navigate(['results']);
  }


  radioChange($event) {
    if ($event.value) {
      this.notvalid = false;
    }
  }
}
