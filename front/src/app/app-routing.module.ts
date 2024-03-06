import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { DefaultLayoutComponent } from './containers';
import { Page404Component } from './views/pages/page404/page404.component';
import { Page500Component } from './views/pages/page500/page500.component';
import { LoginComponent } from './views/pages/login/login.component';
import { RegisterComponent } from './views/pages/register/register.component';
import { SolicitudesComponent } from './views/solicitudes/solicitudes.component';
import { AsistenciasComponent } from './views/asistencias/asistencias.component';
import { EmployeesListComponent } from './views/employees/employees-list/employees-list.component';
import { AdminPanelComponent } from './views/admin-panel/admin-panel.component';
import { AssignmentsComponent } from './views/assignments/assignments.component';
import { ReportsComponent } from './views/reports/reports.component';
import { PermissionsComponent } from './views/permissions/permissions.component';
import { ReportComponent } from './views/report/report.component';

const routes: Routes = [
  {
    path: '',
    redirectTo: 'panel',
    pathMatch: 'full',
  },
  {
    path: '',
    component: DefaultLayoutComponent,
    data: {
      title: 'Inicio',
    },
    children: [
      {
        path: 'panel',
        loadChildren: () =>
          import('./views/dashboard/dashboard.module').then(
            (m) => m.DashboardModule
          ),
      },
      { path: 'solicitudes', component: SolicitudesComponent },
      { path: 'asistencias', component: AsistenciasComponent },
      { path: 'empleados', component: EmployeesListComponent },
      { path: 'empleados/:id', component: AdminPanelComponent },
      { path: 'actividades/:id', component: AssignmentsComponent },
      { path: 'evaluaciones/:id', component: ReportsComponent },
      { path: 'evaluaciones/ver/:reportid', component: ReportComponent },
      { path: 'solicitudes/:id', component: PermissionsComponent },
      {
        path: 'widgets',
        loadChildren: () =>
          import('./views/widgets/widgets.module').then((m) => m.WidgetsModule),
      },
      {
        path: 'pages',
        loadChildren: () =>
          import('./views/pages/pages.module').then((m) => m.PagesModule),
      },
    ],
  },
  {
    path: '404',
    component: Page404Component,
    data: {
      title: 'Page 404',
    },
  },
  {
    path: '500',
    component: Page500Component,
    data: {
      title: 'Page 500',
    },
  },
  {
    path: 'login',
    component: LoginComponent,
    data: {
      title: 'Login Page',
    },
  },
  {
    path: 'register',
    component: RegisterComponent,
    data: {
      title: 'Register Page',
    },
  },
  { path: '**', redirectTo: 'dashboard' },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, {
      scrollPositionRestoration: 'top',
      anchorScrolling: 'enabled',
      initialNavigation: 'enabledBlocking',
      // relativeLinkResolution: 'legacy'
    }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
