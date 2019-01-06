import { Injectable } from '@angular/core';
import { Observable, timer } from 'rxjs';
import { map, take, startWith } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class TimerService {

  constructor() { }


  counter;
  tick = 1000;

  getCounter() {
    this.counter = 25 * 60;
    return timer(0, this.tick).pipe(
      startWith(this.counter),
      map(() => --this.counter)
    );
  }

}
