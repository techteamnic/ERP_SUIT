package org.nic.rb.exceptions;

public class ValidationException extends RuntimeException{
	
	private static final long serialVersionUID = 4514587771985521693L;
	
	private String message;
	
	public ValidationException(String message) {
		super();
		this.message = message;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
