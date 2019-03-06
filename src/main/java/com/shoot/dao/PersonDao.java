package com.shoot.dao;

import com.shoot.bean.Person;

public interface PersonDao extends DomainRepository<Person,Long> {
    public void  num();
}