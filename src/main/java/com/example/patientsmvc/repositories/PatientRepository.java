package com.example.patientsmvc.repositories;

import com.example.patientsmvc.entities.Patient;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

import static org.hibernate.hql.internal.antlr.SqlTokenTypes.OR;

public interface PatientRepository extends JpaRepository<Patient,Long> {

    Page<Patient> findByNomOrScore(String n , int s , Pageable pageable);
Page<Patient> findByNomContains(String n , Pageable pageable) ;



}
