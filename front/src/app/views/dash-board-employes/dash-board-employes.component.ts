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

import { CommonModule } from '@angular/common';

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
    CommonModule,
  ],
  templateUrl: './dash-board-employes.component.html',
  styleUrl: './dash-board-employes.component.scss',
})
export class DashBoardEmployesComponent implements OnInit {
  isRunning: boolean = false;
  startTime: Date | null = null;
  currentTime: string = '';
  timerInterval: any; // Variable para almacenar el intervalo de tiempo
  isTimerFinished: boolean = false; // Variable para controlar si el temporizador ha finalizado
  isActivityStarted: boolean = false; // Variable para controlar si la actividad ha comenzado
  isSpinnerVisible: boolean = false;

  constructor() {}

  ngOnInit(): void {}

  startTimer() {
    if (!this.isRunning) {
      this.startTime = new Date();
      this.isRunning = true;
      this.isTimerFinished = false; // Restablecer la variable cuando se inicia el temporizador
      this.isSpinnerVisible = true; // Mostrar el spinner al iniciar el temporizador
      // Actualizar la hora cada segundo
      this.timerInterval = setInterval(() => {
        const now = new Date();
        this.currentTime = this.formatTime(
          now.getHours(),
          now.getMinutes(),
          now.getSeconds()
        );
        this.isActivityStarted = true;
      }, 1000);
    } else {
      // Pausar el temporizador
      clearInterval(this.timerInterval); // Limpiar el intervalo de tiempo
      this.isRunning = false;
      this.isSpinnerVisible = false; // Ocultar el spinner al pausar el temporizador
    }
  }

  finishTimer() {
    // Finalizar el temporizador
    clearInterval(this.timerInterval); // Limpiar el intervalo de tiempo
    this.isRunning = false;
    this.startTime = null;
    this.isTimerFinished = true; // Establecer la variable en true cuando el temporizador finaliza
    this.isSpinnerVisible = false; // Ocultar el spinner al finalizar el temporizador
  }

  // Función para formatear la hora en HH:mm:ss
  private formatTime(hours: number, minutes: number, seconds: number): string {
    return `${this.padZero(hours)}:${this.padZero(minutes)}:${this.padZero(
      seconds
    )}`;
  }

  // Función para añadir cero delante de un número si es necesario
  private padZero(num: number): string {
    return num < 10 ? '0' + num : num.toString();
  }
}
