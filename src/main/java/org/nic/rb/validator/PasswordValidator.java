package org.nic.rb.validator;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.dao.UserDao;
import org.nic.rb.entity.User;
import org.nic.rb.model.PasswordModel;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Component
public class PasswordValidator implements Validator{
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private UserDao userDao;
	
	static Validations validator = new Validations();
	
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		PasswordModel model = (PasswordModel) target;
		if(model.getOld_pass() == null || model.getOld_pass().trim().isEmpty()) {
			errors.rejectValue("old_pass", "error.old_pass", "Old Password is Required.");
		}else
		{
			if (model.getOld_pass() != null && !model.getOld_pass().trim().isEmpty() && !Validations.isHashPass(model.getOld_pass().trim())) {
				errors.rejectValue("old_pass", "error.old_pass", "Old Password is Invalid.");
			}
		}
		
		if(model.getNew_pass() == null || model.getNew_pass().trim().isEmpty()) {
			errors.rejectValue("new_pass", "error.new_pass", "New Password is Required.");
		}else
		{
			if (model.getNew_pass() != null && !model.getNew_pass().trim().isEmpty() && !Validations.isHashPass(model.getNew_pass().trim())) {
				errors.rejectValue("new_pass", "error.new_pass", "New Password is Invalid.");
			}
		}
		
		if(model.getConf_new_pass() == null || model.getConf_new_pass().trim().isEmpty()) {
			errors.rejectValue("conf_new_pass", "error.conf_new_pass", "Confirm New Password is Required.");
		}else
		{
			if (model.getConf_new_pass() != null && !model.getConf_new_pass().trim().isEmpty() && !Validations.isHashPass(model.getConf_new_pass().trim())) {
				errors.rejectValue("conf_new_pass", "error.conf_new_pass", "Confirm New Password is Invalid.");
			}
		}
		
		if(!errors.hasErrors()) {
			if(!model.getNew_pass().equals(model.getConf_new_pass())) {
				errors.rejectValue("conf_new_pass", "error.conf_new_pass", "New Passwords and Confirm Password Not Matched.");
			}
		}
		
		if(!errors.hasErrors()) {
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
		    
		    Optional<User> user = userDao.findByUserName(session.getAttribute("user_name").toString());
			 
			byte[] result = mDigest.digest(user.get().getPassword().concat(session.getAttribute("up_ran_val").toString()).getBytes());
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < result.length; i++) {
				sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
			}
			
			if(!sb.toString().equals(model.getOld_pass().toString())) {
				errors.rejectValue("old_pass", "error.old_pass", "Old Password Not Matched.");
			}
		}
	}
}
