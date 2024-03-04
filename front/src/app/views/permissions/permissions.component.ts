import { Component } from '@angular/core';
import { permissionDTO} from '../permissions/interfaces/permissionDTO'
import { AdminPanelService} from '../admin-panel/admin-panel.service'

@Component({
  selector: 'app-permissions',
  templateUrl: './permissions.component.html',
  styleUrl: './permissions.component.scss'
})
export class PermissionsComponent {

  constructor(private adminPanelService: AdminPanelService) {}

  permissions: permissionDTO[] = []

  ngOnInit(): void {
    this.getAllPermissions()
  }

  getAllPermissions(pageSize: number = 50, pageNumber: number = 1) {
    this.adminPanelService.getAllPermissions(pageSize, pageNumber)
    .subscribe({
      next: permissions => {this.permissions = permissions},
      error: error => console.log(error)
    })
  }



  public visible = false;

  toggleLiveDemo() {
    this.visible = !this.visible;
  }

  handleLiveDemoChange(event: any) {
    this.visible = event;
  }
}
