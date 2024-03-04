import { Component } from '@angular/core';
import { assignmentDTO} from '../assignments/interfaces/assignmentDTO'
import { AdminPanelService} from '../admin-panel/admin-panel.service'


@Component({
  selector: 'app-assignments',
  templateUrl: './assignments.component.html',
  styleUrl: './assignments.component.scss'
})
export class AssignmentsComponent {

  constructor(private adminPanelService: AdminPanelService) {}

  assignments!: assignmentDTO[]

  ngOnInit(): void {
    this.getAllAssignmets()
  }

  getAllAssignmets(pageSize: number = 50, pageNumber: number = 1) {
    this.adminPanelService.getAllAssignmets(pageSize, pageNumber)
    .subscribe({
      next: assignments => {this.assignments = assignments},
      error: error => console.log(error)
    })
  }

}
