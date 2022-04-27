package com.example.patientsmvc.web;

import com.example.patientsmvc.entities.Medecin;
import com.example.patientsmvc.repositories.MedecinRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;
import java.util.List;

@Controller
@AllArgsConstructor

public class MedecinController {
    private MedecinRepository medecinRepository ;
    public boolean isInteger( String input ) {
        try {
            Integer.parseInt( input );
            return true;
        }
        catch( Exception e ) {
            return false;
        }
    }
    @GetMapping(path="/user/medecins/index")
public  String medecins(Model model, @RequestParam(name="page" , defaultValue = "0") int page
            , @RequestParam(name="size" , defaultValue = "5")int size  , @RequestParam(name="keyword" ,
            defaultValue = "")  String keyword )
{
    int score;
    Page<Medecin> medecins= medecinRepository.findBySpecialiteContainsOrNomContains(keyword,keyword , PageRequest.of(page,size)) ;
            //findByNomContains(keyword ,  PageRequest.of(page , size)) ;

    model.addAttribute("ListMedecins",medecins.getContent())  ;
    model.addAttribute("pages" , new int[medecins.getTotalPages()]) ;
    model.addAttribute("currentPage" , page) ;
    model.addAttribute("keyword" , keyword) ;
    return "medecins" ;
}
@GetMapping(path="/admin/medecins/delete")
public String delete(Long id,@RequestParam(name="keyword" , defaultValue = "")  String keyword ,
                     @RequestParam(name="page" , defaultValue = "0") int page)
{
    medecinRepository.deleteById(id);
    return "redirect:/user/medecins/index?page="+page+"&keyword="+keyword ;
}


    @GetMapping(path="/user/medecins")
    @ResponseBody
    public List<Medecin> listMedecins()
    {

        return medecinRepository.findAll() ;
    }

    @GetMapping(path="/admin/medecins/formMedecins")
    public String formMedecins(Model model)
    {
        model.addAttribute("medecin" , new Medecin()) ;
        return "formMedecins" ;
    }
    @PostMapping(path="/admin/medecins/save")
    public String save(Model model , @Valid Medecin medecin , BindingResult bindingResult  ,@RequestParam(name="keyword" , defaultValue = "") String keyword ,@RequestParam(name="page" , defaultValue = "0") int page )
    {
        if(bindingResult.hasErrors())
              return "formMedecins" ;

       medecinRepository.save(medecin) ;
        return "redirect:/user/medecins/index?page="+page+"&keyword="+keyword ;
    }
    @GetMapping(path="/admin/medecins/editMedecin")
    public String editMedecin(Model model , Long id ,String keyword , int page )
    {
       Medecin p =  medecinRepository.findById(id).orElse(null) ;
       if (p==null)
       {
           throw  new RuntimeException("medecin introuvable ") ;
       }
       model.addAttribute("page",page) ;
       model.addAttribute("keyword" , keyword ) ;
        model.addAttribute("medecin" ,p) ;
        return "editMedecin" ;
    }




}
