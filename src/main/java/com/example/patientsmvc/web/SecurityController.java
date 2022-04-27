package com.example.patientsmvc.web;

import com.example.patientsmvc.entities.Medecin;
import com.example.patientsmvc.sec.entities.AppUser;
import com.example.patientsmvc.sec.repositories.AppUserRepository;
import com.example.patientsmvc.sec.service.SecurityService;
import com.example.patientsmvc.sec.service.SecurityServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class SecurityController {
    @Autowired
    private SecurityService securityService;
    @GetMapping("/403")
    public  String notAuthorized ()
    {
        return "403" ;
    }
    @GetMapping("/signup")
    public  String signup(Model model ,@RequestParam(name="username" , defaultValue = "") String username ,
                          @RequestParam(name="passsword" , defaultValue = "") String password ,
                          @RequestParam(name="verifypassword" , defaultValue = "") String verifypassword)
    {
        model.addAttribute("username" , username);
        model.addAttribute("password" , password);
        model.addAttribute("verifypassword" , verifypassword);
        return "signup" ;
    }
    @PostMapping("/signup/save")
    public String signupSave(Model model ,@RequestParam(name="username" , defaultValue = "") String username ,
                             @RequestParam(name="password" , defaultValue = "") String password ,
                             @RequestParam(name="verifypassword" , defaultValue = "") String verifypassword )
    {


    System.out.println("pass :"+ password + "   verifypass :"+ verifypassword + "  username : "+ username);
    securityService.saveNewUSer(username.trim(), password.trim(), verifypassword.trim());

    securityService.addRoleToUser(username , "USER");

        return "redirect:/login" ;
    }
}
