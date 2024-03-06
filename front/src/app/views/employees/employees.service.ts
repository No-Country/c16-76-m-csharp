import { HttpClient, HttpParams  } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, map, of } from 'rxjs';
import { user } from './interfaces/user';
import { baseResponse } from './interfaces/baseResponse';
import { UserRequestDTO } from './interfaces/createUserDTO';

@Injectable({
  providedIn: 'root'
})
export class EmployeesService {

  constructor(private http: HttpClient) { }

  private apiURL = 'https://back20240306103842.azurewebsites.net//api/' + 'User'

  // employees: user[] = [
  //   {
  //     id: '1',
  //     userName: 'john_doe',
  //     firstName: 'John',
  //     lastName: 'Doe',
  //     email: 'john.doe@example.com',
  //     phoneNumber: '+1234567890',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '2',
  //     userName: 'jane_smith',
  //     firstName: 'Jane',
  //     lastName: 'Smith',
  //     email: 'jane.smith@example.com',
  //     phoneNumber: '+1987654321',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '3',
  //     userName: 'mike_johnson',
  //     firstName: 'Mike',
  //     lastName: 'Johnson',
  //     email: 'mike.johnson@example.com',
  //     phoneNumber: '+1122334455',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '4',
  //     userName: 'alex_jackson',
  //     firstName: 'Alex',
  //     lastName: 'Jackson',
  //     email: 'alex.jackson@example.com',
  //     phoneNumber: '+1555123456',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '5',
  //     userName: 'emily_wilson',
  //     firstName: 'Emily',
  //     lastName: 'Wilson',
  //     email: 'emily.wilson@example.com',
  //     phoneNumber: '+1654321879',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '6',
  //     userName: 'chris_adams',
  //     firstName: 'Chris',
  //     lastName: 'Adams',
  //     email: 'chris.adams@example.com',
  //     phoneNumber: '+1789456123',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '7',
  //     userName: 'sarah_brown',
  //     firstName: 'Sarah',
  //     lastName: 'Brown',
  //     email: 'sarah.brown@example.com',
  //     phoneNumber: '+1888777666',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '8',
  //     userName: 'kevin_miller',
  //     firstName: 'Kevin',
  //     lastName: 'Miller',
  //     email: 'kevin.miller@example.com',
  //     phoneNumber: '+1777666555',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '9',
  //     userName: 'lisa_taylor',
  //     firstName: 'Lisa',
  //     lastName: 'Taylor',
  //     email: 'lisa.taylor@example.com',
  //     phoneNumber: '+1666555444',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '10',
  //     userName: 'michael_anderson',
  //     firstName: 'Michael',
  //     lastName: 'Anderson',
  //     email: 'michael.anderson@example.com',
  //     phoneNumber: '+1888333222',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '11',
  //     userName: 'amanda_thomas',
  //     firstName: 'Amanda',
  //     lastName: 'Thomas',
  //     email: 'amanda.thomas@example.com',
  //     phoneNumber: '+1999444333',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '12',
  //     userName: 'ryan_martinez',
  //     firstName: 'Ryan',
  //     lastName: 'Martinez',
  //     email: 'ryan.martinez@example.com',
  //     phoneNumber: '+1555666777',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '13',
  //     userName: 'jessica_hernandez',
  //     firstName: 'Jessica',
  //     lastName: 'Hernandez',
  //     email: 'jessica.hernandez@example.com',
  //     phoneNumber: '+1222333444',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '14',
  //     userName: 'david_wood',
  //     firstName: 'David',
  //     lastName: 'Wood',
  //     email: 'david.wood@example.com',
  //     phoneNumber: '+1444555666',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '15',
  //     userName: 'olivia_king',
  //     firstName: 'Olivia',
  //     lastName: 'King',
  //     email: 'olivia.king@example.com',
  //     phoneNumber: '+1333444555',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '16',
  //     userName: 'jason_lopez',
  //     firstName: 'Jason',
  //     lastName: 'Lopez',
  //     email: 'jason.lopez@example.com',
  //     phoneNumber: '+1666666666',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '17',
  //     userName: 'stephanie_scott',
  //     firstName: 'Stephanie',
  //     lastName: 'Scott',
  //     email: 'stephanie.scott@example.com',
  //     phoneNumber: '+1777777777',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '18',
  //     userName: 'daniel_green',
  //     firstName: 'Daniel',
  //     lastName: 'Green',
  //     email: 'daniel.green@example.com',
  //     phoneNumber: '+1888888888',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '19',
  //     userName: 'natalie_evans',
  //     firstName: 'Natalie',
  //     lastName: 'Evans',
  //     email: 'natalie.evans@example.com',
  //     phoneNumber: '+1999999999',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  //   {
  //     id: '20',
  //     userName: 'brandon_campbell',
  //     firstName: 'Brandon',
  //     lastName: 'Campbell',
  //     email: 'brandon.campbell@example.com',
  //     phoneNumber: '+1000000000',
  //     profileId: '451cb069-b8ea-4a68-b930-40fa1940c0e5'
  //   },
  // ];

  public getAmount():Observable<number>{
    return this.http.get<baseResponse>(`${this.apiURL}/amount`).pipe(
      map(response => response.data)
    )
  }

  public getAll(pageNumber: number, pageSize: number):Observable<user[] >{
    let params = new HttpParams();
    params = params.append('pageNumber', pageNumber.toString())
    params = params.append('pageSize', pageSize.toString())

    return this.http.get<baseResponse>(this.apiURL, {params}).pipe(
      map(response => response.data)
    )
  }

  public getById(id: string):Observable<user>{
    return this.http.get<baseResponse>(`${this.apiURL}/${id}`).pipe(
      map(response => response.data)
    )
  }

  public update(user: UserRequestDTO) {
    return this.http.put(`${this.apiURL}/${user.originalEmail}`, user)
    // return of("Ok");
  }

  public create(user: UserRequestDTO) {
    return this.http.post(this.apiURL, user)
    // return of("Ok");
  }

  public delete(email: string) {
    return this.http.delete<baseResponse>(`${this.apiURL}/${email}`).pipe(
      map(response => response.data)
    )
  }
}
