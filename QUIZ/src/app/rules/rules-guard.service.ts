import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class RulesGuardService implements CanActivate {
  canActivate() {
    const rulesVisited = localStorage.getItem('rulesVisited');
    if (rulesVisited) {
      return false;
    }
    return true;
  }
}
