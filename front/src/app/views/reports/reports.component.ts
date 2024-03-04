import { Component } from '@angular/core';
import { reportDTO} from '../reports/interfaces/reportDTO'
import { AdminPanelService} from '../admin-panel/admin-panel.service'

@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrl: './reports.component.scss'
})
export class ReportsComponent {

  constructor(private adminPanelService: AdminPanelService) {}

  reports: reportDTO[] = []

  ngOnInit(): void {
    this.getAllReports()
  }

  getAllReports(pageSize: number = 50, pageNumber: number = 1) {
    this.adminPanelService.getAllReports(pageSize, pageNumber)
    .subscribe({
      next: reports => {this.reports = reports},
      error: error => console.log(error)
    })
  }
}