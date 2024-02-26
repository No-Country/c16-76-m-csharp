import { Component, ViewChild, ElementRef  } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { EmployeesService } from '../employees.service';
import { user } from '../interfaces/user';
import { createUserDTO } from '../interfaces/createUserDTO';

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
    userName: '',
    firstName: '',
    lastName: '',
    email: '',
    phoneNumber: ''
  })

  employees: user[] = []

  // employees: user[] = [
  //   {
  //     id: '1',
  //     userName: 'john_doe',
  //     firstName: 'John',
  //     lastName: 'Doe',
  //     email: 'john.doe@example.com',
  //     phoneNumber: '+1234567890',
  //   },
  //   {
  //     id: '2',
  //     userName: 'jane_smith',
  //     firstName: 'Jane',
  //     lastName: 'Smith',
  //     email: 'jane.smith@example.com',
  //     phoneNumber: '+1987654321',
  //   },
  //   {
  //     id: '3',
  //     userName: 'mike_johnson',
  //     firstName: 'Mike',
  //     lastName: 'Johnson',
  //     email: 'mike.johnson@example.com',
  //     phoneNumber: '+1122334455',
  //   },
  //   {
  //     id: '4',
  //     userName: 'alex_jackson',
  //     firstName: 'Alex',
  //     lastName: 'Jackson',
  //     email: 'alex.jackson@example.com',
  //     phoneNumber: '+1555123456',
  //   },
  //   {
  //     id: '5',
  //     userName: 'emily_wilson',
  //     firstName: 'Emily',
  //     lastName: 'Wilson',
  //     email: 'emily.wilson@example.com',
  //     phoneNumber: '+1654321879',
  //   },
  //   {
  //     id: '6',
  //     userName: 'chris_adams',
  //     firstName: 'Chris',
  //     lastName: 'Adams',
  //     email: 'chris.adams@example.com',
  //     phoneNumber: '+1789456123',
  //   },
  //   {
  //     id: '7',
  //     userName: 'sarah_brown',
  //     firstName: 'Sarah',
  //     lastName: 'Brown',
  //     email: 'sarah.brown@example.com',
  //     phoneNumber: '+1888777666',
  //   },
  //   {
  //     id: '8',
  //     userName: 'kevin_miller',
  //     firstName: 'Kevin',
  //     lastName: 'Miller',
  //     email: 'kevin.miller@example.com',
  //     phoneNumber: '+1777666555',
  //   },
  //   {
  //     id: '9',
  //     userName: 'lisa_taylor',
  //     firstName: 'Lisa',
  //     lastName: 'Taylor',
  //     email: 'lisa.taylor@example.com',
  //     phoneNumber: '+1666555444',
  //   },
  //   {
  //     id: '10',
  //     userName: 'michael_anderson',
  //     firstName: 'Michael',
  //     lastName: 'Anderson',
  //     email: 'michael.anderson@example.com',
  //     phoneNumber: '+1888333222',
  //   },
  //   {
  //     id: '11',
  //     userName: 'amanda_thomas',
  //     firstName: 'Amanda',
  //     lastName: 'Thomas',
  //     email: 'amanda.thomas@example.com',
  //     phoneNumber: '+1999444333',
  //   },
  //   {
  //     id: '12',
  //     userName: 'ryan_martinez',
  //     firstName: 'Ryan',
  //     lastName: 'Martinez',
  //     email: 'ryan.martinez@example.com',
  //     phoneNumber: '+1555666777',
  //   },
  //   {
  //     id: '13',
  //     userName: 'jessica_hernandez',
  //     firstName: 'Jessica',
  //     lastName: 'Hernandez',
  //     email: 'jessica.hernandez@example.com',
  //     phoneNumber: '+1222333444',
  //   },
  //   {
  //     id: '14',
  //     userName: 'david_wood',
  //     firstName: 'David',
  //     lastName: 'Wood',
  //     email: 'david.wood@example.com',
  //     phoneNumber: '+1444555666',
  //   },
  //   {
  //     id: '15',
  //     userName: 'olivia_king',
  //     firstName: 'Olivia',
  //     lastName: 'King',
  //     email: 'olivia.king@example.com',
  //     phoneNumber: '+1333444555',
  //   },
  //   {
  //     id: '16',
  //     userName: 'jason_lopez',
  //     firstName: 'Jason',
  //     lastName: 'Lopez',
  //     email: 'jason.lopez@example.com',
  //     phoneNumber: '+1666666666',
  //   },
  //   {
  //     id: '17',
  //     userName: 'stephanie_scott',
  //     firstName: 'Stephanie',
  //     lastName: 'Scott',
  //     email: 'stephanie.scott@example.com',
  //     phoneNumber: '+1777777777',
  //   },
  //   {
  //     id: '18',
  //     userName: 'daniel_green',
  //     firstName: 'Daniel',
  //     lastName: 'Green',
  //     email: 'daniel.green@example.com',
  //     phoneNumber: '+1888888888',
  //   },
  //   {
  //     id: '19',
  //     userName: 'natalie_evans',
  //     firstName: 'Natalie',
  //     lastName: 'Evans',
  //     email: 'natalie.evans@example.com',
  //     phoneNumber: '+1999999999',
  //   },
  //   {
  //     id: '20',
  //     userName: 'brandon_campbell',
  //     firstName: 'Brandon',
  //     lastName: 'Campbell',
  //     email: 'brandon.campbell@example.com',
  //     phoneNumber: '+1000000000',
  //   },
  // ];

  ngOnInit(): void {
    this.getAll()
  }
  // Get all users
  getAll() {
    this.employeesService.getAll().subscribe({
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
        this.form.get('userName')?.setValue(employee.userName)
        this.form.get('firstName')?.setValue(employee.firstName)
        this.form.get('lastName')?.setValue(employee.lastName)
        this.form.get('email')?.setValue(employee.email)
        this.form.get('phoneNumber')?.setValue(employee.phoneNumber)
      },
      error: (error) => {console.log(error)}
    })

    this.employeesService.getAll().subscribe({
      next: (employees) => {
        this.employees = employees;
      },
      error: (error) => {
        console.log(error);
      },
    });
  }

  // Create an user
  create(){

    let newUser: createUserDTO = this.form.value
    newUser.password = "123Pa$word"
    newUser.confirmPassword = "123Pa$word"

    this.employeesService.create(newUser)
    .subscribe({
      next: () => {this.reloadCurrentPage()},
      error: error => console.log(error)
    })
  }
  
  // Update an user
  edit(employee: user) {
    console.log('Editar empleado:', employee);
  }

  // Delete an user
  delete() {
    let email: string = this.form.get('email')?.value

    this.employeesService.delete(email).subscribe({
      next: () => {this.reloadCurrentPage()},
      error: error => {console.log(error)}
    })
  }

  reloadCurrentPage(){
    window.location.reload()
  }

}
