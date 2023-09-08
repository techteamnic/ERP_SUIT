package org.nic.rb.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;

public class DateUtils {
	
	public static final Logger logger = TSRBLogger.getTSRBLogger(DateUtils.class);
	
	/*
	 * @param empty
	 * @return current date of util.Date
	 */
	public static Date getCurrentDate() {
		return new Date();
	}
	
	public static String printRegDate(Date in_date) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		return formatter.format(in_date);
	}
	
	/*
	 * @param none
	 * @return current date in String format of (yyyy-MM-dd)
	 */
	public static String getCurrDate() {
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	}
	
	/*
	 * @param none
	 * @return current date in String format of (yyyy-MM-dd)
	 */
	public static Date getCurrDateYTD() {
		try {
			return new SimpleDateFormat("yyyy-MM-dd").parse(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		} catch (ParseException e) {
			logger.error("Exception Occured in DateUtils at getCurrDateYTD while parsing Date {}", e.getMessage());
//			e.printStackTrace();
		}
		return null;
	} 
	
	/*
	 * @param none
	 * @return current date in String format of (dd.MM.yyyy)
	 */
	public static String getCurrDateWithOutHyphen() {
		return new SimpleDateFormat("dd-MM-yyyy").format(new Date()).replaceAll("-", ".");
	}
	
	/*
	 * @param date string of 'dd-MM-yyyy'
	 * @return util.Date in dd-MM-yyyy format
	 */
	public static Date getDateFromStringDTY(String format_date) {
		Date formated_date = null;
		try {
			formated_date = new SimpleDateFormat("dd-MM-yyyy").parse(format_date);
		} catch (ParseException e) {
			logger.error("Exception Occured in DateUtils at getDateFromStringDTY While parsing Date {}", e.getMessage());
//			e.printStackTrace();
		}
		return formated_date;
	}
	
	/*
	 * @param date string of 'dd-MM-yyyy'
	 * @return util.Date in given format
	 */
	public static Date getDateFromStringYTD(String format_date) {
		Date formated_date = null;
		try {
			formated_date = new SimpleDateFormat("yyyy-MM-dd").parse(format_date);
		} catch (ParseException e) {
			logger.error("Exception Occured in DateUtils at getDateFromStringYTD While parsing Date {}", e.getMessage());
//			e.printStackTrace();
		}
		return formated_date;
	}
	
	/*
	 * @param date string of 'yyyy-MM-dd'
	 * @return String in dd-MM-yyyy
	 */
	public static String getStringDTYFromStringYTD(String format_date) {
		Date dt = null;
			try {
				dt = new SimpleDateFormat("yyyy-MM-dd").parse(format_date);
			} catch (ParseException e) {
				logger.error("Exception Occured in DateUtils at getStringDTYFromStringYTD while parsing Date {}", e.getMessage());
//				e.printStackTrace();
			}
		return new SimpleDateFormat("dd-MM-yyyy").format(dt);
	}
	
	/*
	 * @param none
	 * @return util.Date in dd-MM-yyyy format
	 */
	public static String getDateDTYForRegNo(){
		return new SimpleDateFormat("dd-MM-yyyy").format(new Date());
	}
	
	/*
	 * @param none
	 * @return current date in String format of (yyyy-MM-dd)
	 */
	public static Integer getyearFromDate() {
		return Integer.parseInt(new SimpleDateFormat("yyyy").format(new Date()));
	}
}
