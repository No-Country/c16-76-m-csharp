import { Component } from '@angular/core';
import { permissionDTO} from '../permissions/interfaces/permissionDTO'
import { AdminPanelService} from '../admin-panel/admin-panel.service'

@Component({
  selector: 'app-permissions',
  templateUrl: './permissions.component.html',
  styleUrl: './permissions.component.scss'
})
export class PermissionsComponent {

  constructor(private adminPanelService: AdminPanelService) {}

  // permissions: permissionDTO[] = []
  permissions: permissionDTO[] = [
    {
      id: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      daysAmount: 4,
      limitDays: 6,
      date: '2020-01-01',
      statusId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      statusName: 'Aprobada',
      typeId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      typeName: 'Trámite',
      profileId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    },
    {
      id: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      daysAmount: 4,
      limitDays: 6,
      date: '2020-01-01',
      statusId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      statusName: 'Aprobada',
      typeId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      typeName: 'Trámite',
      profileId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    },
    {
      id: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      daysAmount: 4,
      limitDays: 6,
      date: '2020-01-01',
      statusId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      statusName: 'Aprobada',
      typeId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      typeName: 'Trámite',
      profileId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    },
    {
      id: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      daysAmount: 4,
      limitDays: 6,
      date: '2020-01-01',
      statusId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      statusName: 'Aprobada',
      typeId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      typeName: 'Trámite',
      profileId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    },
    {
      id: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      daysAmount: 4,
      limitDays: 6,
      date: '2020-01-01',
      statusId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      statusName: 'Aprobada',
      typeId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
      typeName: 'Trámite',
      profileId: '99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    },
  ]

  ngOnInit(): void {
    this.getAllPermissions()
  }

  getAllPermissions(pageSize: number = 50, pageNumber: number = 1) {
    this.adminPanelService.getAllPermissions(pageSize, pageNumber)
    .subscribe({
      next: permissions => {this.permissions = permissions},
      error: error => console.log(error)
    })
  }

}
