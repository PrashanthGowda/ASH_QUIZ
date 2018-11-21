import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MaterialModule } from './angular-material/material.module';
import { ServiceWorkerModule } from '@angular/service-worker';
import { environment } from '../environments/environment';
import { AppRoutingModule } from './app-routing.module';
import { UserComponent } from './user/user.component';
import { HeaderComponent } from './header/header.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { RulesComponent } from './rules/rules.component';
import { QuizComponent } from './quiz/quiz.component';
import { CommonModule } from '@angular/common';
import { ResultsComponent } from './results/results.component';
import { FormatTimePipe } from './shared/pipes/format-time.pipe';

@NgModule({
  declarations: [
    AppComponent,
    UserComponent,
    HeaderComponent,
    RulesComponent,
    QuizComponent,
    ResultsComponent,
    FormatTimePipe
  ],
  imports: [
    BrowserModule,
    CommonModule,
    HttpClientModule,
    MaterialModule,
    BrowserAnimationsModule,
    FormsModule,
    ReactiveFormsModule,
    ServiceWorkerModule.register('dist/ashrama-quiz/ngsw-worker.js', { enabled: environment.production }),
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
