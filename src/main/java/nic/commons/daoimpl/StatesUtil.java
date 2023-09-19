package nic.commons.daoimpl;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import nic.commons.model.StatesModel;

@Repository
@Transactional
public class StatesUtil {
	
	@Autowired
	private EntityManager entityManager;
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	
	@SuppressWarnings("unchecked")
	public List<StatesModel> getInstStudents(){
		/*
		 * Spring-mvc:
		 * 
		 * return sessionFactory.getCurrentSession().createSQLQuery("select id,cand_name from multi_personal_info where user_type = 1 order by id ")
				.setResultTransformer(Transformers.aliasToBean(StatesModel.class)).list();*/
		
		/*
		 * Spring-Boot:
		 */
		/*String jpql = "select id,cand_name from multi_personal_info where user_type = 1 order by id";
		TypedQuery<StatesModel> query = entityManager.unwrap(Session.class).createQuery(jpql, StatesModel.class);
        return query.getResultList();*/
        
		/*
		 * Spring-Boot: Latest Version method
		 */
        String sql = "select id,cand_name from multi_personal_info where user_type = 1 order by id";
        TypedQuery<StatesModel> query = entityManager.createQuery(sql, StatesModel.class);
        return query.getResultList();
	}
	
}
