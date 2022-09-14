package com.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.demo.entities.Image;

@Repository
public interface ImageRepository extends CrudRepository<Image, Integer> {

}
