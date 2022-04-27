package com.example.patientsmvc.repositories;

import com.example.patientsmvc.entities.Medecin;
import com.example.patientsmvc.entities.Patient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MedecinRepository extends JpaRepository<Medecin,Long> {

    Page<Medecin> findBySpecialiteContainsOrNomContains(String n , String t , Pageable pageable);




}
