import { Injectable } from '@angular/core';
import { CanActivate } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class UserGuardService implements CanActivate {
  canActivate() {
    const userRegistered = localStorage.getItem('userRegistered');
    if (userRegistered) {
      return true;
    }
    return false;
  }
}
