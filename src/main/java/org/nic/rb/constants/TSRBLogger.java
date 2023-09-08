package org.nic.rb.constants;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TSRBLogger {
	public static Logger getTSRBLogger(Class<?> clazz){
		return LoggerFactory.getLogger(clazz);
	}
}
