import { Component, OnInit } from '@angular/core';
import { SharedService } from '../shared/services/shared.service';
import { ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-results',
  templateUrl: './results.component.html',
  styleUrls: ['./results.component.scss']
})
export class ResultsComponent implements OnInit {

  voucherCode = '';
  correctAnswers: any;
  constructor(
    public shared: SharedService,
    private activatedRoute: ActivatedRoute) {
      this.voucherCode = this.activatedRoute.snapshot.params.voucherCode;
      this.correctAnswers = this.activatedRoute.snapshot.params.correctAnswers;
    }

  ngOnInit() { }

}
