package org.nic.rb.exceptions;

public class AppointmentAtSameTimeException extends RuntimeException{

	private static final long serialVersionUID = 200639503528266409L;

	public AppointmentAtSameTimeException(String message, Throwable cause) {
		super(message, cause);
	}

	public AppointmentAtSameTimeException(String message) {
		super(message);
	}
}