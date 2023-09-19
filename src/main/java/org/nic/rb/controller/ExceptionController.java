package org.nic.rb.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionController implements ErrorController{
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@RequestMapping("/error")
	public String handleError(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
	    Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);
	    if (status != null) {
	    	int statusCode = Integer.parseInt(status.toString());
	    	if (statusCode == HttpStatus.FORBIDDEN.value()) {
	    		/*System.out.println(((CsrfToken) session.getAttribute("org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN")).getToken());
	    		System.out.println(request.getParameter("_csrf"));*/
	    		logger.error("ExceptionController 403 - {}", statusCode);
	    		if(session.getAttribute("org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN") != null && request.getParameter("_csrf") != null 
	    				&& !((CsrfToken) session.getAttribute("org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN")).getToken().equals(request.getParameter("_csrf").toString())) {
	    			model.addAttribute("token", "Sorry, Invalid Token Found.!");
	    		}
	    		return "error/403";
			}
	    	else if(statusCode == HttpStatus.NOT_FOUND.value()) {
//	        	logger.error("ExceptionController 404 - {}", statusCode);
//	            return "error/404";
	        }
	    	else if (statusCode == HttpStatus.METHOD_NOT_ALLOWED.value()) {
	    		logger.error("ExceptionController 405 - {}", statusCode);
	    		return "error/405";
			}
	        else if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
	        	logger.error("ExceptionController - 500 {}", statusCode);
	        	if(session.getAttribute("user_name") != null)
	        		return "redirect:/logout.do";
	        	else
	        		return "redirect:/";
	        }
	        else {
	        	return "error/500";
	        }
	    }
	    return "error/500";
	}
	
	@Override
    public String getErrorPath() {
        return "/error";
    }
}
