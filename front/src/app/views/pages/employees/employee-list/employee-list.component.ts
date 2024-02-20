import { Component, OnInit } from '@angular/core';
import { EmployeesService } from '../employees.service';
import { user } from '../interfaces/user';

@Component({
  selector: 'app-employee-list',
  templateUrl: './employee-list.component.html',
  styleUrl: './employee-list.component.scss'
})
export class EmployeeListComponent implements OnInit {

  constructor(private employeesService: EmployeesService) { }
  
  employees: user[] = []
  
  ngOnInit(): void {
    this.getAll()
  }

  getAll(){
    this.employeesService.getAll()
    .subscribe({
      next: employees => {this.employees = employees},
      error: error => {console.log(error)}
    })
  }
}
