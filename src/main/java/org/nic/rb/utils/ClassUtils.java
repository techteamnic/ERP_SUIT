package org.nic.rb.utils;

import org.nic.rb.constants.Constants;
import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;

public class ClassUtils {
	
	public static Logger logger = TSRBLogger.getTSRBLogger(ClassUtils.class);
	
	public static Class<?> getClassByString(String query_entity) {
		String class_path;
		Class<?> clazz = null;
		
		if(query_entity.contains("Master")) 
			class_path = Constants.PACKAGE_ENTITIES.concat(query_entity);
		else 
			class_path = Constants.PACKAGE_ENTITIES.concat(query_entity).concat("Master");
			
		try {
			clazz = Class.forName(class_path);
		} catch (ClassNotFoundException e) {
			logger.error("Exception Occured in ClassUtils at getClassByString {}", e.getMessage());
//			e.printStackTrace();
		}
		return clazz;
	}
}
