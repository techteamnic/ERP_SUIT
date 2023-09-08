package org.nic.rb.config;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.web.csrf.CsrfToken;
import org.springframework.security.web.csrf.CsrfTokenRepository;
import org.springframework.security.web.csrf.DefaultCsrfToken;

//@Component
public class CustomCsrfTokenRepository implements CsrfTokenRepository {

    static final String DEFAULT_CSRF_PARAMETER_NAME = "_csrf";
    static final String DEFAULT_CSRF_HEADER_NAME = "X-XSRF-TOKEN";

    private String parameterName = DEFAULT_CSRF_PARAMETER_NAME;

    private String headerName = DEFAULT_CSRF_HEADER_NAME;

    public static final String DEFAULT_CSRF_TOKEN_ATTR_NAME = CustomCsrfTokenRepository.class
        .getName().concat(".CSRF_TOKEN");

    private String sessionAttributeName = DEFAULT_CSRF_TOKEN_ATTR_NAME;

	@Override
	public CsrfToken generateToken(HttpServletRequest request) {
		String csrfToken = createNewToken();
		System.out.println("generateToken ->"+csrfToken);
		return new DefaultCsrfToken(this.headerName, this.parameterName,
				csrfToken);
	}

	@Override
	public void saveToken(CsrfToken token, HttpServletRequest request, HttpServletResponse response) {
		if (token == null) {
			HttpSession session = request.getSession(false);
			if (session != null) {
				session.removeAttribute(this.sessionAttributeName);
			}
		}
		else {
			HttpSession session = request.getSession();
			System.out.println("saveToken ->"+token);
			session.setAttribute(this.sessionAttributeName, token);
		}
	}

	@Override
	public CsrfToken loadToken(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return null;
		}
		if(session.getAttribute(this.sessionAttributeName) != null) {
			System.out.println("loadToken ->"+((CsrfToken) session.getAttribute(this.sessionAttributeName)).getToken());
			while (session.getAttribute("update_csrf") != null && (Boolean) session.getAttribute("update_csrf")) {
				session.removeAttribute(this.sessionAttributeName);
				session.setAttribute("update_csrf", Boolean.FALSE);
			}
		}
		return (CsrfToken) session.getAttribute(this.sessionAttributeName);
	}
	
	private String createNewToken() {
		return UUID.randomUUID().toString();
	}
}