package org.nic.rb.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Order;
import org.nic.rb.entity.GalleryEntity;
import org.nic.rb.utils.ClassUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MasterDaoImpl implements MasterDao{
	
	@Autowired
	private EntityManager entityManager;
	
	/*@Value("${app.entity.package}")
	private String master_pack;*/
	
	private static String MASTRER_GET_QUERY = null;
	
	@SuppressWarnings("unchecked")
	@Override
	public <T> List<T> getMasterDetailsByQ(String query_entity) {
		switch (query_entity) {
		case "ApplicantTypeMaster":
			MASTRER_GET_QUERY = "from ApplicantTypeMaster";
			break;
		case "PurposeVisitMaster":
			MASTRER_GET_QUERY = "from PurposeVisitMaster";
			break;
		case "DistrictMaster":
			MASTRER_GET_QUERY = "from DistrictMaster";
			break;
		case "TypeInvitaionMaster":
			MASTRER_GET_QUERY = "from TypeInvitaionMaster";
			break;
		case "RolesMaster":
			MASTRER_GET_QUERY = "from RolesMaster";
			break;
		}
		return (List<T>) entityManager.createQuery(MASTRER_GET_QUERY, ClassUtils.getClassByString(query_entity)).getResultList();
	}

	@Override
	public <T> T addMasterData(T clazz) {
		entityManager.unwrap(Session.class).saveOrUpdate(clazz);
		return clazz; 
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public <T> List<T> masterLoadDataByEntity(T clazz) {
		Session session = entityManager.unwrap(Session.class);
		Criteria criteria = session.createCriteria((Class<T>) clazz);
		criteria.add(Expression.eq("is_active", true));
		criteria.addOrder(Order.asc("id"));
		return criteria.list();
	}

	@SuppressWarnings("deprecation")
	@Override
	public String getmasterLabelByIdAndTable(Integer id, String entity_name, String label) {
		
		String MST_QUERY = null;
		Session session = entityManager.unwrap(Session.class);
		switch (label) {
		case "applicant_type":
			MST_QUERY = "select applicant_type from applicant_type_mst where id =:id";
			break;
			
		case "purpose_visit":
			MST_QUERY = "select purpose_visit from purpose_visit_mst where id =:id";		
			break;
		case "district":
			MST_QUERY = "select district from district_mst where id =:id";
			break;
		case "type_invitaion":
			MST_QUERY = "select type_invitaion from type_invitaion_mst where id =:id";
			break;
		}
		/*StringBuilder query_builder = new StringBuilder("select ");
		query_builder.append(label).append(" from ").append(entity_name)
		.append(" where id =:id");*/
		@SuppressWarnings("rawtypes")
		Query query = session.createSQLQuery(MST_QUERY)
							 .setParameter("id", id);	
		return (String) query.uniqueResult();
	}
	
	@Override
	public Integer addGallery(GalleryEntity galEntity) {
		return (Integer) entityManager.unwrap(Session.class).save(galEntity);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<GalleryEntity> getAllGallery(int pageNumber) {
		int pageSize = 1;
		Session session = entityManager.unwrap(Session.class);
		Query query = session.createQuery("from GalleryEntity G ORDER BY G.gallery_id DESC");
		query.setFirstResult((pageNumber - 1) * pageSize);
        query.setMaxResults(pageSize);
		return query.list();
	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<GalleryEntity> getGalleries() {
		Session session = entityManager.unwrap(Session.class);
		Query query = session.createQuery("from GalleryEntity G ORDER BY G.gallery_id ASC");
		return query.list();
	}
	
	
}
