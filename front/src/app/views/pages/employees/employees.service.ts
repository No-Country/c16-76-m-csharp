import { HttpClient, HttpParams  } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, map } from 'rxjs';
import { user } from './interfaces/user';
import { baseResponse } from './interfaces/baseResponse';

@Injectable({
  providedIn: 'root'
})
export class EmployeesService {

  constructor(private http: HttpClient) { }

  private apiURL = 'https://localhost:7286/api/' + 'User'

  //Temporal Params
  pageNumber: number = 1
  pageSize: number = 10

  public getAll():Observable<user[] >{
    let params = new HttpParams();
    params = params.append('pageNumber', this.pageNumber.toString())
    params = params.append('pageSize', this.pageSize.toString())

    // return this.http.get<baseResponse>(this.apiURL, {observe: 'response', params}).pipe(
    return this.http.get<baseResponse>(this.apiURL, {params}).pipe(
      map(response => response.data)
    )
  }

}
