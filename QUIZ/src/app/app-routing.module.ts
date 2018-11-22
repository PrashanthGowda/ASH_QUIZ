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


const routes: Routes = [
  { path: '', redirectTo: 'user_registration', pathMatch: 'full'},
  { path: 'user_registration', component: UserComponent},
  { path: 'rules', component: RulesComponent, canActivate: [UserGuardService, RulesGuardService] },
  { path: 'quiz', component: QuizComponent, canActivate: [UserGuardService, QuizGuardService] },
  { path: 'results/:correctAnswers', component: ResultsComponent, canActivate: [UserGuardService]  },
  { path: 'results/:correctAnswers/:voucherCode', component: ResultsComponent, canActivate: [UserGuardService]  }
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
