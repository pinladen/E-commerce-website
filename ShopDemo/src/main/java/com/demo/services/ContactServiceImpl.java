package com.demo.services;

import org.springframework.stereotype.Service;

import com.demo.entities.Contact;
import com.demo.repositories.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService{

	private ContactRepository contactRepository;

	@Override
	public Iterable<Contact> findAll() {
		// TODO Auto-generated method stub
		return contactRepository.findAll();
	}

	@Override
	public Contact findById(int id) {
		// TODO Auto-generated method stub
		return contactRepository.findById(id).get();
	}

	@Override
	public Contact save(Contact contact) {
		// TODO Auto-generated method stub
		return contactRepository.save(contact);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		contactRepository.deleteById(id);
	}
	
	
}
