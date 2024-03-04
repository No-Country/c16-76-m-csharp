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

  profile: profileDTO = {
    firstName: '',
    lastName: '',
    userName: '',
    email: '',
    phoneNumber: '',
    assists: 0,
    absences: 0,
    delays: 0,
    country: '',
    state: '',
    municipality: '',
    admissionDate: '',
    salary: 0
  }

  benefits: benefitsDTO = {
    includesBonusA: false,
    bonusA: 0,
    includesBonusB: false,
    bonusB: 0,
    includesBonusC: false,
    bonusC: 0,
    holidays: 0,
    hasHealthCare: false,
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
      next: (profile) => { 
        this.profile = profile 
      
      console.log()
      console.log()
      console.log()
      console.log()
      console.log()
      console.log()
      
      
      },
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


  


  

  showProfileInfo: boolean = false;
  showBenefitsInfo: boolean = false;

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

  toggleProfileInfo() {
    this.showProfileInfo = !this.showProfileInfo;

    if (this.showBenefitsInfo) {
      this.showBenefitsInfo = false
    }
  }

  toggleBenefitsInfo() {
    this.showBenefitsInfo = !this.showBenefitsInfo;

    if (this.showProfileInfo) {
      this.showProfileInfo = false
    }
  }
}
