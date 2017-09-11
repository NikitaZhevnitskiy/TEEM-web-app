import { Injectable } from '@angular/core';
import { Http, Headers } from '@angular/http';

import { BackendService } from './backend.service';
import { User } from '../models/user';
import { Group } from '../models/group';

@Injectable()
export class UserService {
  user: User;

  constructor(
    private http: Http,
    private backendService: BackendService
    ) { }

  getUser(telephone: number) {
    return this.backendService.findByTelephone(telephone);
  }

  updateUserInLocalStorage(userPhone: number) {
    this.getUser(userPhone).subscribe(
      (user) => {
        this.user = user.json();
        for (let entry in this.user){
          localStorage.setItem( entry, this.user[ entry ] );
        }
        console.log('localStorage updated with user info');
        console.log('userService updated with user info');
        this.updateUserGroups(userPhone);
        },
      () => {
        console.log('error updating user info');
      }
    )
  }

  getGroups(userPhone: number) {
    return this.backendService.getPotsByTelephone(userPhone);
  }

  updateUserGroups(userPhone: number) {
    this.getGroups(userPhone).subscribe(
      groups => {
        this.user.groups = groups.json();
        console.log('groups updated in userService\'s user object');
      },
      error => {
        console.log('Error getting groups for user '+ userPhone);
        this.user.groups = [];
      });
  }

  setGroupName(groupId: string, newName: string) {
    return this.backendService.setGroupName(groupId, newName);
  }

  getInvitations(userPhone: number){
    return this.backendService.getInviteList(userPhone);
  }

  getMemberList(groupId: number){
    return this.backendService.getMemberListForGroup(groupId);
  }

  acceptInvitation(userPhone: string, potId: string){
    return this.backendService.acceptInvitation(userPhone, potId);
  }

  declineInvitation(userPhone: string, potId: string){
    return this.backendService.declineInvitation(userPhone, potId);
  }

}
