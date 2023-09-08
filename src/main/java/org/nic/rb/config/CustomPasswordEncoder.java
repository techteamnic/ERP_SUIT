package org.nic.rb.config;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class CustomPasswordEncoder extends BCryptPasswordEncoder {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	/*RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
    ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
    HttpServletRequest request = attributes.getRequest();
    HttpSession session = request.getSession();
    
    if((int)session.getAttribute("ran_val") == (int) Integer.parseInt(String.valueOf(rawPassword).substring(0, 2))) {
    	String viriginal_password = String.valueOf(rawPassword).substring(66);
		byte[] in_pass = Base64.decodeBase64(viriginal_password);
		return super.matches(new String(in_pass), encodedPassword);
    }
    else return false;*/
	
	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		MessageDigest mDigest = null;
		RequestAttributes requestAttributes = RequestContextHolder.currentRequestAttributes();
	    ServletRequestAttributes attributes = (ServletRequestAttributes) requestAttributes;
	    HttpServletRequest request = attributes.getRequest();
	    HttpSession session = request.getSession();
		 // SHA256 Conversion
		 try {
			mDigest = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e) {
			logger.error(e.getMessage());
		}
		byte[] result = mDigest.digest(encodedPassword.concat(session.getAttribute("ran_val").toString()).getBytes());
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < result.length; i++) {
			sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
		}
		logger.debug("encodedPassword {}", sb.toString());
		logger.debug("rawPassword {}", rawPassword);
		if(sb.toString().contentEquals(rawPassword)) {
			logger.debug("Authentication Success.");
			return true;
		}else {
			logger.debug("Authentication Failed.");
			return false;
		}
	}
}