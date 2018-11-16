import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'app';
  employee: any[];
  constructor (private http: HttpClient) {  }

  ngOnInit(): void {
    this.getEmployee();
  }

  getEmployee() {
      this.http.get('http://localhost:3625/api/questions').subscribe(
        res => {
          this.employee = res['data'];
        }
      );
  }
}
