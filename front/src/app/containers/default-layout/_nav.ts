import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Panel de Empleados',
    url: '/panel',
    iconComponent: { name: 'cil-speedometer' },
  },
  {
    name: 'Solicitudes',
    url: '/solicitudes',
    iconComponent: { name: 'cil-drop' },
  },
  {
    name: 'Asistencia',
    url: '/asistencias',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-pencil' },
  },
];
