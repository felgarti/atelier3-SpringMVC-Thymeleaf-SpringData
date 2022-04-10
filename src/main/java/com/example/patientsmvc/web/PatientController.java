package com.example.patientsmvc.web;

import com.example.patientsmvc.entities.Patient;
import com.example.patientsmvc.repositories.PatientRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@AllArgsConstructor

public class PatientController {
    private PatientRepository patientRepository ;
    @GetMapping(path="/index")
public  String patients(Model model, @RequestParam(name="page" , defaultValue = "0") int page
            , @RequestParam(name="size" , defaultValue = "5")int size  , @RequestParam(name="keyword" , defaultValue = "")  String keyword)
{
    Page<Patient> patients = patientRepository.findByNomContains(keyword , PageRequest.of(page , size)) ;
    model.addAttribute("ListPatients",patients.getContent())  ;
    model.addAttribute("pages" , new int[patients.getTotalPages()]) ;
    model.addAttribute("currentPage" , page) ;
    model.addAttribute("keyword" , keyword) ;
    return "patients" ;
}
@GetMapping(path="/delete")
public String delete(Long id,@RequestParam(name="keyword" , defaultValue = "")  String keyword ,
                     @RequestParam(name="page" , defaultValue = "0") int page)
{
    patientRepository.deleteById(id);
    return "redirect:/index?page="+page+"&keyword="+keyword ;
}
    @GetMapping(path="/")
    public String home(Long id)
    {

        return "redirect:/index" ;
    }

    @GetMapping(path="/patients")
    @ResponseBody
    public List<Patient> listPatients()
    {

        return patientRepository.findAll() ;
    }

}
