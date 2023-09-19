package nic.userdetails.daoimpl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.nic.rb.constants.TSRBLogger;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import nic.commons.dao.CommonService;
import nic.config.MongoRepository;
import nic.userdetails.dao.UserDetailsDao;
import nic.userdetails.entity.AwardsEntity;
import nic.userdetails.entity.EducationalDetailsEntity;
import nic.userdetails.entity.WorkExperienceEntity;
import nic.userdetails.model.AwardsModel;
import nic.userdetails.model.EducationalDetailsModel;
import nic.userdetails.model.WorkExperienceModel;

@Repository
@Transactional
public class UserDetailsDaoImpl implements UserDetailsDao {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());

	Date date = null;			
	String role_name = null;			
	String username = null;			
	Integer role_id = null;			
	String state_code = null;			
	String dist_code = null;			
	String mandal_code = null;
	Integer org_code = null;
	
	@Autowired
	private EntityManager entityManager;

	@Autowired
	private CommonService commonService;
	@Autowired
	MongoRepository mongoRepository;

	private static final String PHOTO = "photo";
	private static final String CV = "cv";
	private static final String RESEARCH_STMT = "research_stmt";
	private static final String TEACHING_STMT = "teaching_stmt";
	private static final String SIGNIFICANT_PAPERS = "significant_papers";
	private static final String DOCUMENTS_SIGNATURE = "documents_signature";
	
	private static final String PERSONAL_INFO_PERSON_IMAGE = "personal_info_person_image";
	
	private static final String HOSP_LICENCE_DOC = "hosp_licence_doc";
	
	@SuppressWarnings({ "unchecked", "unused" })
	@Override
	public List<EducationalDetailsModel> getEducationaldetails(Integer user_id) {
		System.out.println("----------user_id : "+user_id);
		List<EducationalDetailsModel> eduList = null;
		/*
		 * SpringMVC
		 * 
		 * try {
			eduList = (List<EducationalDetailsModel>) commonService.nativeSQLQuerywithparameters("select ed.id,ed.degree as degree_db,dm.degree_name,(CASE WHEN ed.specialization IS NOT NULL THEN ed.specialization ELSE 'NA' END)as specialization_db, (CASE WHEN ed.board IS NOT NULL THEN ed.board ELSE 'NA' END)as board_db,(CASE WHEN ed.institute IS NOT NULL THEN ed.institute ELSE 'NA' END) as institute_db,(CASE WHEN ed.percentage IS NOT NULL THEN ed.percentage ELSE 'NA' END) as percentage_db,ed.year_of_pass as year_of_pass_db,(CASE WHEN ed.division IS NOT NULL THEN ed.division ELSE 'NA' END) as division_db, ed.educational_doc_id as educational_doc_id_db, CAST(ed.phd_date as VARCHAR) as phd_date_db, ed.phd_title as phd_title_db, ed.phd_orig_degree_doc_id as phd_orig_degree_doc_id_db, ed.phd_prov_degree_doc_id as phd_prov_degree_doc_id_db, ed.other_degree as other_degree_db,ed.student_id,(select cand_name from multi_personal_info where id = student_id) as student_name from educational_details as ed LEFT JOIN degree_mst as dm ON ed.degree = dm.degree_id where ed.is_active = true AND ed.userid = ? order by ed.degree",
					EducationalDetailsModel.class, new Object[] {user_id}, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception occurs in DAO while fetching the symptomsList" + e.getMessage());
		}
		return eduList;*/
		
		try {
			String sql = "SELECT CAST(row_to_json(x) as varchar) FROM (select ed.id,ed.degree as degree_db,dm.degree_name,(CASE WHEN ed.specialization IS NOT NULL THEN ed.specialization ELSE 'NA' END)as specialization_db, (CASE WHEN ed.board IS NOT NULL THEN ed.board ELSE 'NA' END)as board_db,(CASE WHEN ed.institute IS NOT NULL THEN ed.institute ELSE 'NA' END) as institute_db,(CASE WHEN ed.percentage IS NOT NULL THEN ed.percentage ELSE 'NA' END) as percentage_db,ed.year_of_pass as year_of_pass_db,(CASE WHEN ed.division IS NOT NULL THEN ed.division ELSE 'NA' END) as division_db, ed.educational_doc_id as educational_doc_id_db, ed.student_id,(select fullname from user_mst where id = ed.userid) as student_name from educational_details as ed LEFT JOIN degree_mst as dm ON ed.degree = dm.degree_id where ed.is_active = true AND ed.userid = :user_id order by ed.degree)x";
	        Query queryObject = entityManager.createNativeQuery(sql);
	        queryObject.setParameter("user_id", user_id);
	        eduList = queryObject.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception occurs in DAO while fetching the symptomsList" + e.getMessage());
		}
        return eduList;
	}
	
	@SuppressWarnings("unchecked")
	public List<String> getDegreeList() {
        String sql = "SELECT CAST(row_to_json(x) as varchar) FROM (select degree_id, degree_name from degree_mst where is_active = true) x";
        Query queryObject = entityManager.createNativeQuery(sql);
        List<String> degrees = queryObject.getResultList();
        return degrees;
    }
	

	public Integer addEducationaldetails(EducationalDetailsEntity eduEntity) {
		entityManager.unwrap(Session.class).saveOrUpdate(eduEntity);
		return 1;
	}
	
	@Override
	public String deleteEducational(int id, HttpSession session) {
		return commonService.updateEntity("update EducationalDetailsEntity set is_active = ?, modified_by = ?, modified_date = ? where id = ?", 
				new Object[] {false, (String) session.getAttribute("username"), new Timestamp(System.currentTimeMillis()), id}, entityManager.unwrap(Session.class)).toString();
		}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<WorkExperienceModel> getWorkexperience(Integer user_id) {
		List<WorkExperienceModel> worList = null;
		try {
//			SpringMVC:
//			worList = (List<WorkExperienceModel>) commonService.nativeSQLQuerywithparameters("select id,designation as designation_db,organization as organization_db,work_nature as work_nature_db,joining_date as joining_date_db,leaving_date as leaving_date_db,total_exp as total_exp_db,annual_package as annual_package_db, work_exp as work_exp_db, exp_doc_id as exp_doc_id_db from work_experience where is_active = true AND userid = ? ",
//					WorkExperienceModel.class, new Object[] {user_id}, entityManager.unwrap(Session.class));
			
			String sql = "select id,designation as designation_db,organization as organization_db,work_nature as work_nature_db,joining_date as joining_date_db,leaving_date as leaving_date_db,total_exp as total_exp_db,annual_package as annual_package_db, work_exp as work_exp_db, exp_doc_id as exp_doc_id_db from work_experience where is_active = true AND userid = :user_id ";
	        Query queryObject = entityManager.createNativeQuery(sql);
	        queryObject.setParameter("user_id", user_id);
	        worList = queryObject.getResultList();
			
		} catch (Exception e) {
			logger.error("Exception occurs in DAO while fetching the symptomsList" + e.getMessage());
		}
		return worList;
	}
	
	
//==============================================================================================================
	
	@SuppressWarnings("unchecked")
	@Override
	public List<WorkExperienceModel> getWorkexperiencePhd(Integer user_id) {
		List<WorkExperienceModel> worList = null;
		try {
			worList = (List<WorkExperienceModel>) commonService.nativeSQLQuerywithparameters("select id,designation as designation_db,organization as organization_db,work_nature as work_nature_db,joining_date as joining_date_db,leaving_date as leaving_date_db,total_exp as total_exp_db,annual_package as annual_package_db, work_exp as work_exp_db, exp_doc_id as exp_doc_id_db from work_experience where is_active = true AND userid = ? ",
					WorkExperienceModel.class, new Object[] {user_id}, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			logger.error("Exception occurs in DAO while fetching the getWorkexperiencePhd" + e.getMessage());
		}
		return worList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<WorkExperienceModel> getNonfacWorkexperience(Integer user_id) {
		List<WorkExperienceModel> worList = null;
		try {
			worList = (List<WorkExperienceModel>) commonService.nativeSQLQuerywithparameters("select id,designation as designation_db,organization as organization_db,work_nature as work_nature_db,joining_date as joining_date_db,leaving_date as leaving_date_db,total_exp as total_exp_db,annual_package as annual_package_db, work_exp as work_exp_db, exp_doc_id as exp_doc_id_db from work_experience where is_active = true AND userid = ? ",
					WorkExperienceModel.class, new Object[] {user_id}, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			logger.error("Exception occurs in DAO while fetching the getNonfacWorkexperience" + e.getMessage());
		}
		return worList;
	}
	
	/*
	 * @SuppressWarnings("unchecked")
	 * 
	 * @Override public List<ConsultingProjectsModel> getConsultingProjects(Integer
	 * user_id) { List<ConsultingProjectsModel> worList = null; try { worList =
	 * (List<ConsultingProjectsModel>) commonService.
	 * nativeSQLQuerywithparameters("select id,project_title as project_title_db,funding_agency as funding_agency_db,CAST(start_date as VARCHAR) as start_date_db,CAST(end_date as VARCHAR) as end_date_db,project_cost as project_cost_db, consulting_project_doc_id as consulting_project_doc_id_db from consulting_projects where is_active = true AND userid = ?"
	 * , ConsultingProjectsModel.class, new Object[] { user_id },
	 * entityManager.unwrap(Session.class)); } catch (Exception e) {
	 * logger.error("Exception occurs in DAO while fetching the symptomsList" +
	 * e.getMessage()); } return worList; }
	 */
	
	@SuppressWarnings("unchecked")
	@Override
	public List<WorkExperienceModel> getWorkexperienceBPhd(String username) {
		List<WorkExperienceModel> worList = null;
		try {
			worList = (List<WorkExperienceModel>) commonService.nativeSQLQuerywithparameters("select id,designation as designation_db,organization as organization_db,work_nature as work_nature_db,joining_date as joining_date_db,leaving_date as leaving_date_db,total_exp as total_exp_db,annual_package as annual_package_db from work_experience where is_active = true AND userid = ? ",
					WorkExperienceModel.class, new Object[] { username }, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			logger.error("Exception occurs in DAO while fetching the symptomsList" + e.getMessage());
		}
		return worList;
	}

	public Integer addWorkexperience(WorkExperienceEntity worEntity) {
		entityManager.unwrap(Session.class).saveOrUpdate(worEntity);
		return 1;
	}
	
	/*
	 * public Integer addConsultingProjects(ConsultingProjectsEntity conEntity) {
	 * entityManager.unwrap(Session.class).saveOrUpdate(conEntity); return 1; }
	 */
	
	/*
	 * @Override public String deleteConsultingProjects(int id, HttpSession session)
	 * { return commonService.
	 * updateEntity("update ConsultingProjectsEntity set is_active = ?, modified_by = ?, modified_date = ? where id = ?"
	 * , new Object[] {false, (String) session.getAttribute("username"), new
	 * Timestamp(System.currentTimeMillis()), id},
	 * entityManager.unwrap(Session.class)).toString(); }
	 */
	
//	@Override
//	public String deleteWorkExperience(int id, HttpSession session) {
//		return commonService.updateEntity("update WorkExperienceEntity set is_active = ?, modified_by = ?, modified_date = ? where id = ?", 
//				new Object[] {false, (String) session.getAttribute("username"), new Timestamp(System.currentTimeMillis()), id}, entityManager.unwrap(Session.class)).toString();
//		}
	
	@Override
	public String deleteWorkExperience(int id, HttpSession session) {
		return entityManager.unwrap(Session.class).createQuery("delete from WorkExperienceEntity where id = ? and userid = ? ")
				.setParameter(0, id)
				.setParameter(1, (Integer) session.getAttribute("user_id"))
				.executeUpdate() + "";
	}
	

	public Integer addWorkExperienceBPhd(WorkExperienceEntity worEntity) {
		entityManager.unwrap(Session.class).saveOrUpdate(worEntity);
		return 1;
	}
	
	@Override
	public String deleteWorkExperienceBPhd(int id, HttpSession session) {
		return commonService.updateEntity("update WorkExperienceEntity set is_active = ?, modified_by = ?, modified_date = ? where id = ?", 
				new Object[] {false, (String) session.getAttribute("username"), new Timestamp(System.currentTimeMillis()), id}, entityManager.unwrap(Session.class)).toString();
		}

	@SuppressWarnings("unchecked")
	@Override
	public List<AwardsModel> getAwards(Integer user_id) {
		List<AwardsModel> awaList = null;
		try {
			awaList = (List<AwardsModel>) commonService.nativeSQLQuerywithparameters("select id,awards as awards_db, organization as organization_db, remarks as remarks_db,awards_doc_id as awards_doc_id_db from awards where is_active = true AND awards = 'Awards' AND userid = ? ", AwardsModel.class, new Object[] { user_id }, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception occurs in DAO while fetching the getAwards" + e.getMessage());
		}
		return awaList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<AwardsModel> getAchivements(Integer user_id) {
		List<AwardsModel> awaList = null;
		try {
			awaList = (List<AwardsModel>) commonService.nativeSQLQuerywithparameters("select id,awards as awards_db, organization as organization_db, remarks as remarks_db,awards_doc_id as awards_doc_id_db from awards where is_active = true AND awards = 'Achievements' AND userid = ? ", AwardsModel.class, new Object[] { user_id }, entityManager.unwrap(Session.class));
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception occurs in DAO while fetching the getAchivements" + e.getMessage());
		}
		return awaList;
	}
	

	public Integer addAwards(AwardsEntity awaEntity) {
		entityManager.unwrap(Session.class).saveOrUpdate(awaEntity);
		return 1;
	}
	
	@Override
	public String deleteAwardDetails(int id, HttpSession session) {
		return commonService.updateEntity("update AwardsEntity set is_active = ?, modified_by = ?, modified_date = ? where id = ?", 
				new Object[] {false, (String) session.getAttribute("username"), new Timestamp(System.currentTimeMillis()), id}, entityManager.unwrap(Session.class)).toString();
		}

	
}
