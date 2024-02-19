import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Panel de Empleados',
    url: '/dash-board-employes',
    iconComponent: { name: 'cil-speedometer' },
  },
  {
    name: 'Solicitudes',
    url: '/solicitudes/solicitudes',
    iconComponent: { name: 'cil-drop' },
  },
  {
    name: 'Asistencia',
    url: '/theme/typography',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-pencil' },
  },
];
