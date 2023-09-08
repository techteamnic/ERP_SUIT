package org.nic.rb.config;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nic.rb.exceptions.CaptchaNotMatchedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.GenericFilterBean;

@Component
public class CaptchaFilter extends GenericFilterBean{
	private AuthenticationFailureHandler failureHandler = new SimpleUrlAuthenticationFailureHandler("/auth_failure.do");
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		if(((HttpServletRequest) request).getServletPath().substring(((HttpServletRequest) request).getServletPath().lastIndexOf("/") + 1).trim().equals("login.do") && ((HttpServletRequest) request).getMethod().equals("POST")) 
		{
			HttpSession session = ((HttpServletRequest) request).getSession();
			session.setAttribute("user_id", request.getParameter("user_name").toString());
			try {
				if(session.getAttribute("captcha") == null) {
					((HttpServletResponse) response).sendRedirect("/");
					chain.doFilter(request, response);
					return;
				}
				if(session.getAttribute("captcha") != null && request.getParameter("captcha") != null && session.getAttribute("captcha").equals(request.getParameter("captcha").toString())) chain.doFilter(request, response);
				else throw new CaptchaNotMatchedException("Captcha Not Matched.");
			}catch (CaptchaNotMatchedException e) {
				failureHandler.onAuthenticationFailure((HttpServletRequest) request, (HttpServletResponse) response, ((AuthenticationException)e));
			}
		}
		else chain.doFilter(request, response); return;
	}
}
