import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import {
  MatButtonModule,
  MatIconModule,
  MatToolbarModule,
  MatFormFieldModule,
  MatInputModule,
  MatGridListModule,
  MatCardModule,
  MatTabsModule,
  MatListModule,
  MatChipsModule,
  MatRadioModule
} from '@angular/material';

@NgModule({
  imports: [MatButtonModule, MatIconModule, MatToolbarModule, MatFormFieldModule, MatInputModule, MatGridListModule, MatCardModule, MatTabsModule, MatListModule, MatFormFieldModule, MatChipsModule, MatRadioModule ],
  exports: [MatButtonModule, MatIconModule, MatToolbarModule, MatFormFieldModule, MatInputModule, MatGridListModule, MatCardModule, MatTabsModule, MatListModule, MatFormFieldModule, MatChipsModule, MatRadioModule ],
})
export class MaterialModule { }