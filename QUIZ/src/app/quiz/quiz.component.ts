import { Component, OnInit, OnDestroy } from '@angular/core';
import { QuizService } from './quiz.service';
import { MatSnackBar } from '@angular/material';
import { FormGroup, FormBuilder } from '@angular/forms';
import { Router } from '@angular/router';
import { SharedService } from '../shared/services/shared.service';
import { Subscription } from 'rxjs';
import { TimerService } from '../shared/services/timer.service';

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.scss']
})
export class QuizComponent implements OnInit, OnDestroy {

  constructor(
    private quizService: QuizService,
    private snackbar: MatSnackBar,
    private fb: FormBuilder,
    private router: Router,
    private shared: SharedService,
    private timerService: TimerService
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

  // quiz
  quizSubscription: Subscription;

  // timer
  time;
  timeSubscription: Subscription;


  ngOnInit() {

    localStorage.setItem('quizStarted', 'yes');

    this.questionsForm = this.fb.group({
      option: ''
    });

    this.quizService.getRandomQuestion()
      .subscribe(
        res => {
          this.questions = res['data'];
          this.startTimer();
        },
        err => {
          this.snackbar.open('Something Went Wrong', '', {
            duration: 3000
          });
        }
      );
  }


  startTimer() {
    this.timeSubscription = this.timerService.getCounter()
      .subscribe(
        time => {
          this.time = time;
          if (!time) {
            this.finishQuiz(this.questionsForm, this.questions[this.questionIndex]);
          }
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
    this.userAnswered.splice(this.questionIndex, 0, form.value.option !== null ? +form.value.option : -1);

    if (+form.value.option === question.correct_answer_index) {

      this.shared.correctAnswers += 1;
    }

    this.questionsForm.reset();
    this.notvalid = true;
  }

  finishQuiz(form: FormGroup, question) {

    this.questionsAttended.splice(this.questionIndex, 0, question.question_id);
    this.userAnswered.splice(this.questionIndex, 0, form.value.option !== null ? +form.value.option : -1);
    if (+form.value.option === question.correct_answer_index) {
      this.shared.correctAnswers += 1;
    }

    const quizDetails = {
      'attended_quiz_questions': this.questionsAttended,
      'answers_index': this.userAnswered,
      'total_time_taken': this.timerService.counter,
      'total_correct_answers': this.shared.correctAnswers,
      'total_question': this.questions.length,
      'user_id': this.shared.user_id,
      'voucher': '',
      'quiz_created_at': new Date()
    };


    this.quizService.saveQuizDetails(quizDetails)
      .subscribe(
        res => {
          if (res.voucher) {
            this.router.navigate(['/results', res.user, res.correct, res.voucher], { skipLocationChange: true });
          } else {
            this.router.navigate(['/results', res.user, res.correct], { skipLocationChange: true });
          }
        },
        err => {
          console.log('Voucher error');
        }
      );
  }


  radioChange($event) {
    if ($event.value) {
      this.notvalid = false;
    }
  }

  ngOnDestroy() {
    if (this.timeSubscription) {
      this.timeSubscription.unsubscribe();
    }
  }

}
