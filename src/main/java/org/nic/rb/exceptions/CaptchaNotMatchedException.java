package org.nic.rb.exceptions;

import org.springframework.security.core.AuthenticationException;

public class CaptchaNotMatchedException extends AuthenticationException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5069463980799027511L;
	
	public CaptchaNotMatchedException(String message, Throwable cause) {
		super(message, cause);
	}

	public CaptchaNotMatchedException(String message) {
		super(message);
	}
}