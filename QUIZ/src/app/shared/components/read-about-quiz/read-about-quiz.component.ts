import { Component, OnInit } from '@angular/core';
import { MatDialogRef } from '@angular/material';

@Component({
  selector: 'app-read-about-quiz',
  templateUrl: './read-about-quiz.component.html',
  styleUrls: ['./read-about-quiz.component.scss']
})
export class ReadAboutQuizComponent implements OnInit {

  constructor(public dialogref: MatDialogRef<ReadAboutQuizComponent>) { }

  ngOnInit() {
  }

}
