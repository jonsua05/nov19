package com.websystique.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.websystique.springmvc.dao.donacionDao;
import com.websystique.springmvc.model.donacion;


@Service("donacionService")
@Transactional
public class donacionServiceImpl implements donacionService{

	@Autowired
	private donacionDao dao;

	@Autowired
    private PasswordEncoder passwordEncoder;
	
	public donacion findById(int id) {
		return dao.findById(id);
	}



	public void savedonacion(donacion donacion) {
		dao.save(donacion);
	}

	/*
	 * Since the method is running with Transaction, No need to call hibernate update explicitly.
	 * Just fetch the entity from db and update it with proper values within transaction.
	 * It will be updated in db once transaction ends. 
	 */
	public void updatedonacion(donacion donacion) {
		donacion entity = dao.findById(donacion.getId());
		if(entity!=null){
			entity.setId(donacion.getId());
			entity.setnombre(donacion.getnombre());
			entity.setdescripcion(donacion.getdescripcion());
		}
	}

	


	public List<donacion> findAlldonaciones() {
		return dao.findAlldonaciones();
	}

	
	
}
