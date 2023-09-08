package org.nic.rb.validator;

import java.util.Date;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.tika.Tika;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class Validations {
	
//	public static final String PNG_MIME_TYPE="image/png/jpeg";
	public static final long TWO_MB_IN_BYTES = 2097152;

	// CommonMethods common=new CommonMethods();

	// ================= EMAIL =============================
	public boolean isEmail(String str) {
		boolean b = true;
		String str1 = str;
		Pattern p = Pattern.compile(".+@.+\\.[a-zA-Z0-9]+");
		Matcher m = p.matcher(str1);
		// System.out.println("------------------3-"+str1+"-3-----------------");
		if (str1 != null && !str1.equals("")) {
			// System.out.println("-------------------IN IF------------------");
			b = m.matches();
		}
		return b;
	}

	// ================= CHARECTOR =============================

	public boolean isChar(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[a-zA-Z\\s\\.,]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isCharNoSpace(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[a-zA-Z]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	// ==============================Name====================================
	public boolean isName(String str) {
		String str1 = str;

		Pattern p = Pattern.compile("[a-zA-Z\\s\\.,]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();

		return b;
	}

	public boolean isNameAndMax(String str, int n) {

		String str1 = str;

		Pattern p = Pattern.compile("[a-zA-Z\\s\\.,]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();

		b = checkmaxLength(str1, n);

		return b;
	}

	// ================= NUMBER =============================

	public boolean isNum(String str) {
		str = isBlankInt(str);
		String str1 = str;
		Pattern.compile("[-+]?[0-9]*\\.?[0-9]+([eE][-+]?[0-9]+)?");
		Pattern p = Pattern.compile("[0-9]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isDouble(String str) {
		str = isBlankInt(str);
		String str1 = str;
		Pattern p = Pattern.compile("[0-9]{1,13}(\\.[0-9]*)?");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	
	public boolean isNumdot(String str) {
		str = isBlankInt(str);
		String str1 = str;
		Pattern p = Pattern.compile("[0-9.]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isNumComma(String str) {
		str = isBlankInt(str);
		String str1 = str;
		Pattern p = Pattern.compile("[0-9,]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isInteger(String str) {
		boolean s = false;
		try {
			Integer.parseInt(str);
			System.out.println("Int----" + Integer.parseInt(str));
			s = true;
		} catch (Exception e) {
			s = false;
		}

		return s;
	}

	// ================= EMPTY =============================

	public boolean isEmpty(String str) {
		String str1 = isBlank(str);
		Pattern p = Pattern.compile("");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	// ================= isBlank =============================

	public String isBlank(String str) {
		str = str == null ? "" : str;
		str = str.replace('\'', ' ');
		str = str.replace('\"', ' ');
		str = str.replace('<', ' ');
		str = str.replace('>', ' ');
		str = str.replace('%', ' ');
		str = str.replace('!', ' ');
		str = str.replace('|', ' ');
		str = str.replace('&', ' ');
		return str;
	}

	public String isBlankInt(String str) {
		str = str == null ? "0" : str;

		return str;
	}

	public String changeDateUpdate(String str) {
		String str1 = str;

		if (!str1.equals("") && str1 != null && str1 != "null") {
			String s1 = str1.substring(6, 10);
			String s2 = str1.substring(3, 5);
			String s3 = str1.substring(0, 2);
			str1 = s1 + "-" + s2 + "-" + s3;
		} else {
			str1 = "0000-00-00";
		}
		return str1;
	}

	public String changeDateRetrive(String str) {
		String str1 = str;

		if (!str1.equals("") && str1 != null && str1 != "null") {
			String s1 = str1.substring(0, 4);
			String s2 = str1.substring(5, 7);
			String s3 = str1.substring(8, 10);
			str1 = s3 + "-" + s2 + "-" + s1;
		} else {
			str1 = "0000-00-00";
		}
		return str1;
	}

	// ===================String with Space======================
	public boolean isStringSpaces(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[a-zA-Z\\s]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	// ===================String with out Space======================
	public boolean isString(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[a-zA-Z]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isAlphanumeric(String str) {

		String str1 = str;
		
		Pattern p = Pattern
				.compile("[a-zA-Z0-9\\s\\/\\.\\,\\_\\-\\(\\)\\&\\:\\']*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	public boolean isAlphanumeric_more_allow(String str) {

		String str1 = str;
		Pattern p = Pattern
				.compile("[a-zA-Z0-9\\s\\/\\.\\,\\_\\-\\(\\)\\&\\:\\;]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isTimeStamp(String str) {

		String str1 = str;

		Pattern p = Pattern.compile("[0-9\\s\\.\\:\\-]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	public boolean isTime(String str) {

		String str1 = str;

		Pattern p = Pattern.compile("[0-9a-zA-Z\\s\\.\\:]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	public boolean isBlood(String str) {

		String str1 = str;
		// //System.out.println("............."+str1);
		/*
		 * if(isEmpty(str1)) { return false; }
		 */
		Pattern p = Pattern.compile("[a-zA-Z\\s\\+\\-]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	public boolean isValidfield(String str) {

		String str1 = str;
		Pattern p = Pattern.compile("[a-zA-Z0-9\\s\\+\\-\\.\\@\\#\\$\\&\\_]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}

	public boolean isNumString(String str) {

		String str1 = str;
		// //System.out.println("............."+str1);
		/*
		 * if(isEmpty(str1)) { return false; }
		 */
		Pattern p = Pattern.compile("[a-zA-Z0-9]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	public boolean isFloat(String str) {

		String str1 = str;
		// //System.out.println("............."+str1);
		/*
		 * if(isEmpty(str1)) { return false; }
		 */
		Pattern p = Pattern.compile("[0-9\\.]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	// ##################### Get Current System Date
	// ###################################

	public String getCurrentDate() {
		Date d = new Date();
		String curdate = "";
		String months[] = { "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul",
				"Aug", "Sep", "Oct", "Nov", "Dec" };

		StringTokenizer st = new StringTokenizer(d.toString());
		String str[] = new String[6];
		int i = -1;
		while (st.hasMoreTokens()) {
			i++;
			str[i] = st.nextToken();

		}
		i = 0;
		while (i < 12) {

			if (str[1].equals(months[i])) {
				break;

			}
			i++;
		}
		if (i >= 12) {
			return curdate;
		} else {
			str[1] = "" + (++i);
		}
		curdate = str[2] + "-" + str[1] + "-" + str[5];
		return curdate;
	}

	// ##################### Date check with system date
	// ###################################

	public boolean isDateCheckGreater(String ldate, String gdate) {

		if (!isValidDate(ldate)) {
			return false;
		}
		if (!isValidDate(gdate)) {
			return false;
		}

		String pdate = ldate;
		String cdate = "";
		boolean flag = true;
		cdate = gdate;
		// System.out.println("----cdate---"+cdate);
		int str1[] = new int[3];
		int str2[] = new int[3];
		StringTokenizer pst = new StringTokenizer(pdate, "-");
		StringTokenizer cst = new StringTokenizer(cdate, "-");
		int i = -1;

		try {
			while ((pst.hasMoreTokens()) && (cst.hasMoreTokens())) {
				i++;

				str1[i] = Integer.parseInt(pst.nextToken());
				str2[i] = Integer.parseInt(cst.nextToken());
				// System.out.println("isDate...."+str1[i]);
				// System.out.println("cDate...."+str2[i]);

			}

			// year>
			if (str1[2] > str2[2]) {
				return false;
			}
			// year=
			else if (str1[2] == str2[2]) {
				// Month >
				if (str1[1] > str2[1]) {
					return false;
				}
				// Mont =
				else if (str1[1] == str2[1]) {

					// Day >
					if (str1[0] > str2[0]) {
						return false;
					}

				}

			}
		} catch (Exception e) {
			System.out.println("--valid--" + e);
			return false;
		}

		return flag;
	}

	// ##################### Date check with system date
	// ###################################

	/*
	 * public boolean isDateCheck(String str) {
	 * 
	 * 
	 * if(!isValidDate(str)) { return false; }
	 * 
	 * String pdate=str; String cdate=""; boolean flag=true;
	 * cdate=common.getSystemCurrentDate("-");
	 * //System.out.println("----cdate---"+cdate); int str1[]=new int[3]; int
	 * str2[]=new int[3]; StringTokenizer pst=new StringTokenizer(pdate,"-");
	 * StringTokenizer cst=new StringTokenizer(cdate,"-"); int i=-1;
	 * 
	 * try { while((pst.hasMoreTokens())&& (cst.hasMoreTokens())) { i++;
	 * 
	 * str1[i]=Integer.parseInt(pst.nextToken());
	 * str2[i]=Integer.parseInt(cst.nextToken());
	 * //System.out.println("isDate...."+str1[i]); //
	 * System.out.println("cDate...."+str2[i]);
	 * 
	 * }
	 * 
	 * 
	 * //year> if(str1[2]>str2[2]) { return false; } //year= else
	 * if(str1[2]==str2[2]) { //Month > if(str1[1]>str2[1]) { return false; }
	 * //Mont = else if(str1[1]==str2[1]) {
	 * 
	 * 
	 * //Day > if(str1[0]>str2[0]) { return false; }
	 * 
	 * 
	 * 
	 * }
	 * 
	 * 
	 * } } catch (Exception e) { System.out.println("--valid--"+e); return
	 * false; }
	 * 
	 * 
	 * return flag; }
	 */
	// ==============================Only Date Format=====================
	public boolean isValidDate(String date) {

		if (date.length() != 10) {
			return false;
		}

		boolean isValid = false;

		/*String expression = "(0[1-9]|[12][0-9]|3[01])[-/]?^[0][1-9]|[1][0-2][-/]?(18|19|20|21)\\d{2}$";*/
		/*
		 * ^[0-1][1-9] : The month starts with a 0 and a digit between 1 and 9
		 * [- / ]?: Followed by an optional "-" or "/". (0[1-9]|[12][0-9]|3[01])
		 * : The day part must be either between 01-09, or 10-29 or 30-31. [- /
		 * ]?: Day part will be followed by an optional "-" or "/".
		 * (18|19|20|21)\\d{2}$ : Year begins with either 18, 19, 20 or 21 and
		 * ends with two digits.
		 */
		String dayExp = "(0[1-9]|[12][0-9]|3[01])";
		String monthExp = "^[0][1-9]|[1][0-2]";
		String yearExp = "(18|19|20|21)\\d{2}$";
		String[] date1 = null;
		if (date.indexOf("-") == 2 && date.lastIndexOf("-") == 5) {
			// //System.out.println("now splitting");
			date1 = date.split("-");
			Pattern daypattern = Pattern.compile(dayExp);
			Matcher daymatcher = daypattern.matcher(date1[0]);
			if (daymatcher.matches()) {
				// //System.out.println("day matched");
				Pattern monthpattern = Pattern.compile(monthExp);
				Matcher monthmatcher = monthpattern.matcher(date1[1]);
				if (monthmatcher.matches()) {
					// //System.out.println("month matched");
					Pattern yearpattern = Pattern.compile(yearExp);
					Matcher yearmatcher = yearpattern.matcher(date1[2]);
					if (yearmatcher.matches()) {
						// //System.out.println("year matched");
						isValid = true;
					}
				}
			}
		}
		return isValid;
	}

	public boolean getDate1(String str) {
		String dt = str;
		int lgth = dt.length();
		if (lgth < 10) {
			return false;
		}
		if ((str.substring(2, 3).equals("-"))
				&& (str.substring(5, 6).equals("-"))) {
			return true;
		} else
			return false;
	}

	// ===========user=============
	public boolean isUser(String str) {

		String str1 = str;
		// System.out.println("............."+str1);
		Pattern p = Pattern.compile("[a-zA-Z0-9]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// System.out.println(b);
		return b;
	}

	// ################ check Max length #######################
	// ============================is Length less than or equal to length
	// specified===============================
	public boolean checkmaxLength(String a, int n) {
		boolean flag = false;
		try {
			int len = 0;
			len = a.length();
			if (len > n) {
				flag = false;
			} else if (len <= n) {
				flag = true;
			}
		} finally {
			// System.out.println(a+" length of data  "+a.length()+" length should not exceeded more than - "+n);
		}
		return flag;
	}

	// ============================is Length greater than or equal to length
	// specified===============================

	public boolean checkminLength(String a, int n) {
		boolean flag = false;
		try {
			int len = 0;
			len = a.length();
			if (len < n) {
				flag = false;
			} else if (len >= n) {
				flag = true;
			}
		} finally {
			// System.out.println(a+" length of data  "+a.length()+" length should not exceeded more than - "+n);
		}
		return flag;
	}

	// ============================is Length equal to length
	// specified===============================

	public boolean checkEqualLength(String a, int n) {
		boolean flag = false;
		try {
			int len = 0;
			len = a.length();
			if (len == n) {
				flag = true;
			}
		} finally {
			// System.out.println(a+" length of data  "+a.length()+" length should not exceeded more than - "+n);
		}
		return flag;
	}

	// ============================is Number
	// Mobile===============================

	public float ton(float bags) {
		float res = 0.0f;
		res = bags * 20 / 1000;
		return res;
	}

	public float tonsf(float bags) {
		float res = 0.0f;
		res = bags * 5 / 1000;
		return res;
	}

	public boolean isCharAndNumOnly(String str) {
		String str1 = str;

		Pattern p = Pattern.compile("[a-zA-Z0-9]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();

		return b;
	}

	public int isNumreturn(String str) {

		int i = 0;
		String str1 = str;
		if (str1 == "" || str1 == null) {
			i = 0;
		} else {
			i = Integer.parseInt(str1);
		}

		return i;
	}

	public boolean isHtmlAlphanumeric(String str) {

		String str1 = str;
		// //System.out.println("............."+str1);
		/*
		 * if(isEmpty(str1)) { return false; }
		 */
		Pattern p = Pattern
				.compile("[a-zA-Z0-9\\s\\/\\.\\,\\_\\-\\(\\)\\&\\:\\<|\\>\\@]*");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		// b=checkmaxLength(str1,n);
		// System.out.println(b);
		return b;
	}

	//======================== Mobile =======================
	public boolean isMobile(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("\\d{10}");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}
	
	//======================== Mobile =======================
		public boolean isPhone(String str) {
			String str1 = str;
			Pattern p = Pattern.compile("^[0-9]{9,14}$");
			Matcher m = p.matcher(str1);
			boolean b = m.matches();
			return b;
		}
	
	//======================== Date =======================
	public boolean isDate(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[0-9]-");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}
	
	//======================== Date =======================
		public boolean isRegDate(String str) {
			String str1 = str;
			Pattern p = Pattern.compile("[0-9]{4}(/|-)[0-9]{1,2}(/|-)[0-9]{1,2}");
			Matcher m = p.matcher(str1);
			boolean b = m.matches();
			return b;
		}
	
	//======================== Date =======================
	public boolean isValDate(String str) {
		String str1 = str;
		Pattern p = Pattern.compile("[0-9]{1,2}(/|-)[0-9]{1,2}(/|-)[0-9]{4}");
		Matcher m = p.matcher(str1);
		boolean b = m.matches();
		return b;
	}


    public String validateFile(MultipartFile file) {
		
		String error = null;
		String contentType = null;

        if(file != null && !file.isEmpty()){
        	contentType = file.getContentType();
        	if(!(contentType.equalsIgnoreCase("image/jpg") || contentType.equalsIgnoreCase("image/jpeg") || contentType.equalsIgnoreCase("image/png") || contentType.equalsIgnoreCase("application/pdf") || contentType.equalsIgnoreCase("text/plain") || contentType.equalsIgnoreCase("application/msword") || contentType.equalsIgnoreCase("application/vnd.openxmlformats-officedocument.wordprocessingml.document"))) {
	        	/*if(file.getContentType().equals("application/pdf")) {
	        		error = "Please upload valid .pdf file only";
	        	} else {
	        		error = "Please upload valid .png || .jpeg || .jpg file only";
	        	}*/
	        	error = "Please upload valid (.png | .jpeg | .jpg | .pdf | .doc | .docx) file only";
			} else if(file.getSize() > TWO_MB_IN_BYTES){
				error = "Please upload a file with size less than 2 MB";
			}
        } else error = "File can not be empty";
        	
        return error;
	}
    
    public boolean CheckMimeType(MultipartFile file) throws Exception {
        boolean flag = false;
        String filename = file.getOriginalFilename();
        byte[] fileData = null;
        try {
            if (file.getSize() != 0) {
                fileData = file.getBytes();
            }
            Tika tika = new Tika();
            String minecheck = tika.detect(fileData, filename);
            String minecheckname = tika.detect(filename);
            if (minecheck.equalsIgnoreCase(minecheckname)) {
                flag = true;
            } else {
                flag = false;
            }
        } catch (Exception e) {
            throw e;
        }
        return flag;
    }

	public static boolean isValidPassword(String password) {
		String regex = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])" + "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";

		Pattern p = Pattern.compile(regex);

		if (password == null) {
			return false;
		}
		Matcher m = p.matcher(password);
		return m.matches();
	}
	
	// ==============================Hash Pass====================================
		public static boolean isHashPass(String str) {
			String str1 = str;

			Pattern p = Pattern.compile("[a-zA-Z0-9]*");
			Matcher m = p.matcher(str1);
			boolean b = m.matches();

			return b;
		}
}
