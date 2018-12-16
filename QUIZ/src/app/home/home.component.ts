import { Component, OnInit } from '@angular/core';
import { MatDialog } from '@angular/material';
import { SharedService } from '../shared/services/shared.service';
import { ReadAboutQuizComponent } from '../shared/components/read-about-quiz/read-about-quiz.component';
import { WatchVideoComponent } from '../shared/components/watch-video/watch-video.component';
import { ContactUsComponent } from '../shared/components/contact-us/contact-us.component';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {


  mobile: any;
  constructor(
    private shared: SharedService, public dialog: MatDialog
    ) {
    this.mobile = this.shared.isHandset;
  }

  ngOnInit() {
  }


  openWatchVideoComponent() {
    this.dialog.open(WatchVideoComponent, {
      width: '39rem',
      height: '27rem'
    });
  }
  openReadAboutComponent() {
    this.dialog.open(ReadAboutQuizComponent, {
      width: '40rem',
      height: 'auto'
    });
  }

  openContactUsComponent() {
    this.dialog.open(ContactUsComponent, {
      width: '39rem',
      height: '27rem'
    });
  }

}
