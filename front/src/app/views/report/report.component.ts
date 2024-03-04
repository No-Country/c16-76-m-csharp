import { Component } from '@angular/core';
import { reportDTO } from '../reports/interfaces/reportDTO';
import { ActivatedRoute } from '@angular/router';
import { AdminPanelService } from '../admin-panel/admin-panel.service';

@Component({
  selector: 'app-report',
  templateUrl: './report.component.html',
  styleUrl: './report.component.scss'
})
export class ReportComponent {
  
  constructor
  (private activatedRoute: ActivatedRoute,
    private adminPanelService: AdminPanelService) {}
    
  report: reportDTO = 
  {
    id: '',
    date: '2020-01-01',
    performance:10,
    achivedGoals: 0.85,
    savedMoney: 2000,
    profileId:'99f7ca8d-1304-40cc-bc1d-59186f4543f2',
    comments:'Creatividad: Juan ha demostrado una gran creatividad en la creación de campañas publicitarias. Sus ideas frescas han contribuido al éxito de varios proyectos. Trabajo en Equipo: Juan es un colaborador excepcional. Siempre está dispuesto a ayudar a sus compañeros y aporta positivamente en las reuniones de equipo. Cumplimiento de Plazos: Juan cumple con los plazos establecidos. Su capacidad para gestionar su tiempo y entregar resultados a tiempo es destacable. Comunicación Escrita: A veces, las comunicaciones escritas de Juan pueden ser confusas. Le recomendaría revisar y ser más conciso en sus correos electrónicos y documentos. Habilidades Analíticas: Juan podría beneficiarse de mejorar sus habilidades analíticas. Algunos informes requieren un enfoque más profundo en el análisis de datos. Desarrollo Profesional: Juan debería considerar participar en cursos o talleres para seguir desarrollando sus habilidades en marketing digital. Comentarios Generales: Juan es un miembro valioso de nuestro equipo. Su actitud positiva y su dedicación son admirables. Continuaremos apoyándolo en su crecimiento profesional y esperamos verlo seguir prosperando en su rol.'
  }

  // report!: reportDTO

  ngOnInit(): void {
    this.getReportById()
  }
  
  getReportById() {
    this.activatedRoute.params.subscribe(params => {
      this.adminPanelService.getReportById(params['reportid'])
      .subscribe({
        next: (report) => this.report = report,
        error: (error) => console.log(error)
      })
    })    
  }
}
