import { Component } from '@angular/core';
import { permissionDTO} from '../permissions/interfaces/permissionDTO'

@Component({
  selector: 'app-permissions',
  templateUrl: './permissions.component.html',
  styleUrl: './permissions.component.scss'
})
export class PermissionsComponent {

  permissions: permissionDTO[] = [
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
    {
      id: '111111',
      type: 'Maternidad',
      limitDays: 40,
      status: 'Activo',
      profile: '1111111',
    },
  ]
}
