package com.shoot.controller;

import com.shoot.bean.Person;
import com.shoot.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/user")
public class MainController {

    @Autowired
    private PersonService personService;


    @RequestMapping(value = "/regist")
    @ResponseBody
    public String regist(@RequestParam String username ,@RequestParam String password){
        Person person=new Person();
        person.setUsername(username);
        person.setPassword(password);
        personService.savePerson(person);
        return "success";
    }
    @RequestMapping(value = "/homePage")
    public  String home(){
        return "test";
    }
}