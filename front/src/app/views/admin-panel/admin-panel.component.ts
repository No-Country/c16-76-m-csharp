import { Component } from '@angular/core';
import { profileDTO } from '../admin-panel/interfaces/profileDTO';
import { benefitsDTO } from '../admin-panel/interfaces/benefitsDTO';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-admin-panel',
  templateUrl: './admin-panel.component.html',
  styleUrl: './admin-panel.component.scss'
})
export class AdminPanelComponent  {

  constructor
  (private activatedRoute: ActivatedRoute,
    private router: Router, ) {}

  profile: profileDTO = {
    firstName: 'Luis',
    lastName: 'Luna',
    userName: 'Luis_l',
    email: 'luis@email.com',
    phoneNumber: '555-5555',
    Assists: 100,
    Absences: 5,
    Delays: 3,
    Country: 'México',
    State: 'Guanajuato',
    Municipality: 'León',
    admissionDate: '2020-02-01',
    Salary: 500
  }

  benefits: benefitsDTO = {
    IncludesBonusA: true,
    BonusA: 1000,
    IncludesBonusB: false,
    BonusB: 0,
    IncludesBonusC: false,
    BonusC: 0,
    Holidays: 14,
    HasHealthCare: true,
    ProfileId: '11111111111111'
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
