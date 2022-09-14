package com.demo.services;

import com.demo.entities.Contact;

public interface ContactService {
	
	public Iterable<Contact> findAll();

	public Contact findById(int id);

	public Contact save(Contact contact);

	public void delete(int id);
}
