package com.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.entities.Image;
import com.demo.repositories.ImageRepository;

@Service
public class ImageServiceImpl implements ImageService{
	
	@Autowired
	private ImageRepository imageRepository;

	@Override
	public Iterable<Image> findAll() {
		// TODO Auto-generated method stub
		return imageRepository.findAll();
	}

	@Override
	public Image findById(int id) {
		// TODO Auto-generated method stub
		return imageRepository.findById(id).get();
	}

	@Override
	public Image save(Image image) {
		// TODO Auto-generated method stub
		return imageRepository.save(image);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		imageRepository.deleteById(id);
	}
}
