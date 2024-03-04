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

  assignments: assignmentDTO[] = []
  // assignments: assignmentDTO[] = [
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  //   {
  //     id: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     name: 'Crear CRUD de Empleados',
  //     description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptate asperiores velit voluptatibus, architecto in quos tenetur at recusandae quas quae reiciendis doloribus temporibus sed sunt illum excepturi totam consectetur ab?',
  //     startDate: '2022-01-01',
  //     endDate: '2022-02-01',
  //     statusId: '3be36337-2e8d-462a-a6e0-afb28b6182bc',
  //     statusName: 'En proceso',
  //     profileId: '3be36337-2e8d-462a-a6e0-afb28b6182bc'
  //   },
  // ]

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
