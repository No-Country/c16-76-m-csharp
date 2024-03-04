import { Component } from '@angular/core';
import { profileDTO } from '../admin-panel/interfaces/profileDTO';
import { benefitsDTO } from '../admin-panel/interfaces/benefitsDTO';
import { ActivatedRoute, RouteReuseStrategy, Router } from '@angular/router';
import { EmployeesService } from '../employees/employees.service';
import { AdminPanelService } from '../admin-panel/admin-panel.service';

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrl: './admin-panel.component.scss'
})
export class AdminPanelComponent  {

  
  constructor
  (private activatedRoute: ActivatedRoute,
    private router: Router,
    private employeesService: EmployeesService,
    private adminPanelService: AdminPanelService) {}

  colors = [
    { 
      header: 'Perfil de Empleado',
      description: 'Revisar la información general del empleado',
      color: 'danger',
      textColor: 'danger',
      buttonText: 'Ver',
      method: this.toggleProfile.bind(this)
    },
    { 
      header: 'Prestaciones',
      description: 'Revisar los beneficios asignados al empleado',
      color: 'warning',
      textColor: 'warning',
      buttonText: 'Ver',
      method: this.toggleBenefits.bind(this)
    },
    { 
      header: 'Actividades',
      description: 'Revisar las actividades en proceso del empleado',
      color: 'info',
      textColor: 'info',
      buttonText: 'Ir',
      method: this.verActividades.bind(this)
    },
    { 
      header: 'Evaluaciones',
      description: 'Revisar las evaluaciones de desempeño del empleado',
      color: 'light',
      buttonText: 'Ir',
      method: this.verReportes.bind(this)
    },
    { 
      header: 'Solicitudes',
      description: 'Revisar los solicitudes de permisos del empleado',
      color: 'dark',
      buttonText: 'Ir',
      method: this.verSolicitudes.bind(this)
    }
  ];

  profile: profileDTO = {
    firstName: 'Luis',
    lastName: 'Javier',
    userName: 'Luis_l',
    email: 'luis@email.com',
    phoneNumber: '555-5555',
    assists: 100,
    absences: 3,
    delays: 17,
    country: 'México',
    state: 'Guanajuato',
    municipality: 'León',
    admissionDate: '2018-06-1',
    salary: 1200
  }

  benefits: benefitsDTO = {
    includesBonusA: true,
    bonusA: 1000,
    includesBonusB: false,
    bonusB: 0,
    includesBonusC: false,
    bonusC: 0,
    holidays: 14,
    hasHealthCare: true,
    profileId: ''
  }

  ngOnInit(): void {
    this.getUserById()
  }

  // Get an user by id
  getUserById() {
    this.activatedRoute.params.subscribe(params => {
      this.employeesService.getById(params['id'])
      .subscribe({
        next: (employee) => {
          this.getProfileById(employee.profileId)
          this.getBenefitsById(employee.benefitsId)
        },
        error: (error) => {console.log(error)}
      })
    })
  }

  // Get Profile by id
  getProfileById(id: string) {
    this.adminPanelService.getProfileById(id)
    .subscribe({
      next: (profile) => { this.profile = profile },
      error: (error) => {console.log(error)}
    })
  }

  // Get Benefits by id
  getBenefitsById(id: string) {
    this.adminPanelService.getBenefitsById(id)
    .subscribe({
      next: (benefits) => { this.benefits = benefits },
      error: (error) => {console.log(error)}
    })
  }

  public profileVisible = false;
  public benefitsVisible = false;

  toggleProfile() {
    this.profileVisible = !this.profileVisible;
  }

  toggleBenefits() {
    this.benefitsVisible = !this.benefitsVisible;
  }

  verActividades() {
    this.activatedRoute.params.subscribe(params => {
      this.router.navigate([`/actividades/${params['id']}`])
    })
  }

  verReportes() {
    this.activatedRoute.params.subscribe(params => {
      this.router.navigate([`/evaluaciones/${params['id']}`])
    })
  }

  verSolicitudes() {
    this.activatedRoute.params.subscribe(params => {
      this.router.navigate([`/solicitudes/${params['id']}`])
    })
  }
}
