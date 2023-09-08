package org.nic.rb.service;

import java.util.Optional;

import org.nic.rb.dao.UserDao;
import org.nic.rb.entity.User;
import org.nic.rb.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;

	@Override
	public User getUserByUsername(String username) {
		Optional<User> user = userDao.findByUserName(username);
		if(user.isPresent()) 
			return user.get();
		else
			return null;
	}

	@Override
	public int updatePasswordByUsername(String new_pass, String user_name) {
//		return userDao.updateAddress(MD5Utils.getMd5HashByRepeats(new_pass, 3), user_name);
		return userDao.updateAddress(new_pass, user_name);
	}
	
}
