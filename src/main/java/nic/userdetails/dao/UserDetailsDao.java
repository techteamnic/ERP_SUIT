package nic.userdetails.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import nic.userdetails.entity.AwardsEntity;
import nic.userdetails.entity.EducationalDetailsEntity;
import nic.userdetails.entity.WorkExperienceEntity;
import nic.userdetails.model.AwardsModel;
import nic.userdetails.model.EducationalDetailsModel;
import nic.userdetails.model.PersonalModel;
import nic.userdetails.model.WorkExperienceModel;

public interface UserDetailsDao {
	
	public List<EducationalDetailsModel> getEducationaldetails(Integer user_id);
	public Integer addEducationaldetails (EducationalDetailsEntity eduEntity);
	String deleteEducational(int id, HttpSession session);
	
	public List<WorkExperienceModel> getWorkexperience(Integer user_id);
	public List<WorkExperienceModel> getWorkexperiencePhd(Integer user_id);
	public Integer addWorkexperience (WorkExperienceEntity worEntity);
	String deleteWorkExperience(int id, HttpSession session);
	
	public List<WorkExperienceModel> getWorkexperienceBPhd(String username);
	public Integer addWorkExperienceBPhd (WorkExperienceEntity worEntity);
	String deleteWorkExperienceBPhd(int id, HttpSession session);
	
	public List<AwardsModel> getAwards(Integer user_id);
	public List<AwardsModel> getAchivements(Integer user_id);
	public Integer addAwards (AwardsEntity awaEntity);
	String deleteAwardDetails(int id, HttpSession session);
	
	public List<WorkExperienceModel> getNonfacWorkexperience(Integer user_id);
	public List<String> getDegreeList();
	
	public List<PersonalModel> getPersonalDetails(Integer user_id,Integer role_id);
	String addPersonalDetails(PersonalModel patientmodel,HttpServletRequest request);
}
