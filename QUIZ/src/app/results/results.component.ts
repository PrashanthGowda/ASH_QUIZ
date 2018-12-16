import { Component, OnInit, OnDestroy } from '@angular/core';
import { SharedService } from '../shared/services/shared.service';
import { ActivatedRoute, Router } from '@angular/router';
import * as jsPDF from 'jspdf';
import * as html2canvas from 'html2canvas';

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
    this.router.navigate(['/home']);
    this.correctAnswers = '';
    this.shared.user_id = '';
    this.shared.total_correct_answer = '';
    this.shared.correctAnswers = 0;
    this.shared.voucher = '';
  }

  /* downloadVoucher() {

  } */



  async downloadVoucher() {
    const doc = new jsPDF('p', 'mm', 'a4');
    const voucher = document.getElementById('voucher_download');

    await html2canvas(voucher, { letterRendering: 1, allowTaint: true }).then(function (canvas) {
      const img = canvas.toDataURL('image/png');
      doc.setFontSize(24);
      doc.text(60, 35, `Ramakrishna Math Quiz Competition`);
      doc.addImage(img, 'JPEG', 5, 61, 200, 150);
    });
    await doc.save('voucher.pdf');
  }


}
