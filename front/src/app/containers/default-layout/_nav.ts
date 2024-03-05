import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Panel de Empleado',
    url: '/panel',
    iconComponent: { name: 'cil-home' },
  },
  {
    name: 'Solicitudes',
    url: '/solicitudes',
    iconComponent: { name: 'cil-notes' },
  },
  {
    name: 'Asistencia',
    url: '/asistencias',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-pencil' },
  },
  {
    name: 'Empleados',
    url: '/empleados',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-people' },
  },
];
