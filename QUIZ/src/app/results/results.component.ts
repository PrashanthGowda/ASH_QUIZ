import { Component, OnInit, OnDestroy } from '@angular/core';
import { SharedService } from '../shared/services/shared.service';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-results',
  templateUrl: './results.component.html',
  styleUrls: ['./results.component.scss']
})
export class ResultsComponent implements OnInit, OnDestroy {

  voucherCode = '';
  correctAnswers: any;
  constructor(
    public shared: SharedService,
    private activatedRoute: ActivatedRoute,
    private router: Router
  ) {
    this.voucherCode = this.activatedRoute.snapshot.params.voucherCode;
    this.correctAnswers = this.activatedRoute.snapshot.params.correctAnswers;
  }

  ngOnInit() { }


  ngOnDestroy() {
    localStorage.clear();
    this.router.navigate(['/']);
    this.correctAnswers = '';
    this.shared.user_id = '';
    this.shared.total_correct_answer = '';
    this.shared.correctAnswers = 0;
    this.shared.voucher = '';
  }

}
