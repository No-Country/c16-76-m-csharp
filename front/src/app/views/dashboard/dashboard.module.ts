import { CommonModule } from '@angular/common';
import { HttpClientModule } from '@angular/common/http';
import { NgModule } from '@angular/core';
import { ReactiveFormsModule } from '@angular/forms';

import {
  AvatarModule,
  ButtonGroupModule,
  ButtonModule,
  CardModule,
  FormModule,
  GridModule,
  NavModule,
  ProgressModule,
  TableModule,
  TabsModule,
  ModalModule,
  UtilitiesModule,
  
} from '@coreui/angular';
import { IconModule } from '@coreui/icons-angular';
import { ChartjsModule } from '@coreui/angular-chartjs';

import { DashboardRoutingModule } from './dashboard-routing.module';
import { DashboardComponent } from './dashboard.component';

import { WidgetsModule } from '../widgets/widgets.module';
import { DashBoardEmployesComponent } from '../dash-board-employes/dash-board-employes.component';
import { EmployeesListComponent } from '../employees/employees-list/employees-list.component';
import { SolicitudesComponent } from '../solicitudes/solicitudes.component';
import { AdminPanelComponent } from '../admin-panel/admin-panel.component';
import { AssignmentsComponent } from '../assignments/assignments.component';
import { ReportsComponent } from '../reports/reports.component';
import { PermissionsComponent } from '../permissions/permissions.component';
import { ReportComponent } from '../report/report.component';

@NgModule({
  imports: [
    HttpClientModule,
    DashBoardEmployesComponent,
    DashboardRoutingModule,
    CardModule,
    NavModule,
    IconModule,
    TabsModule,
    CommonModule,
    GridModule,
    ProgressModule,
    ReactiveFormsModule,
    ButtonModule,
    FormModule,
    ButtonModule,
    ButtonGroupModule,
    ChartjsModule,
    AvatarModule,
    TableModule,
    ModalModule,
    UtilitiesModule,
    WidgetsModule,
  ],
  declarations: [
    DashboardComponent, 
    EmployeesListComponent, 
    SolicitudesComponent,
    AdminPanelComponent,
    AssignmentsComponent,
    ReportsComponent,
    PermissionsComponent,
    ReportComponent
  ],
})
export class DashboardModule {}
