package com.demo.helpers;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

public class UploadHelper {
	
	public static String uploadImageCategories(ServletContext servletContext, MultipartFile file) {
		if(file.isEmpty()) {
			System.out.println("file is null");
		}
		try {
			String fileName = generateFileName(file.getOriginalFilename());
			System.out.println("string name helper :" + fileName);
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/uploads/categories/" + fileName));
			Files.write(path, bytes);
			return fileName;
		} catch (Exception e) {
			System.out.println("erros");
			return null;
		}
	}
	
	public static String uploadImageProducts(ServletContext servletContext, MultipartFile file) {
		try {
			String fileName = generateFileName(file.getOriginalFilename());
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/uploads/products/" + fileName));
			Files.write(path, bytes);
			return fileName;
		} catch (Exception e) {
			return null;
		}
	}
	
	public static String uploadImageStore(ServletContext servletContext, MultipartFile file) {
		try {
			String fileName = generateFileName(file.getOriginalFilename());
			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/assets/uploads/stores/" + fileName));
			Files.write(path, bytes);
			return fileName;
		} catch (Exception e) {
			return null;
		}
	}
	
	private static String generateFileName(String fileName){
		String uuid = UUID.randomUUID().toString().replace("-", "");
		//a.doc.gif.png
		int index = fileName.lastIndexOf(".");
		String ext = fileName.substring(index);
		return uuid + ext;
	}
}
