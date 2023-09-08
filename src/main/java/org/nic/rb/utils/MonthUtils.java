package org.nic.rb.utils;

import java.time.Month;
import java.time.format.TextStyle;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.nic.rb.model.MonthModel;

public class MonthUtils {
	
	public static List<MonthModel> getMonths() {
		List<MonthModel> months = new ArrayList<>();
		TextStyle textStyle = TextStyle.FULL;
		Locale locale = Locale.ENGLISH;
		for ( Month month : Month.values () ) {
			MonthModel mModel = new MonthModel(month.getValue(), month.getDisplayName(textStyle, locale));
			months.add(mModel);
		}
		return months;
	}
}
