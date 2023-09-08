package org.nic.rb.service;

import org.nic.rb.entity.User;

public interface UserService {
	public User getUserByUsername(String username);
	public int updatePasswordByUsername(String new_pass, String user_name);
}
