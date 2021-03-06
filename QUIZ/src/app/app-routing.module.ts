import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { UserComponent } from './user/user.component';
import { RulesComponent } from './rules/rules.component';
import { QuizComponent } from './quiz/quiz.component';
import { ResultsComponent } from './results/results.component';
import { QuizGuardService } from './quiz/quiz-guard.service';
import { UserGuardService } from './user/user-guard.service';
import { RulesGuardService } from './rules/rules-guard.service';
import { HomeComponent } from './home/home.component';
import { BankDetailsComponent } from './bank-details/bank-details.component';


const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full'},
  { path: 'home', component: HomeComponent},
  { path: 'user_registration', component: UserComponent},
  { path: 'rules', component: RulesComponent, canActivate: [UserGuardService, RulesGuardService] },
  { path: 'quiz', component: QuizComponent, canActivate: [UserGuardService, QuizGuardService] },
  { path: 'results/:user/:correctAnswers', component: ResultsComponent, canActivate: [UserGuardService]  },
  { path: 'results/:user/:correctAnswers/:voucherCode', component: ResultsComponent, canActivate: [UserGuardService]  },
  { path: 'bank/:user/:voucher', component: BankDetailsComponent}
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
