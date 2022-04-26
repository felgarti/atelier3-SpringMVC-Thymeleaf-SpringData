package com.example.patientsmvc.sec.service;

import com.example.patientsmvc.sec.entities.AppRole;
import com.example.patientsmvc.sec.entities.AppUser;

public interface SecurityService  {
    AppUser saveNewUSer(String username , String password , String verifyPassword );
    AppRole saveNewRole(String rolename , String description ) ;
    //27
    void addRoleToUser(String username , String rolename ) ;
    void removeRoleFromUser(String username , String rolename ) ;
    AppUser loadUserByUserName(String username) ;
}
