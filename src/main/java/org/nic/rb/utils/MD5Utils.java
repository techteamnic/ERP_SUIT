package org.nic.rb.utils;

import org.springframework.util.DigestUtils;

public class MD5Utils {
	
	public static String getMd5HashByRepeats(String input_str, int repeats) {
		for (int i = 1; i <= repeats; i++) {
			input_str = DigestUtils.md5DigestAsHex(input_str.getBytes());
		}
		return input_str;
	}

}
