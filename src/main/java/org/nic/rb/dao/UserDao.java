package org.nic.rb.dao;

import java.util.Optional;

import org.nic.rb.entity.User;
import org.nic.rb.model.UserVO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends JpaRepository<User, Integer>{
	
	Optional<User> findByUserName(String userName);
	
	@Modifying
    @Query("UPDATE User u SET u.password = :new_pass WHERE u.userName = :user_name")
    int updateAddress(@Param("new_pass") String new_pass, @Param("user_name") String user_name);
	
	public User findUserByuserNames(String username);
}
