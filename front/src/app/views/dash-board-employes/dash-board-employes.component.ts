import { Component, OnInit } from '@angular/core';
import {
  CardModule,
  GridModule,
  AvatarModule,
  BadgeComponent,
  SpinnerComponent,
  ButtonModule,
  FormModule,
} from '@coreui/angular';

@Component({
  selector: 'app-dash-board-employes',
  standalone: true,
  imports: [
    CardModule,
    GridModule,
    AvatarModule,
    BadgeComponent,
    SpinnerComponent,
    FormModule,
    ButtonModule,
  ],
  templateUrl: './dash-board-employes.component.html',
  styleUrl: './dash-board-employes.component.scss',
})
export class DashBoardEmployesComponent implements OnInit {
  constructor() {}
  ngOnInit(): void {}
}
