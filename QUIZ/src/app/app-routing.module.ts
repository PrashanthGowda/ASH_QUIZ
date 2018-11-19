import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { RouterModule, Routes } from '@angular/router';
import { UserComponent } from './user/user.component';
import { RulesComponent } from './rules/rules.component';
import { QuizComponent } from './quiz/quiz.component';
import { ResultsComponent } from './results/results.component';

const routes: Routes = [
  { path: '', redirectTo: 'user_registration', pathMatch: 'full'},
  { path: 'user_registration', component: UserComponent },
  { path: 'rules', component: RulesComponent },
  { path: 'quiz', component: QuizComponent },
  { path: 'results/:correctAnswers', component: ResultsComponent },
  { path: 'results/:correctAnswers/:voucherCode', component: ResultsComponent }
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
