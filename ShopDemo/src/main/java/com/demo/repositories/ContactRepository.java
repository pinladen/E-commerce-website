package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.entities.Contact;

@Repository
public interface ContactRepository extends CrudRepository<Contact, Integer>{

}
