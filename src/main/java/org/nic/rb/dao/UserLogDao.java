package org.nic.rb.dao;

import org.nic.rb.entity.UserLogTrace;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserLogDao extends JpaRepository<UserLogTrace, Long>{

}
