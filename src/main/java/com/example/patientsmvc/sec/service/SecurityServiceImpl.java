package com.example.patientsmvc.sec.service;

import com.example.patientsmvc.sec.entities.AppRole;
import com.example.patientsmvc.sec.entities.AppUser;
import com.example.patientsmvc.sec.repositories.AppRoleRepository;
import com.example.patientsmvc.sec.repositories.AppUserRepository;
import groovy.util.logging.Slf4j;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.UUID;

@Service
@Slf4j
@AllArgsConstructor
@Transactional
public class SecurityServiceImpl implements SecurityService {
    private AppUserRepository appUserRepository ;
    private AppRoleRepository appRoleRepository ;
    private PasswordEncoder passwordEncoder ;
    @Override
    public AppUser saveNewUSer(String username, String password, String verifyPassword) {
       if(!password.equals((verifyPassword))) throw  new RuntimeException(" passwords not matching ") ;
       String hashedPWD= passwordEncoder.encode(password) ;
       AppUser appUser = new AppUser() ;
       appUser.setUserId(UUID.randomUUID().toString());
       appUser.setUsername(username);
       appUser.setPassword(hashedPWD);
       appUser.setActive(true);
       AppUser saved =appUserRepository.save(appUser) ;

        return saved;
    }

    @Override
    public AppRole saveNewRole(String rolename, String description) {
        AppRole appRole = appRoleRepository.findByRoleName(rolename) ;
        if(appRole!=null) {
        new RuntimeException("Role "+rolename + " already exists .") ;

        }
        appRole= new AppRole() ;
        appRole.setRoleName(rolename);
        appRole.setDescription(description);
        appRoleRepository.save(appRole) ;
        return appRole;
    }

    @Override
    public void addRoleToUser(String username, String rolename) {
AppUser appUser =  appUserRepository.findByUsername(username) ;
        if(appUser!=null) {
            new RuntimeException("User "+username + " not found .") ;
        }
AppRole appRole= appRoleRepository.findByRoleName(rolename) ;
        if(appRole!=null) {
            new RuntimeException("Role "+rolename + " not found .") ;}
appUser.getAppRoles().add(appRole) ;
appUserRepository.save(appUser) ;
    }

    @Override
    public void removeRoleFromUser(String username, String rolename) {
        AppUser appUser =  appUserRepository.findByUsername(username) ;
        if(appUser!=null) {
            new RuntimeException("User "+username + " not found .") ;
        }
        AppRole appRole= appRoleRepository.findByRoleName(rolename) ;
        if(appRole!=null) {
            new RuntimeException("Role "+rolename + " not found .") ;}
        appUser.getAppRoles().remove(appRole) ;
    }
    @Override
    public AppUser loadUserByUserName(String username) {
     return    appUserRepository.findByUsername(username) ;}
}
