package com.shoot.service.impl;

import com.shoot.bean.Person;

import com.shoot.dao.PersonDao;
import com.shoot.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao son;

    public Long savePerson(Person person) {


        return son.save(person);
    }
}
