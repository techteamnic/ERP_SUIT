package org.nic.rb.service;

import org.nic.rb.dao.UserLogDao;
import org.nic.rb.entity.UserLogTrace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserLogServiceImpl implements UserLogService{
	
	@Autowired
	private UserLogDao userLogDao;
	
	@Override
	public UserLogTrace addLogtoUserTrace(UserLogTrace logTrace) {
		return userLogDao.save(logTrace);
	}

}
