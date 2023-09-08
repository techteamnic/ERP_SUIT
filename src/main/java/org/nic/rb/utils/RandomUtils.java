package org.nic.rb.utils;

import java.security.SecureRandom;
import java.util.UUID;

public class RandomUtils {
	
	private static final int CAPTCHA_LENGTH = 5;
//	private static final int REG_LENGTH = 10;
	
	//removed i and l because of confusion at runtime captcha
	private static final String CHAR_LOWER = "abcdefghjkmnopqrstuvwxyz";
    private static final String CHAR_UPPER = CHAR_LOWER.toUpperCase();
    private static final String NUMBER = "0123456789";
	
    private static final String DATA_FOR_RANDOM_STRING = CHAR_LOWER + CHAR_UPPER + NUMBER;
    private static SecureRandom random = new SecureRandom();
    
	public static String getCaptcha() {
		return generateRandomString(CAPTCHA_LENGTH);
	}
	
	public static String getApplicationRegNo(Integer visit_purpose) {
		StringBuilder reg_no_build = new StringBuilder("TS/RB/");
		reg_no_build.append(DateUtils.getCurrDateWithOutHyphen());
		
		switch (visit_purpose) {
		case 1:
			reg_no_build.append("/R/");
			break;
		case 3:
			reg_no_build.append("/M/");		
			break;
		case 4:
			reg_no_build.append("/C/");
			break;
		case 6:
			reg_no_build.append("/I/");
			break;
		case 7:
			reg_no_build.append("/O/");
			break;
		default:
			break;
		}
		//return "TSRB".concat(generateRandomString(REG_LENGTH).toUpperCase());
		return reg_no_build.toString();
	}
	
	public static String generateRandomString(int length) {
        if (length < 1) throw new IllegalArgumentException();
        StringBuilder rand_string = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            int rndCharAt = random.nextInt(DATA_FOR_RANDOM_STRING.length());
            char rndChar = DATA_FOR_RANDOM_STRING.charAt(rndCharAt);
            rand_string.append(rndChar);
        }
		return rand_string.toString();
	}
	
	public static String getUUID() {
		return UUID.randomUUID().toString();
	}
}
