package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.donacion;


public interface donacionDao {

	donacion findById(int id);
	
	
	
	void save(donacion donacion);
	
	
	
	List<donacion> findAlldonaciones();

}

