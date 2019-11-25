package com.websystique.springmvc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.websystique.springmvc.model.donacion;



@Repository("donacionDao")
public class donacionDaoImpl extends AbstractDao<Integer, donacion> implements donacionDao {

	static final Logger logger = LoggerFactory.getLogger(donacionDaoImpl.class);
	
	public donacion findById(int id) {
		donacion donacion = getByKey(id);
		if(donacion!=null){
			Hibernate.initialize(donacion.getId());
		}
		return donacion;
	}


	@SuppressWarnings("unchecked")
	public List<donacion> findAlldonaciones() {
		Criteria criteria = createEntityCriteria().addOrder(Order.asc("nombre"));
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);//To avoid duplicates.
		List<donacion> donacion = (List<donacion>) criteria.list();
		
		// No need to fetch userProfiles since we are not showing them on list page. Let them lazy load. 
		// Uncomment below lines for eagerly fetching of userProfiles if you want.
		/*
		for(User user : users){
			Hibernate.initialize(user.getUserProfiles());
		}*/
		return donacion;
	}

	public void save(donacion donacion) {
		persist(donacion);
	}

	

}
