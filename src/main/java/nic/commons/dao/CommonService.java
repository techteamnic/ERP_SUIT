package nic.commons.dao;

import org.hibernate.Session;

public interface CommonService {

	/**
	 * HIBERNATE QUERY TEMPLATE LIBRARY declaration
	 * 
	 */

	/**
	 * 
	 * @param hql
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiessingleentity(String hql, Object[] params, Session session);

	/**
	 * 
	 * @param entityName
	 * @param propertyName
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiessingleentityByName(Class<E> entityName, String propertyName, Object value, Session session);

	/**
	 * 
	 * @param entityName
	 * @param propertyName
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiessingleentityByNameWITHSEARCH(Class<E> entityName, String propertyName, Object value, Session session);

	/**
	 * 
	 * @param hql
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiesList(String hql, Object[] params, Session session);

	/**
	 * 
	 * @param entityName
	 * @param propertyName
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiesListByName(Class<E> entityName, String propertyName, Object value, Session session);

	/**
	 * 
	 * @param entityName
	 * @param propertyName
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E findByPropertiesListByNameWITHSEARCH(Class<E> entityName, String propertyName, Object value, Session session);

	
	/**
	 * 
	 * @param propertyName
	 * @param value
	 * @param session
	 * @return
	 */
	public Integer updateEntity(String hql, Object[] params, Session session);
	
	/**
	 * 
	 * @param entityName
	 * @param session
	 * @param param
	 * @return
	 */
	public <E> E loadAll(Class<E> entityName, Session session, String param);

	/**
	 * SQL QUERY TEMPLATE LIBRARY declaration
	 * 
	 */

	/**
	 * 
	 * @param query
	 * @param entityClass
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuery(String query, Class<E> entityClass, Session session);

	/**
	 * 
	 * @param query
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuery(String query, Session session);

	/**
	 * 
	 * @param query
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQueryUniqueObject(String query, Session session);

	/**
	 * 
	 * @param query
	 * @param entityClass
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerywithparameters(String query, Class<E> entityClass, Object[] params, Session session);

	/**
	 * 
	 * @param query
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerywithparameters(String query, Object[] params, Session session);

	/**
	 * 
	 * @param query
	 * @param entityClass
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query, Class<E> entityClass, Object[] params, Session session);

	
	/**
	 * 
	 * @param query
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerywithparametersSingleEntity(String query, Object[] params, Session session);

	/**
	 * 
	 * @param query
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQueryWithSingleColonmparma(String query, Object value, Session session);

	/**
	 * 
	 * @param query
	 * @param value
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQueryWithSingleColonmparmaWIthSingleEntity(String query, Object value, Session session);

	
	/**
	 * 
	 * @param query
	 * @param entityClass
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerywithSetParameters(String query, Class<E> entityClass, String[] params, Object[] values, Session session);
	
	/**
	 * 
	 * @param query
	 * @param entityClass
	 * @param params
	 * @param session
	 * @return
	 */
	public <E> E nativeSQLQuerySingleEntitywithSetParameters(String query, Class<E> entityClass, String[] params, Object[] values, Session session);
}
