import { INavData } from '@coreui/angular';

export const navItems: INavData[] = [
  {
    name: 'Información',
    url: '/dashboard',
    iconComponent: { name: 'cil-speedometer' },
    badge: {
      color: 'info',
      text: 'NEW'
    }
  },
  {
    name: 'Solicitudes',
    url: '/theme/colors',
    iconComponent: { name: 'cil-drop' }
  },
  {
    name: 'Asistencia',
    url: '/theme/typography',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-pencil' }
  },
  {
    name: 'Empleados',
    url: '/theme/employees',
    linkProps: { fragment: 'someAnchor' },
    iconComponent: { name: 'cil-speedometer' }
  },

];
