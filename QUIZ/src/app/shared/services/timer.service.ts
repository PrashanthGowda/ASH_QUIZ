import { Injectable } from '@angular/core';
import { Observable, timer } from 'rxjs';
import { map, take } from 'rxjs/operators';

@Injectable({
  providedIn: 'root'
})
export class TimerService {

  constructor() { }


  counter = 0.25 * 60;
  tick = 1000;

  getCounter() {
    return timer(0, this.tick).pipe(
      take(this.counter),
      map(() => --this.counter)
    );
  }

}
