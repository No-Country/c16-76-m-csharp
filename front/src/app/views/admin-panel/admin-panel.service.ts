import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, map } from 'rxjs';
import { profileDTO } from '../admin-panel/interfaces/profileDTO';
import { baseResponse } from '../employees/interfaces/baseResponse';
import { benefitsDTO } from '../admin-panel/interfaces/benefitsDTO';
import { assignmentDTO } from '../assignments/interfaces/assignmentDTO';
import { permissionDTO } from '../permissions/interfaces/permissionDTO';
import { reportDTO } from '../reports/interfaces/reportDTO';

@Injectable({
  providedIn: 'root'
})
export class AdminPanelService {

  constructor(private http: HttpClient) { }

  private apiURL = 'https://back20240306103842.azurewebsites.net//api'

  public getProfileById(id: string):Observable<profileDTO>{
    return this.http.get<baseResponse>(`${this.apiURL}/Profile/${id}`).pipe(
      map(response => response.data)
    )
  }

  public getBenefitsById(id: string):Observable<benefitsDTO>{
    return this.http.get<baseResponse>(`${this.apiURL}/BenefitsSummary/${id}`).pipe(
      map(response => response.data)
    )
  }

  public getAllAssignmets(pageSize: number, pageNumber: number):Observable<assignmentDTO[]>{
    let params = new HttpParams();
    params = params.append('pageNumber', pageNumber.toString())
    params = params.append('pageSize', pageSize.toString())
    
    return this.http.get<baseResponse>(`${this.apiURL}/Assignment`, {params}).pipe(
      map(response => response.data)
    )
  }

  public getAllPermissions(pageSize: number, pageNumber: number):Observable<permissionDTO[]>{
    let params = new HttpParams();
    params = params.append('pageNumber', pageNumber.toString())
    params = params.append('pageSize', pageSize.toString())
    
    return this.http.get<baseResponse>(`${this.apiURL}/Permissions`, {params}).pipe(
      map(response => response.data)
    )
  }

  public getAllReports(pageSize: number, pageNumber: number):Observable<reportDTO[]>{
    let params = new HttpParams();
    params = params.append('pageNumber', pageNumber.toString())
    params = params.append('pageSize', pageSize.toString())
    
    return this.http.get<baseResponse>(`${this.apiURL}/Report`, {params}).pipe(
      map(response => response.data)
    )
  }

  public getReportById(id: string):Observable<reportDTO>{
    return this.http.get<baseResponse>(`${this.apiURL}/Report/${id}`).pipe(
      map(response => response.data)
    )
  }
}
