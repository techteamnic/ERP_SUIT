package org.nic.rb.dao;

import java.util.Optional;

import org.nic.rb.entity.PincodeEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PinCodeDao extends JpaRepository<PincodeEntity, Integer>{
	
	/*@Query("select q from SecurityQuestion q order by q.questionId asc")
	public List<SecurityQuestion> findQuestion(Pageable page);
	securityQuestionRepository.findQuestion(new PageRequest(0, 3));*/
	
	/*@Query(nativeQuery = true,
		       value = "select * from user_security_question order by question_id asc limit 0, 3")
	public List<SecurityQuestion> findQuestion();*/
	
	@Query(nativeQuery = true, value="SELECT * FROM pincode p WHERE p.pincode = ?1 limit 1")
	public Optional<PincodeEntity> findByPincode(String pincode);
}
