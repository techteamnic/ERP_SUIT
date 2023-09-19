package nic.commons.daoimpl;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
//ApplicationLogging;
import org.hibernate.transform.Transformers;
import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.stereotype.Component;

import nic.commons.dao.CommonService;

@Component("commonService")
public class CommonServiceImpl implements CommonService {
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	/**
	 * 
	 */
	
	@PersistenceContext
    private EntityManager entityManager;

	
	/*@SuppressWarnings("unchecked")
	public <E> E findByPropertiessingleentity(String hql, Object[] params, Session session) {

		Object object = null;
		Query HQL_QUERY = null;

		try {

			HQL_QUERY = session.createQuery(hql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					HQL_QUERY.setParameter(i, params[i]);
				}
			}
			HQL_QUERY.setMaxResults(1);
			object = (E) HQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			hbe.printStackTrace();
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E findByPropertiessingleentityByName(Class<E> entityName,
			String propertyName, Object value, Session session) {

		Object object = null;
		Query HQL_QUERY = null;
		String hql = null;

		try {

			hql = "FROM " + entityName.getSimpleName() + " WHERE "
					+ propertyName + " =  ? ";
			HQL_QUERY = session.createQuery(hql);
			HQL_QUERY.setParameter(0, value);
			object = (E) HQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E findByPropertiessingleentityByNameWITHSEARCH(Class<E> entityName, String propertyName, Object value,
			Session session) {

		Object object = null;
		Query HQL_QUERY = null;
		String hql = null;

		try {

			hql = "FROM " + entityName.getSimpleName() + " WHERE " + propertyName + " =  ? ";
			HQL_QUERY = session.createQuery(hql);
			HQL_QUERY.setParameter(0, " % " + value + " % ");
			object = (E) HQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(),e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E findByPropertiesList(String hql, Object[] params, Session session) {

		Object object = null;
		Query HQL_QUERY = null;

		try {

			HQL_QUERY = session.createQuery(hql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					HQL_QUERY.setParameter(i, params[i]);
				}
			}
			object = (E) HQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(),e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E findByPropertiesListByName(Class<E> entityName, String propertyName, Object value, Session session) {

		Object object = null;
		Query HQL_QUERY = null;
		String hql = null;

		try {

			hql = "FROM " + entityName.getSimpleName() + " WHERE " + propertyName + " =  ? ";
			HQL_QUERY = session.createQuery(hql);
			HQL_QUERY.setParameter(0, value);
			object = (E) HQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(),e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E findByPropertiesListByNameWITHSEARCH(Class<E> entityName,
			String propertyName, Object value, Session session) {

		Object object = null;
		Query HQL_QUERY = null;
		String hql = null;

		try {

			hql = "FROM " + entityName.getSimpleName() + " WHERE "
					+ propertyName + " =  ? ";
			HQL_QUERY = session.createQuery(hql);
			HQL_QUERY.setParameter(0, " % " + value + " % ");
			object = (E) HQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the Unique Object the exception generated ~2~ is " + e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E loadAll(Class<E> entityName, Session session, String param) {

		Object object = null;
		Query HQL_QUERY = null;
		String hql = null;

		try {

			hql = "FROM " + entityName.getSimpleName();
			if (param != null) {
				hql += param;
			}
			HQL_QUERY = session.createQuery(hql);
			object = (E) HQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects the exception generated ~2~ is " + e.getMessage(),e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuery(String query, Class<E> entityClass,
			Session session) {

		Object object = null;

		try {

			Query q = session.createSQLQuery(query).setResultTransformer(
					Transformers.aliasToBean(entityClass));
			object = q.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
		    logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuery(String query, Session session) {

		Object object = null;

		try {

			Query q = session.createSQLQuery(query);
			object = q.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQueryUniqueObject(String query, Session session) {

		Object object = null;

		try {

			Query q = session.createSQLQuery(query);
			object = q.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuerywithparameters(String query,
			Class<E> entityClass, Object[] params, Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query).setResultTransformer(
					Transformers.aliasToBean(entityClass));
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(i, params[i]);
				}
			}
			object = SQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuerywithparameters(String query, Object[] params,
			Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(i, params[i]);
				}
			}
			object = SQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}
	
    @SuppressWarnings("unchecked")
    public <E> E nativeSQLQuerywithparameters(String query, Object[] params) {
        Query queryObject = entityManager.createNativeQuery(query);
        if (params != null) {
            for (int i = 0; i < params.length; i++) {
                queryObject.setParameter(i + 1, params[i]);
            }
        }

        Object object = queryObject.getResultList();
        return (E) object;
    }

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query,
			Class<E> entityClass, Object[] params, Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query).setResultTransformer(
					Transformers.aliasToBean(entityClass));
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(i, params[i]);
				}
			}
			object = SQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
		    logger.error("In getting the Single of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query, Object[] params, Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(i, params[i]);
				}
			}
			object = SQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQueryWithSingleColonmparma(String query,
			Object value, Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query);
			if(value != null) {
				SQL_QUERY.setParameter(0, value);
			}
			object = SQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	*//**
	 * 
	 *//*
	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQueryWithSingleColonmparmaWIthSingleEntity(
			String query, Object value, Session session) {

		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query);
			if(value != null) {
				SQL_QUERY.setParameter(0, value);
			}
			object = SQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	@Override
	public Integer updateEntity(String hql, Object[] params, Session session) {
		
		Integer result = 0;
		Query HQL_QUERY = null;
		try {
			HQL_QUERY = session.createQuery(hql);
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					HQL_QUERY.setParameter(i, params[i]);
				}
			}
			HQL_QUERY.setMaxResults(1);
			result = HQL_QUERY.executeUpdate();

		} catch (HibernateException hbe) {
			hbe.printStackTrace();
			logger.error("In updating the Unique Object the HibernateException generated ~1~ is " + hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In Updating the Unique Object the exception generated ~2~ is " + e.getMessage(), e);
		}

		return result;
	}

	@SuppressWarnings("unchecked")
	public <E> E nativeSQLQuerywithSetParameters(String query, Class<E> entityClass, String[] params, Object[] values, Session session) {
		
		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query).setResultTransformer(Transformers.aliasToBean(entityClass));
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(params[i], values[i]);
				}
			}
			object = SQL_QUERY.list();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}

	@SuppressWarnings("unchecked")
	@Override
	public <E> E nativeSQLQuerySingleEntitywithSetParameters(String query, Class<E> entityClass,
			String[] params, Object[] values, Session session) {
		Object object = null;
		Query SQL_QUERY = null;

		try {

			SQL_QUERY = session.createSQLQuery(query).setResultTransformer(Transformers.aliasToBean(entityClass));
			if (params != null) {
				for (int i = 0; i < params.length; i++) {
					SQL_QUERY.setParameter(params[i], values[i]);
				}
			}
			object = SQL_QUERY.uniqueResult();

		} catch (HibernateException hbe) {
			logger.error("In getting the List of Objects in navivesqlquery the HibernateException generated ~1~ is "+ hbe.getMessage(), hbe);
		} catch (Exception e) {
			logger.error("In getting the List of Objects in navivesqlquery the exception generated ~2~ is "+ e.getMessage(), e);
		}

		return (E) object;
	}
*/
	@SuppressWarnings("unchecked")
	@Override
	public <E> E nativeSQLQuerywithparameters(String query, Object[] params, Session session) {
		Query queryObject = entityManager.createNativeQuery(query);
        if (params != null) {
            for (int i = 0; i < params.length; i++) {
                queryObject.setParameter(i + 1, params[i]);
            }
        }

        Object object = queryObject.getResultList();
        return (E) object;
	}


	@Override
	public <E> E findByPropertiessingleentity(String hql, Object[] params, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E findByPropertiessingleentityByName(Class<E> entityName, String propertyName, Object value,
			Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E findByPropertiessingleentityByNameWITHSEARCH(Class<E> entityName, String propertyName, Object value,
			Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E findByPropertiesList(String hql, Object[] params, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E findByPropertiesListByName(Class<E> entityName, String propertyName, Object value, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E findByPropertiesListByNameWITHSEARCH(Class<E> entityName, String propertyName, Object value,
			Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Integer updateEntity(String hql, Object[] params, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E loadAll(Class<E> entityName, Session session, String param) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuery(String query, Class<E> entityClass, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuery(String query, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQueryUniqueObject(String query, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuerywithparameters(String query, Class<E> entityClass, Object[] params, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query, Class<E> entityClass, Object[] params,
			Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query, Object[] params, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQueryWithSingleColonmparma(String query, Object value, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQueryWithSingleColonmparmaWIthSingleEntity(String query, Object value, Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuerywithSetParameters(String query, Class<E> entityClass, String[] params, Object[] values,
			Session session) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <E> E nativeSQLQuerySingleEntitywithSetParameters(String query, Class<E> entityClass, String[] params,
			Object[] values, Session session) {
		// TODO Auto-generated method stub
		return null;
	}
}
