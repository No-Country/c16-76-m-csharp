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
  currentTime: string = '';

  constructor() {}

  ngOnInit(): void {
    // Actualizar la hora cada segundo
    setInterval(() => {
      const now = new Date();
      this.currentTime = this.formatTime(now.getHours(), now.getMinutes(), now.getSeconds());
    }, 1000);
  }

  // Función para formatear la hora en HH:mm:ss
  private formatTime(hours: number, minutes: number, seconds: number): string {
    return `${this.padZero(hours)}:${this.padZero(minutes)}:${this.padZero(seconds)}`;
  }

  // Función para añadir cero delante de un número si es necesario
  private padZero(num: number): string {
    return num < 10 ? '0' + num : num.toString();
  }
}
