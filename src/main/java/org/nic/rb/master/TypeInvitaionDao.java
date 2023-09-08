package org.nic.rb.master;

import org.nic.rb.entity.ApplicantTypeMaster;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TypeInvitaionDao extends JpaRepository<ApplicantTypeMaster, Integer> {
	
}
