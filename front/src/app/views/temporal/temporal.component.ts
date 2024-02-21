import { Component } from '@angular/core';
import { TableModule, UtilitiesModule } from '@coreui/angular';

@Component({
  selector: 'app-temporal',
  standalone: true,
  imports: [
    TableModule,
    UtilitiesModule
  ],
  templateUrl: './temporal.component.html',
  styleUrl: './temporal.component.scss'
})
export class TemporalComponent {
  
}
