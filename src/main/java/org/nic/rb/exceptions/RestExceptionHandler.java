package org.nic.rb.exceptions;

import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@Order(Ordered.HIGHEST_PRECEDENCE)
@ControllerAdvice
public class RestExceptionHandler extends ResponseEntityExceptionHandler {
  
   @ExceptionHandler(ValidationException.class)
   protected ResponseEntity<Object> handleEntityNotFound(
		   ValidationException ex) {
	   ValidationException apiError = new ValidationException(ex.getMessage());
       return new ResponseEntity<>(apiError, HttpStatus.BAD_REQUEST);
   }
}