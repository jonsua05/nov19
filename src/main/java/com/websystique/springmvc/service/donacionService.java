package com.websystique.springmvc.service;

import java.util.List;

import com.websystique.springmvc.model.donacion;


public interface donacionService {
	
	donacion findById(int id);
	
	
	
	void savedonacion(donacion donacion);
	
	void updatedonacion(donacion donacion);
	
	

	List<donacion> findAlldonaciones(); 
	
	

}