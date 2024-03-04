import { Component } from '@angular/core';
import { reportDTO } from '../reports/interfaces/reportDTO';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrl: './report.component.scss'
})
export class ReportComponent {
  report: reportDTO = 
  {
    id: '111111111111',
    date: '2020-01-01',
    performance:10,
    achivedGoals: 0.85,
    savedMoney: 2000,
    profileId:'11111111',
    comments:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque odio ex doloribus nostrum, fugit eum aliquam, corrupti dolorum earum incidunt tempora reiciendis unde aliquid in perferendis. Eos consequatur iusto aliquid!'
  }
}
