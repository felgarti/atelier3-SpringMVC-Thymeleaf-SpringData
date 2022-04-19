package com.example.patientsmvc;

import com.example.patientsmvc.entities.Patient;
import com.example.patientsmvc.repositories.PatientRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import java.util.Date;

@SpringBootApplication
public class PatientsMvcApplication {

    public static void main(String[] args) {
        SpringApplication.run(PatientsMvcApplication.class, args);

    }

    @Bean
    CommandLineRunner commandLineRunner(PatientRepository patientRepository)
    {
        return  args -> {
            patientRepository.save(new Patient(null , "Fatima " , new Date() , false , 15)) ;
            patientRepository.save(new Patient(null , "Hamza " , new Date() , true , 18)) ;
            patientRepository.save(new Patient(null , "Manal " , new Date() , false , 17)) ;
            patientRepository.save(new Patient(null , "Yousra " , new Date() , true , 16)) ;

        } ;
    }

}
