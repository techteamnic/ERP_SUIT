package nic.config;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Locale;

import javax.servlet.ServletContext;

import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.AbstractUrlBasedView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

public class SmartInternalResourceViewResolver extends
		InternalResourceViewResolver implements InitializingBean {
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	protected ServletContext servletContext;

	protected String absDirectoryPath;

	@Override
	protected AbstractUrlBasedView buildView(String viewName) throws Exception {

		String absViewPath = absDirectoryPath + viewName + getSuffix();
		File file = new File(absViewPath);

		if (!file.exists()) {
			throw new FileNotFoundException();
		}

		logger.info("Found JSP: " + viewName);
		return super.buildView(viewName);
	}

	@Override
	protected View loadView(String viewName, Locale locale) throws Exception {
		logger.info("Attempt to load view: " + viewName);

		try {
			return super.loadView(viewName, locale);
		} catch (FileNotFoundException e) {
			return null;
		}
	}

	@Override
	public void afterPropertiesSet() throws Exception {
		String absDir = servletContext.getRealPath(getPrefix());
		logger.info("JSP Directory = " + absDir);
		File dir = new File(absDir);

		if (!dir.exists())
			throw new IllegalArgumentException(absDir + " not found.");

		if (!dir.isDirectory())
			throw new IllegalArgumentException(absDir
					+ " should be a directory.");

		this.absDirectoryPath = absDir.endsWith("/") ? absDir : absDir + '/';
	}

}
