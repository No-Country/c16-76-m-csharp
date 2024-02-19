import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ColorsComponent } from './colors.component';
import { TypographyComponent } from './typography.component';

const routes: Routes = [
  {
    path: '',
    data: {
      title: 'Información',
    },
    children: [
      {
        path: '',
        pathMatch: 'full',
        redirectTo: 'colors',
      },
      {
        path: 'colors',
        component: ColorsComponent,
        data: {
          title: 'Solicitudes',
        },
      },
      {
        path: 'typography',
        component: TypographyComponent,
        data: {
          title: 'Asistencia',
        },
      },
      {
        path: 'typography',
        component: TypographyComponent,
        data: {
          title: 'Desempeño',
        },
      },
    ],
  },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ThemeRoutingModule {}
