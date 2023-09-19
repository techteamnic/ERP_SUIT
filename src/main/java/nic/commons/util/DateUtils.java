package nic.commons.util;

import static java.util.Calendar.DATE;
import static java.util.Calendar.MONTH;
import static java.util.Calendar.YEAR;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class DateUtils {
	
	private static final String DATE_NOTIFICATION = "04-10-2020";
	
	public static int getDiffYears(Date first, Date last) {
	    Calendar a = getCalendar(first);
	    Calendar b = getCalendar(last);
	    int diff = b.get(YEAR) - a.get(YEAR);
	    if (a.get(MONTH) > b.get(MONTH) || 
	        (a.get(MONTH) == b.get(MONTH) && a.get(DATE) > b.get(DATE))) {
	        diff--;
	    }
	    System.out.println("Year  Diff :"+ diff);
	    return diff;
	}

	public static Calendar getCalendar(Date date) {
	    Calendar cal = Calendar.getInstance(Locale.US);
	    cal.setTime(date);
	    return cal;
	}
	
	public static String dmy_ymdFormatter(String str_date) {
		String ds2 = null;
		SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
		try {
			 ds2 = sdf2.format(sdf1.parse(str_date));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return ds2;
	}
	
	public static long calcNoOfDays(String start_date, String end_date) {
		LocalDate dateBefore = LocalDate.parse(DateUtils.dmy_ymdFormatter(start_date));
		LocalDate dateAfter = LocalDate.parse(DateUtils.dmy_ymdFormatter(end_date));
			
		return ChronoUnit.DAYS.between(dateBefore, dateAfter);
	}
	
	public static String daysToYearsAndMonths(long no_days) {
		int years =  (int) (no_days / 365);
		int balance = (int) (no_days % 365);
		int months = balance / 30;
		int days = balance % 30;
		return years+" y, "+months+" m, "+days+" d";
	} 
	
	public static String ageCalculator(String dob) throws ParseException {
	      DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
	      //Calculating the difference between given date to current date.
	      Period period = Period.between(LocalDate.parse(dob, dateTimeFormatter), LocalDate.now());
	      return period.getYears()+" Years, "+period.getMonths()+" Months, "+period.getDays()+" days";
	}
	
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
	
}
