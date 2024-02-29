import { Component, ViewChild, ElementRef  } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { EmployeesService } from '../employees.service';
import { user } from '../interfaces/user';
import { UserRequestDTO } from '../interfaces/createUserDTO';

@Component({
  selector: 'app-employees-list',
  templateUrl: './employees-list.component.html',
  styleUrls: ['./employees-list.component.scss'],
})
export class EmployeesListComponent {
  constructor(
    private employeesService: EmployeesService,
    private formBuilder: FormBuilder  ) {}

  form: FormGroup = this.formBuilder.group({
    id: '',
    originalEmail: '',
    userName: '',
    firstName: '',
    lastName: '',
    email: '',
    phoneNumber: ''
  })

  pageSizeform: FormGroup = this.formBuilder.group({
    pageSize: [10],
  })
  
  pageNumber: number = 1
  pageSize!: number
  totalPagesArray: number[] = []
  totalRecords: number = 0

  employees: user[] = []

  ngOnInit(): void {
    this.getRecordsAmount()
  }

  // Get all users
  getAll(pageNumber: number = 1) {
    this.employeesService.getAll(pageNumber, this.pageSize).subscribe({
      next: (employees) => {
        this.employees = employees;
      },
      error: (error) => {
        console.log(error);
      },
    });
  }
  // Get an user by id
  getById(id: string) {
    this.employeesService.getById(id)
    .subscribe({
      next: (employee) => {
        this.form.get('id')?.setValue(employee.id)
        this.form.get('originalEmail')?.setValue(employee.email)
        this.form.get('userName')?.setValue(employee.userName)
        this.form.get('firstName')?.setValue(employee.firstName)
        this.form.get('lastName')?.setValue(employee.lastName)
        this.form.get('email')?.setValue(employee.email)
        this.form.get('phoneNumber')?.setValue(employee.phoneNumber)
      },
      error: (error) => {console.log(error)}
    })
  }

  // Create an user
  create(){

    let newUser: UserRequestDTO = this.form.value
    newUser.password = "123Pa$word"
    newUser.confirmPassword = "123Pa$word"

    this.employeesService.create(newUser)
    .subscribe({
      next: () => {this.reloadCurrentPage()},
      error: error => console.log(error)
    })
  }
  
  // Update an user
  edit(){

    let userToEdit: UserRequestDTO = this.form.value
    userToEdit.password = "123Pa$word"
    userToEdit.confirmPassword = "123Pa$word"

    this.employeesService.update(userToEdit)
    .subscribe({
      next: () => {this.reloadCurrentPage()},
      error: error => console.log(error)
    })
  }

  // Delete an user
  delete() {
    let email: string = this.form.get('email')?.value

    this.employeesService.delete(email).subscribe({
      next: () => {this.reloadCurrentPage()},
      error: error => {console.log(error)}
    })
  }

  getRecordsAmount() {
    this.employeesService.getAmount().subscribe({
      next: response => {
        this.totalRecords = response
        this.getPagination()
      }
    })
  }

  getPagination() {
    this.totalPagesArray = []
    this.pageSize = this.pageSizeform.get('pageSize')?.value

    let totalPagesAmount = this.totalRecords / this.pageSize

    for (let index = 0; index < totalPagesAmount; index++) {
      this.totalPagesArray.push(index + 1)
    }

    this.getAll()
  }

  reloadCurrentPage(){
    window.location.reload()
  }

}
