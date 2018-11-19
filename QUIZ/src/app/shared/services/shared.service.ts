import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SharedService {

    // Answers
    correctAnswers = 0;
    user_id: any;
    voucher: any;
    total_correct_answer: any;

  constructor() { }
}
