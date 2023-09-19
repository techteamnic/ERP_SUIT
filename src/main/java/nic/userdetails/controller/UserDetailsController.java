package nic.userdetails.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.mongo.MongoOperations;
import org.slf4j.Logger;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import nic.commons.daoimpl.StatesUtil;
import nic.commons.util.DateUtils;
import org.nic.rb.validator.Validations;
import nic.config.MongoRepository;
import nic.constants.GlobalMessages;
import nic.userdetails.dao.UserDetailsDao;
import nic.userdetails.entity.AwardsEntity;
import nic.userdetails.entity.EducationalDetailsEntity;
import nic.userdetails.entity.WorkExperienceEntity;
import nic.userdetails.model.AwardsModel;
import nic.userdetails.model.EducationalDetailsModel;
import nic.userdetails.model.WorkExperienceModel;
import nic.userdetails.validator.UserDetailsValidator;				
				
@Controller				
@RequestMapping(value = {"admin","user","rb_chief"})	
@SessionAttributes({"captcha"})
public class UserDetailsController {				
				
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
				
	Date date = null;			
	String role_name = null;			
	String username = null;			
	Integer user_id = null;			
	Integer role_id = null;			
	String state_code = null;			
	String dist_code = null;			
	String mandal_code = null;	
	Integer userid = null;
	Integer category_id = null;
	
	@Autowired
	MongoRepository mongoRepository;
	@Autowired
	private MongoOperations mongoOperations;
				
//	Validations validator = new Validations();
	static Validations validator = new Validations();
	
	ObjectMapper jsonMapper = new ObjectMapper();
	@Autowired
	private StatesUtil stateService;
	@Autowired			
	private UserDetailsDao dao;
	@Autowired
	private UserDetailsValidator niperValidator;

	
//	@Value("${faculty_end_date}")
//	private String faculty_end_date;
//	
	
	private static final String EDUCATIONAL_INFO = "educational_info";
	private static final String EDUCATIONAL_INFO_PHD_ORIG_DEGREE = "educational_info_phd_orig_degree";
	private static final String EDUCATIONAL_INFO_PHD_PROV_DEGREE = "educational_info_phd_prov_degree";
	private static final String EXP_DOC = "exp_doc";
	private static final String AWARDS_DOC = "awards_doc";
	
	@RequestMapping(value = "educationalDetails.do", method = RequestMethod.GET)
	public String getEducationaldetails(Model model, HttpServletRequest request, @ModelAttribute("educationalattr") EducationalDetailsModel refModel, BindingResult result) {
		HttpSession session = request.getSession();
		System.out.println("-------------controller-----");
		try {
			model.addAttribute("degreelist", dao.getDegreeList());
//			model.addAttribute("instStudentList", stateService.getInstStudents());
			List<EducationalDetailsModel> data = dao.getEducationaldetails((Integer) session.getAttribute("user_id"));
			if (data.size() > 0) {
				model.addAttribute("copdetails", data);
//				model.addAttribute("copdetails", jsonMapper.writeValueAsString(data));
			} else {
				model.addAttribute("copdetails", "[]");
			}
		} catch (Exception e) {
			logger.error("Exception occurs in Controller" + e.getMessage());
		}
		return "educationaldetails";
	}
				
	@RequestMapping(value="educationalDetails.do", method = RequestMethod.POST)			
	public String addEducationaldetails(Model model, HttpServletRequest request, @ModelAttribute("educationalattr") EducationalDetailsModel eduModel, BindingResult errors, RedirectAttributes redirect){			
	HttpSession session = request.getSession();			
	niperValidator.validate(eduModel, errors);
	if(errors.hasErrors()) {
		model.addAttribute("degreelist", dao.getDegreeList());
		List<EducationalDetailsModel> data = dao.getEducationaldetails((Integer) session.getAttribute("user_id"));
		if (data.size() > 0) {
			try {
				model.addAttribute("copdetails", jsonMapper.writeValueAsString(data));
			} catch (JsonProcessingException e) {
				logger.error("Exception occurs in Controller" + e.getMessage());
			}
		} else {
			model.addAttribute("copdetails", "[]");
		}
		return "educationaldetails";
	}
	int details = 0;			
	date = new Date();			
	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
	try {
		role_name = (String) session.getAttribute("userrole");		
		username = (String) session.getAttribute("user_name");		
		role_id = (Integer) session.getAttribute("role_id");
		userid = (Integer) session.getAttribute("user_id");
				
			EducationalDetailsEntity eduEntity = new EducationalDetailsEntity();
			BeanUtils.copyProperties(eduModel, eduEntity);
			if(eduModel.getPhd_date() != null && !eduModel.getPhd_date().isEmpty())
				eduEntity.setPhd_date(formatter.parse(eduModel.getPhd_date()));
			
			eduEntity.setCreated_by(username);
			eduEntity.setCreated_date(date);		
			eduEntity.setIpaddress(request.getRemoteAddr());		
			eduEntity.setTs(new Timestamp(System.currentTimeMillis()));		
			eduEntity.setRole_id(role_id);		
			eduEntity.setUserid(userid);		
			eduEntity.setIs_active(true);		
			if(eduModel.getId() == null) {
				if(eduModel.getEducational_doc() != null && !eduModel.getEducational_doc().isEmpty()) {
					eduEntity.setEducational_doc_id(UUID.randomUUID().toString());
					mongoOperations.storeGallery(eduModel.getEducational_doc(), eduEntity.getEducational_doc_id(), UserDetailsController.EDUCATIONAL_INFO);
//					mongoRepository.saveFile(eduModel.getEducational_doc(), UserDetailsController.EDUCATIONAL_INFO, eduEntity.getEducational_doc_id());
				}
				if(eduModel.getPhd_orig_degree_doc() != null && !eduModel.getPhd_orig_degree_doc().isEmpty()) {
					eduEntity.setPhd_orig_degree_doc_id(UUID.randomUUID().toString());
//					mongoRepository.saveFile(eduModel.getPhd_orig_degree_doc(), UserDetailsController.EDUCATIONAL_INFO_PHD_ORIG_DEGREE, eduEntity.getPhd_orig_degree_doc_id());
				}
				/*
				if(eduModel.getPhd_prov_degree_doc() != null && !eduModel.getPhd_prov_degree_doc().isEmpty()) {
					eduEntity.setPhd_prov_degree_doc_id(UUID.randomUUID().toString());
					mongoRepository.saveFile(eduModel.getPhd_prov_degree_doc(), NiperController.EDUCATIONAL_INFO_PHD_PROV_DEGREE, eduEntity.getPhd_prov_degree_doc_id());
				}
				*/
				details = dao.addEducationaldetails(eduEntity);
			} else {
				if(eduModel.getEducational_doc_id() != null && !eduModel.getEducational_doc_id().isEmpty())
					eduEntity.setEducational_doc_id(eduModel.getEducational_doc_id());
					
				if(eduModel.getEducational_doc() != null && !eduModel.getEducational_doc().isEmpty()) {
					if(eduModel.getEducational_doc_id() != null && !eduModel.getEducational_doc_id().isEmpty()) {
						mongoOperations.storeGallery(eduModel.getEducational_doc(), eduEntity.getEducational_doc_id(), UserDetailsController.EDUCATIONAL_INFO);
//						mongoRepository.saveFile(eduModel.getEducational_doc(), UserDetailsController.EDUCATIONAL_INFO, eduEntity.getEducational_doc_id());
					} else {
						eduEntity.setEducational_doc_id(UUID.randomUUID().toString());
						mongoOperations.storeGallery(eduModel.getEducational_doc(), eduEntity.getEducational_doc_id(), UserDetailsController.EDUCATIONAL_INFO);
//						mongoRepository.saveFile(eduModel.getEducational_doc(), UserDetailsController.EDUCATIONAL_INFO, eduEntity.getEducational_doc_id());
					}
				}
				
				if(eduModel.getPhd_orig_degree_doc_id() != null && !eduModel.getPhd_orig_degree_doc_id().isEmpty())
					eduEntity.setPhd_orig_degree_doc_id(eduModel.getPhd_orig_degree_doc_id());
				
				if(eduModel.getPhd_orig_degree_doc() != null && !eduModel.getPhd_orig_degree_doc().isEmpty()) {
					if(eduModel.getPhd_orig_degree_doc_id() != null  && !eduModel.getPhd_orig_degree_doc_id().isEmpty()) {
//						mongoRepository.saveFile(eduModel.getPhd_orig_degree_doc(), UserDetailsController.EDUCATIONAL_INFO_PHD_ORIG_DEGREE, eduEntity.getPhd_orig_degree_doc_id());
					} else {
						eduEntity.setPhd_orig_degree_doc_id(UUID.randomUUID().toString());
//						mongoRepository.saveFile(eduModel.getPhd_orig_degree_doc(), UserDetailsController.EDUCATIONAL_INFO_PHD_ORIG_DEGREE, eduEntity.getPhd_orig_degree_doc_id());
					}
				}
				/*
				if(eduModel.getPhd_prov_degree_doc_id() != null && !eduModel.getPhd_prov_degree_doc_id().isEmpty())
					eduEntity.setPhd_prov_degree_doc_id(eduModel.getPhd_prov_degree_doc_id());
				
				if(eduModel.getPhd_prov_degree_doc() != null && !eduModel.getPhd_prov_degree_doc().isEmpty()) {
					if(eduModel.getPhd_prov_degree_doc_id() != null && !eduModel.getPhd_prov_degree_doc_id().isEmpty()) {
						mongoRepository.saveFile(eduModel.getPhd_prov_degree_doc(), NiperController.EDUCATIONAL_INFO_PHD_PROV_DEGREE, eduEntity.getPhd_prov_degree_doc_id());
					} else{
						eduEntity.setPhd_prov_degree_doc_id(UUID.randomUUID().toString());
						mongoRepository.saveFile(eduModel.getPhd_prov_degree_doc(), NiperController.EDUCATIONAL_INFO_PHD_PROV_DEGREE, eduEntity.getPhd_prov_degree_doc_id());
					}
				}
				*/
				eduEntity.setId(eduModel.getId());
				eduEntity.setModified_by(username);
				eduEntity.setModified_date(date);
				details = dao.addEducationaldetails(eduEntity);
			}
		}catch(Exception e) {		
			e.printStackTrace();	
		}
		if(details != 1) {		
			redirect.addFlashAttribute("message", "error");	
			return "redirect:educationalDetails.do";	
		} else {		
			redirect.addFlashAttribute("message", "success");	
			return "redirect:educationalDetails.do";
		}
		
	}
	
	@RequestMapping(value = "deleteEducational.do", method = RequestMethod.GET)
	public @ResponseBody String deleteEducational(Model model, @RequestParam("id") int id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(validator.isNum(String.valueOf(id))) {
			if (dao.deleteEducational(id, session).equals("0")) {
				return GlobalMessages.RECORD_NOT_MATCHED;
			} else {
				return GlobalMessages.DELETE_DETAILS_MESSAGE;
			}
		} else return GlobalMessages.INVALID_NUMMBER;
	}
	
	
	@RequestMapping(value = "WorkExperience.do", method = RequestMethod.GET)
	public String getWorkexperience(Model model, HttpServletRequest request, @ModelAttribute("workexpattr") WorkExperienceModel refModel, BindingResult result) {
		HttpSession session = request.getSession();
		try {
			List<WorkExperienceModel> data = dao.getWorkexperience((Integer) session.getAttribute("user_id"));
			List<WorkExperienceModel> dataPhd = dao.getWorkexperiencePhd((Integer) session.getAttribute("user_id"));
			List<WorkExperienceModel> nonfacdata = dao.getNonfacWorkexperience((Integer) session.getAttribute("user_id"));
			if ((Integer) session.getAttribute("role_id") == 4) {
				if (data != null && data.size() > 0) {
					long data_exp_days = 0;
					for (WorkExperienceModel data_workExperienceModel : data) {
						data_exp_days =  data_exp_days + DateUtils.calcNoOfDays(data_workExperienceModel.getJoining_date_db(), data_workExperienceModel.getLeaving_date_db());
					}
					
					WorkExperienceModel total_exp_pg = new WorkExperienceModel();
					total_exp_pg.setWork_exp_db("Total Experience");
					total_exp_pg.setTotal_exp_db(DateUtils.daysToYearsAndMonths(data_exp_days));
					data.add(total_exp_pg);
					model.addAttribute("copdetails", jsonMapper.writeValueAsString(data));
				} else {
					model.addAttribute("copdetails", "[]");
				}
				if(dataPhd != null && dataPhd.size() > 0) {
					long dataPhd_exp_days = 0;
					for (WorkExperienceModel dataPhdworkExperienceModel : dataPhd) {
						dataPhd_exp_days = dataPhd_exp_days + DateUtils.calcNoOfDays(dataPhdworkExperienceModel.getJoining_date_db(), dataPhdworkExperienceModel.getLeaving_date_db());
					}
					
					WorkExperienceModel total_exp_phd = new WorkExperienceModel();
					total_exp_phd.setWork_exp_db("Total Experience");
					total_exp_phd.setTotal_exp_db(DateUtils.daysToYearsAndMonths(dataPhd_exp_days));
					dataPhd.add(total_exp_phd);
					model.addAttribute("expPhd", jsonMapper.writeValueAsString(dataPhd));
				}
				else {
					model.addAttribute("expPhd", "[]");
				}
				
			}else if((Integer) session.getAttribute("role_id") == 3){
				if(nonfacdata != null && nonfacdata.size() > 0) {
					long nondata_exp_days = 0;
					for (WorkExperienceModel dataPhdworkExperienceModel : nonfacdata) {
						nondata_exp_days = nondata_exp_days + DateUtils.calcNoOfDays(dataPhdworkExperienceModel.getJoining_date_db(), dataPhdworkExperienceModel.getLeaving_date_db());
					}
					
					WorkExperienceModel total_exp_phd = new WorkExperienceModel();
					total_exp_phd.setWork_exp_db("Total Experience");
					total_exp_phd.setTotal_exp_db(DateUtils.daysToYearsAndMonths(nondata_exp_days));
					nonfacdata.add(total_exp_phd);
					model.addAttribute("nonfacdata", jsonMapper.writeValueAsString(nonfacdata));
				}
				else {
					model.addAttribute("nonfacdata", "[]");
				}
			}else return null;
			
		} catch (Exception e) {
			logger.error("Exception occurs in Controller" + e.getMessage());
			model.addAttribute("copdetails", "[]");
			model.addAttribute("expPhd", "[]");
			model.addAttribute("nonfacdata", "[]");
		}
		return "workexperience";
	}
				
	@RequestMapping(value="WorkExperience.do", method = RequestMethod.POST)			
	public String addWorkexperience(Model model, HttpServletRequest request, @ModelAttribute("workexpattr") WorkExperienceModel worModel, BindingResult errors, RedirectAttributes redirect){			
	HttpSession session = request.getSession();
	worModel.setRole_id((Integer) session.getAttribute("role_id"));
	niperValidator.validate(worModel, errors);
	if(errors.hasErrors()) {
		try {
			List<WorkExperienceModel> data = dao.getWorkexperience((Integer) session.getAttribute("user_id"));
			List<WorkExperienceModel> dataPhd = dao.getWorkexperiencePhd((Integer) session.getAttribute("user_id"));
			if (data != null && data.size() > 0) {
				long data_exp_days = 0;
				for (WorkExperienceModel data_workExperienceModel : data) {
					data_exp_days =  data_exp_days + DateUtils.calcNoOfDays(data_workExperienceModel.getJoining_date_db(), data_workExperienceModel.getLeaving_date_db());
				}
				
				WorkExperienceModel total_exp_pg = new WorkExperienceModel();
				total_exp_pg.setWork_exp_db("Total Experience");
				total_exp_pg.setTotal_exp_db(DateUtils.daysToYearsAndMonths(data_exp_days));
				data.add(total_exp_pg);
				model.addAttribute("copdetails", jsonMapper.writeValueAsString(data));
			} else {
				model.addAttribute("copdetails", "[]");
			}
			if(dataPhd != null && dataPhd.size() > 0) {
				long dataPhd_exp_days = 0;
				for (WorkExperienceModel dataPhdworkExperienceModel : dataPhd) {
					dataPhd_exp_days = dataPhd_exp_days + DateUtils.calcNoOfDays(dataPhdworkExperienceModel.getJoining_date_db(), dataPhdworkExperienceModel.getLeaving_date_db());
				}
				
				WorkExperienceModel total_exp_phd = new WorkExperienceModel();
				total_exp_phd.setWork_exp_db("Total Experience");
				total_exp_phd.setTotal_exp_db(DateUtils.daysToYearsAndMonths(dataPhd_exp_days));
				dataPhd.add(total_exp_phd);
				model.addAttribute("expPhd", jsonMapper.writeValueAsString(dataPhd));
			}
			else {
				model.addAttribute("expPhd", "[]");
			}
		} catch (Exception e) {
			logger.error("Exception occurs in Controller" + e.getMessage());
			model.addAttribute("copdetails", "[]");
			model.addAttribute("expPhd", "[]");
		}
		return "workexperience";
	}
	int details = 0;			
	date = new Date();			
	try {			
		role_name = (String) session.getAttribute("userrole");		
		username = (String) session.getAttribute("username");		
		role_id = (Integer) session.getAttribute("role_id");
		userid = (Integer) session.getAttribute("user_id");
				
			WorkExperienceEntity worEntity = new WorkExperienceEntity();		
//			BeanUtils.copyProperties(worModel, worEntity);
			worEntity.setWork_exp(worModel.getWork_exp());
			worEntity.setDesignation(worModel.getDesignation());
			worEntity.setOrganization(worModel.getOrganization());
			worEntity.setWork_nature(worModel.getWork_nature());
			worEntity.setJoining_date(worModel.getJoining_date());
			worEntity.setLeaving_date(worModel.getLeaving_date());
			worEntity.setTotal_exp(worModel.getTotal_exp());
			worEntity.setAnnual_package(worModel.getAnnual_package());
			worEntity.setCreated_by(username);
			worEntity.setCreated_date(date);		
			worEntity.setIpaddress(request.getRemoteAddr());		
			worEntity.setTs(new Timestamp(System.currentTimeMillis()));		
			worEntity.setRole_id(role_id);		
			worEntity.setUserid(userid);		
			worEntity.setIs_active(true);		
			if(worModel.getId() == null) {
				if(worModel.getExp_doc() != null && !worModel.getExp_doc().isEmpty()) {
					worEntity.setExp_doc_id(UUID.randomUUID().toString());
//					mongoRepository.saveFile(worModel.getExp_doc(), UserDetailsController.EXP_DOC, worEntity.getExp_doc_id());
				}
					 details = dao.addWorkexperience(worEntity);
				} else {
					if(worModel.getExp_doc_id() != null && !worModel.getExp_doc_id().isEmpty()) {
						worEntity.setExp_doc_id(worModel.getExp_doc_id());
					}
						
					if(worModel.getExp_doc() != null && !worModel.getExp_doc().isEmpty()) {
						if(worModel.getExp_doc_id() != null && !worModel.getExp_doc_id().isEmpty()) {
//							mongoRepository.saveFile(worModel.getExp_doc(), UserDetailsController.EXP_DOC, worEntity.getExp_doc_id());
						} else {
							worEntity.setExp_doc_id(UUID.randomUUID().toString());
//							mongoRepository.saveFile(worModel.getExp_doc(), UserDetailsController.EXP_DOC, worEntity.getExp_doc_id());
						}
					}
					
					worEntity.setId(worModel.getId());
					worEntity.setModified_by(username);
					worEntity.setModified_date(date);
						
					details = dao.addWorkexperience(worEntity);
				}
		}catch(Exception e) {		
			e.printStackTrace();	
		}		
		if(details != 1) {		
			redirect.addFlashAttribute("message", "error");	
			return "redirect:WorkExperience.do";	
		} else {		
			redirect.addFlashAttribute("message", "success");	
			return "redirect:WorkExperience.do";	
		}		
	}
	
	@RequestMapping(value = "deleteWorkExp.do", method = RequestMethod.GET)
	public @ResponseBody String deleteWorkExperience(Model model, @RequestParam("id") int id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(validator.isNum(String.valueOf(id))) {
			if (dao.deleteWorkExperience(id, session).equals("0")) {
				return GlobalMessages.RECORD_NOT_MATCHED;
			} else {
				return GlobalMessages.DELETE_DETAILS_MESSAGE;
			}
		} else return GlobalMessages.INVALID_NUMMBER;
	}
	
	@RequestMapping(value = "WorkExperienceBPhd.do", method = RequestMethod.GET)
	public String getWorkexperienceBPhd(Model model, HttpServletRequest request, @ModelAttribute("workexpattr") WorkExperienceModel refModel, BindingResult result) {
		HttpSession session = request.getSession();
		try {
			List<WorkExperienceModel> data = dao.getWorkexperienceBPhd((String) session.getAttribute("username"));
			if (data.size() > 0) {
				model.addAttribute("copdetails", jsonMapper.writeValueAsString(data));
			} else {
				model.addAttribute("copdetails", "[]");
			}
		} catch (Exception e) {
			logger.error("Exception occurs in Controller" + e.getMessage());
		}
		return "workexperiencebphd";
	}
	
	@RequestMapping(value="WorkExperienceBPhd.do", method = RequestMethod.POST)			
	public String addWorkExperienceBPhd(Model model, HttpServletRequest request, @ModelAttribute("workexpattr") WorkExperienceModel worModel, BindingResult errors, RedirectAttributes redirect){			
	HttpSession session = request.getSession();			
	int details = 0;			
	date = new Date();			
	try {			
		role_name = (String) session.getAttribute("userrole");		
		username = (String) session.getAttribute("username");		
		role_id = (Integer) session.getAttribute("role_id");
		userid = (Integer) session.getAttribute("user_id");
				
		WorkExperienceEntity worEntity = new WorkExperienceEntity();		
		BeanUtils.copyProperties(worModel, worEntity);
		worEntity.setCreated_by(username);
		worEntity.setCreated_date(date);		
		worEntity.setIpaddress(request.getRemoteAddr());		
		worEntity.setTs(new Timestamp(System.currentTimeMillis()));		
		worEntity.setRole_id(role_id);		
		worEntity.setUserid(userid);		
		worEntity.setIs_active(true);
		if(worModel.getId() == null) {		
				 details = dao.addWorkExperienceBPhd(worEntity);
			} else {
				worEntity.setModified_by(username);
				worEntity.setModified_date(date);
				details = dao.addWorkExperienceBPhd(worEntity);
			}	
		}catch(Exception e) {		
			e.printStackTrace();	
		}		
		if(details != 1) {		
			redirect.addFlashAttribute("message", "error");	
			return "redirect:WorkExperienceBPhd.do";	
		} else {		
			redirect.addFlashAttribute("message", "success");	
			return "redirect:WorkExperienceBPhd.do";	
		}		
	}
	
	@RequestMapping(value = "deleteWorkExpBPhd.do", method = RequestMethod.GET)
	public @ResponseBody String deleteWorkExperienceBPhd(Model model, @RequestParam("id") int id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(validator.isNum(String.valueOf(id))) {
			if (dao.deleteWorkExperienceBPhd(id, session).equals("0")) {
				return GlobalMessages.RECORD_NOT_MATCHED;
			} else {
				return GlobalMessages.DELETE_DETAILS_MESSAGE;
			}
		} else return GlobalMessages.INVALID_NUMMBER;
	}
	
	@RequestMapping(value = "awards.do", method = RequestMethod.GET)
	public String getAwards(Model model, HttpServletRequest request, @ModelAttribute("awardsattr") AwardsModel refModel,
			BindingResult result) {
		HttpSession session = request.getSession();
		try {
			List<AwardsModel> awards = dao.getAwards((Integer) session.getAttribute("user_id"));
			List<AwardsModel> achivements = dao.getAchivements((Integer) session.getAttribute("user_id"));
			if (awards.size() > 0 || achivements.size() > 0) {
				model.addAttribute("copdetails", jsonMapper.writeValueAsString(awards));
				model.addAttribute("copdetails2", jsonMapper.writeValueAsString(achivements));
			} else {
				model.addAttribute("copdetails", "[]");
				model.addAttribute("copdetails2", "[]");
			}
		} catch (Exception e) {
			logger.error("Exception occurs in Controller" + e.getMessage());
		}
		return "awards";
	}				
				
	@RequestMapping(value="awards.do", method = RequestMethod.POST)			
	public String addAwards(Model model, HttpServletRequest request, @ModelAttribute("awardsattr") AwardsModel awaModel, BindingResult errors, RedirectAttributes redirect){			
	HttpSession session = request.getSession();	
	niperValidator.validate(awaModel, errors);
	if(errors.hasErrors()) {
		try {
			List<AwardsModel> awards = dao.getAwards((Integer) session.getAttribute("user_id"));
			List<AwardsModel> achivements = dao.getAchivements((Integer) session.getAttribute("user_id"));
			if (awards.size() > 0 || achivements.size() > 0) {
				model.addAttribute("copdetails", jsonMapper.writeValueAsString(awards));
				model.addAttribute("copdetails2", jsonMapper.writeValueAsString(achivements));
			} else {
				model.addAttribute("copdetails", "[]");
				model.addAttribute("copdetails2", "[]");
			}
		} catch (Exception e) {
			e.printStackTrace();
			logger.error("Exception occurs in Controller addAwards" + e.getMessage());
		}
		return "awards";
	}
	int details = 0;			
	date = new Date();			
	try {			
		role_name = (String) session.getAttribute("userrole");		
		username = (String) session.getAttribute("username");		
		role_id = (Integer) session.getAttribute("role_id");
		userid = (Integer) session.getAttribute("user_id");
				
			AwardsEntity awaEntity = new AwardsEntity();		
//			BeanUtils.copyProperties(awaModel, awaEntity);
			awaEntity.setAwards(awaModel.getAwards());
//			awaEntity.setOrganization(awaModel.getOrganization());
			awaEntity.setRemarks(awaModel.getRemarks());
			awaEntity.setCreated_date(date);		
			awaEntity.setIpaddress(request.getRemoteAddr());		
			awaEntity.setTs(new Timestamp(System.currentTimeMillis()));		
			awaEntity.setRole_id(role_id);
			awaEntity.setCreated_by(username);
			awaEntity.setUserid(userid);		
			awaEntity.setIs_active(true);		
				if(awaModel.getId() == null) {
					if(awaModel.getAwards_doc() != null && !awaModel.getAwards_doc().isEmpty()) {
						awaEntity.setAwards_doc_id(UUID.randomUUID().toString());
//						mongoRepository.saveFile(awaModel.getAwards_doc(), UserDetailsController.AWARDS_DOC, awaEntity.getAwards_doc_id());
					}
					 details = dao.addAwards(awaEntity);
				} else {
					if(awaModel.getAwards_doc_id() != null && !awaModel.getAwards_doc_id().isEmpty())
						awaEntity.setAwards_doc_id(awaModel.getAwards_doc_id());
						
					if(awaModel.getAwards_doc() != null && !awaModel.getAwards_doc().isEmpty()) {
						if(awaModel.getAwards_doc_id() != null && !awaModel.getAwards_doc_id().isEmpty()) {
//							mongoRepository.saveFile(awaModel.getAwards_doc(), UserDetailsController.AWARDS_DOC, awaEntity.getAwards_doc_id());
						} else {
							awaEntity.setAwards_doc_id(UUID.randomUUID().toString());
//							mongoRepository.saveFile(awaModel.getAwards_doc(), UserDetailsController.AWARDS_DOC, awaEntity.getAwards_doc_id());
						}
					}
					awaEntity.setId(awaModel.getId());
					awaEntity.setModified_by(username);
					awaEntity.setModified_date(date);
					 details = dao.addAwards(awaEntity);
				}
		}catch(Exception e) {		
			e.printStackTrace();	
		}
		if(details != 1) {		
			redirect.addFlashAttribute("message", "error");	
			return "redirect:awards.do";	
		} else {		
			redirect.addFlashAttribute("message", "success");	
			return "redirect:awards.do";	
		}
	}
	
	@RequestMapping(value = "deleteAwards.do", method = RequestMethod.GET)
	public @ResponseBody String deleteAwardDetails(Model model, @RequestParam("id") int id, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		if(validator.isNum(String.valueOf(id))) {
			if (dao.deleteAwardDetails(id, session).equals("0")) {
				return GlobalMessages.RECORD_NOT_MATCHED;
			} else {
				return GlobalMessages.DELETE_DETAILS_MESSAGE;
			}
		} else return GlobalMessages.INVALID_NUMMBER;
	}

	

}				
