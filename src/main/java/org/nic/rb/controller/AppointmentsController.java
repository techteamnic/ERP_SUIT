package org.nic.rb.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nic.rb.captcha.CaptchaGenerator;
import org.nic.rb.captcha.CaptchaUtils;
import org.nic.rb.constants.ApplicationStatus;
import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.docs.PDFBuilder;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.exceptions.ValidationException;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.model.AppointmentsModel;
import org.nic.rb.mongo.MongoOperations;
import org.nic.rb.service.AppointmentService;
import org.nic.rb.service.EmailRestService;
import org.nic.rb.service.MasterService;
import org.nic.rb.utils.ClassUtils;
import org.nic.rb.validator.Validations;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import nl.captcha.Captcha;

@Controller
@RequestMapping(value={"rb_chief", "rb_secr"})
//@SessionAttributes({"reciept_mode"})
@SessionAttributes({"captcha"})
public class AppointmentsController {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private AppointmentService service;
	
	@Autowired
	private MasterService masterService;
	
	@Autowired
	private AppointmentService appoint_service;
	
	@Autowired
	private ApplicationStatus appl_Status;
	
	@Autowired
	private MongoOperations mongoOperations;
	
	@Autowired
	private EmailRestService emailService;
	
	@Autowired
	private CaptchaGenerator captchaGenerator;
	
	@Value("${app.master.load.reg}")
	private List<String> load_mst_data;
	
	@Value("${app.mail.active}")
	private String mail_active;
	
	static Validations validator = new Validations();
	
	@RequestMapping(value="loadDocument.do", method=RequestMethod.POST)
	public String loadDocument(Model model, HttpServletRequest request, HttpServletResponse response, 
			@RequestParam(value="file_name", required=true) String file_name, 
			@RequestParam(value="id", required=true) String id) {
		
		if(id != null && !id.isEmpty() ) {
			if(id.length() != 36) {
				model.addAttribute("error_msg", new ValidationException("Doc Id should contine 36 charecters."));
				return "error/notfound";
			}
			if(!validator.isAlphanumeric(id)) {
				model.addAttribute("error_msg", new ValidationException("Doc Id Invalid."));
				return "error/notfound";
			}
		}else {
			model.addAttribute("error_msg", new ValidationException("Doc Id Required."));
			return "error/notfound";
		}
		
		if(file_name != null && !file_name.isEmpty()) {
			Integer file_id = null;
			if(!validator.isNum(file_name)) {
				model.addAttribute("error_msg", new ValidationException("File name Invalid."));
				return "error/notfound";
			}
			else {
				file_id = Integer.parseInt(file_name);
			}
			if(file_id != null && !(file_id == 1 || file_id == 2 || file_id == 3 || file_id == 4)) {
				model.addAttribute("error_msg", new ValidationException("File name Invalid."));
				return "error/notfound";
			}
		}else {
			model.addAttribute("error_msg", new ValidationException("File name Required."));
			return "error/notfound";
		}
		
		String file = null;
		switch (file_name) {
		case "1":
			file = "visitor_support_doc";
			break;

		case "2":
			file = "message_doc";
			break;
		
		case "3":
			file = "org_evnt_celb_doc";
			break;
			
		case "4":
			file = "educational_info";
			break;
		}
		
		OutputStream ou = null;
		InputStream sImage = null;
		GridFsResource doc_file =  mongoOperations.getDocumentById(id, file);
		if (doc_file != null) {
			try {
				ou = response.getOutputStream();
				byte[] bytearray = new byte[1024];
				sImage = doc_file.getInputStream();
				response.reset();
				response.setContentType(doc_file.getContentType());
				response.setHeader("X-Frame-Options", "sameorigin");
				response.setHeader( "Content-Disposition", "filename=" + doc_file.getFilename());
				while (sImage.read(bytearray, 0, bytearray.length) != -1) {
					ou.write(bytearray, 0, bytearray.length);
					ou.flush();
				}
			} catch (IOException e) {
				//e.printStackTrace();
				logger.error("loadDocument EXCEPTION in AppointMent Controller {}", e.getMessage());
			}finally {
				try {
					if(ou != null)
						ou.close();
					
					if(sImage != null)
						sImage.close();
				} catch (IOException e) {
					logger.error("EXCEPTION Occured While Closing The Stream {}"+e.getMessage());
				}
			}
			return null;
		}
		else {
			model.addAttribute("no_doc", Boolean.TRUE);
			return "error/notfound";
		}
	}
	
	
	@RequestMapping(value="loadDocumentAlt.do", method=RequestMethod.POST)
	public String loadDocumentAlt(Model model, HttpServletRequest request, HttpServletResponse response, 
			@RequestParam(value="file_name", required=true) String file_name, 
			@RequestParam(value="id", required=true) String id) {
		
		if(id != null && !id.isEmpty() ) {
			if(id.length() != 36) {
				model.addAttribute("error_msg", new ValidationException("Doc Id should contine 36 charecters."));
				return "error/notfound";
			}
			if(!validator.isAlphanumeric(id)) {
				model.addAttribute("error_msg", new ValidationException("Doc Id Invalid."));
				return "error/notfound";
			}
		} else {
			model.addAttribute("error_msg", new ValidationException("Doc Id Required."));
			return "error/notfound";
		}
		String file = null;
		if(file_name != null && !file_name.isEmpty()) {
			if(!validator.isAlphanumeric(file_name)) {
				model.addAttribute("error_msg", new ValidationException("File name Invalid."));
				return "error/notfound";
			} else {
				file = file_name;
			}
		} else {
			model.addAttribute("error_msg", new ValidationException("File name Required."));
			return "error/notfound";
		}
		
		OutputStream ou = null;
		InputStream sImage = null;
		GridFsResource doc_file =  mongoOperations.getDocumentById(id, file);
		if (doc_file != null) {
			try {
				ou = response.getOutputStream();
				byte[] bytearray = new byte[1024];
				sImage = doc_file.getInputStream();
				response.reset();
				response.setContentType(doc_file.getContentType());
				response.setHeader("X-Frame-Options", "sameorigin");
				response.setHeader( "Content-Disposition", "filename=" + doc_file.getFilename());
				while (sImage.read(bytearray, 0, bytearray.length) != -1) {
					ou.write(bytearray, 0, bytearray.length);
					ou.flush();
				}
			} catch (IOException e) {
				//e.printStackTrace();
				logger.error("loadDocument EXCEPTION in AppointMent Controller {}", e.getMessage());
			}finally {
				try {
					if(ou != null)
						ou.close();
					
					if(sImage != null)
						sImage.close();
				} catch (IOException e) {
					logger.error("EXCEPTION Occured While Closing The Stream {}"+e.getMessage());
				}
			}
			return null;
		}
		else {
			model.addAttribute("no_doc", Boolean.TRUE);
			return "error/notfound";
		}
	}
	
	//APPLICATIONS REGISTERED
	@SuppressWarnings("unchecked")
	@RequestMapping(value="appl_registered.do", method=RequestMethod.GET)
	public String getApplRegistered(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(appl_Status.getAction())));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="representation_registered.do", method=RequestMethod.GET)
	public String representationRegistered(Model model, HttpServletRequest request) {
		int purpose = 1;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAction(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		return "reg_appointments";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="message_registered.do", method=RequestMethod.GET)
	public String messageRegistered(Model model, HttpServletRequest request) {
		int purpose = 3;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAction(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		return "reg_appointments";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="courtesy_registered.do", method=RequestMethod.GET)
	public String courtesyRegistered(Model model, HttpServletRequest request) {
		int purpose = 4;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAction(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		return "reg_appointments";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="event_registered.do", method=RequestMethod.GET)
	public String eventRegistered(Model model, HttpServletRequest request) {
		int purpose = 6;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAction(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		return "reg_appointments";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="others_registered.do", method=RequestMethod.GET)
	public String othersRegistered(Model model, HttpServletRequest request) {
		int purpose = 7;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAction(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("appl_status", appl_Status.getAction());
		model.addAttribute("type_dashboard", "List of Appointments");
		return "reg_appointments";
	}
	
	//APPLICAATION ACCEPTED
	@SuppressWarnings("unchecked")
	@RequestMapping(value="appl_accepted.do", method=RequestMethod.GET)
	public String getApplAccepted(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(appl_Status.getAccepted())));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
	
	@RequestMapping(value="representation_accepted.do", method=RequestMethod.GET)
	public String representationAccepted(Model model, HttpServletRequest request) {
		int purpose = 1;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAccepted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="message_accepted.do", method=RequestMethod.GET)
	public String messageAccepted(Model model, HttpServletRequest request) {
		int purpose = 3;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAccepted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="courtesy_accepted.do", method=RequestMethod.GET)
	public String courtesyAccepted(Model model, HttpServletRequest request) {
		int purpose = 4;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAccepted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="event_accepted.do", method=RequestMethod.GET)
	public String eventAccepted(Model model, HttpServletRequest request) {
		int purpose = 6;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAccepted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="others_accepted.do", method=RequestMethod.GET)
	public String otherAccepted(Model model, HttpServletRequest request) {
		int purpose = 7;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getAccepted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplAccepted while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getAccepted());
		model.addAttribute("type_dashboard", "Accepted Appointments");
		return "reg_appointments";
	}
	
	//APPLICATIONS REJECTED
	@RequestMapping(value="appl_rejected.do", method=RequestMethod.GET)
	public String getApplRejected(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(appl_Status.getRegretted())));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
	
	@RequestMapping(value="representation_regretted.do", method=RequestMethod.GET)
	public String representationRejected(Model model, HttpServletRequest request) {
		int purpose = 1;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getRegretted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="message_regretted.do", method=RequestMethod.GET)
	public String messageRejected(Model model, HttpServletRequest request) {
		int purpose = 3;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getRegretted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="courtesy_regretted.do", method=RequestMethod.GET)
	public String courtesyRejected(Model model, HttpServletRequest request) {
		int purpose = 4;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getRegretted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="event_regretted.do", method=RequestMethod.GET)
	public String eventRejected(Model model, HttpServletRequest request) {
		int purpose = 6;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getRegretted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="others_regretted.do", method=RequestMethod.GET)
	public String othersRejected(Model model, HttpServletRequest request) {
		int purpose = 7;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getRegretted(), purpose)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRejected while JSON parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		model.addAttribute("appl_status", appl_Status.getRegretted());
		model.addAttribute("type_dashboard", "Regretted Appointments");
		return "reg_appointments";
	}
	
	//APPLICATIONS PENDING
	@RequestMapping(value="appl_pending.do", method=RequestMethod.GET)
	public String getApplPending(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(appl_Status.getPending())));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
	
	@RequestMapping(value="representation_pending.do", method=RequestMethod.GET)
	public String representationPending(Model model, HttpServletRequest request) {
		int purpose = 1;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getPending(), purpose)));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="message_pending.do", method=RequestMethod.GET)
	public String messagePending(Model model, HttpServletRequest request) {
		int purpose = 3;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getPending(), purpose)));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="courtesy_pending.do", method=RequestMethod.GET)
	public String courtesyPending(Model model, HttpServletRequest request) {
		int purpose = 4;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getPending(), purpose)));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="event_pending.do", method=RequestMethod.GET)
	public String eventPending(Model model, HttpServletRequest request) {
		int purpose = 6;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getPending(), purpose)));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="others_pending.do", method=RequestMethod.GET)
	public String otherPending(Model model, HttpServletRequest request) {
		int purpose = 7;
		HttpSession session = request.getSession();
		session.setAttribute("purpose_visit", purpose);
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointmentsByPurpose(appl_Status.getPending(), purpose)));
		} catch (JsonProcessingException e) {
			//e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplPending while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getPending());
		model.addAttribute("type_dashboard", "Pending Appointments");
		return "reg_appointments";
	}
	
	@RequestMapping(value="appl_closed.do", method=RequestMethod.GET)
	public String getApplClosed(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(appl_Status.getClosed())));
		} catch (JsonProcessingException e) {
//			e.printStackTrace();
			logger.error("Exception Occured in AppointmentController at getApplClosed while JSON Parsing {}", e.getMessage());
		}
		model.addAttribute("appl_status", appl_Status.getClosed());
		model.addAttribute("type_dashboard", "Closed Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
	
	@InitBinder
	public void registerAppointment(WebDataBinder binder) {
	    binder.setDisallowedFields(new String[]{"visitor_id", "application_id"});
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="new_appontment.do", method=RequestMethod.GET)
	public String registerAppointment(Model model, HttpServletRequest request, @ModelAttribute("reg_appointment") AppointmentModel app_model, BindingResult errors) {
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("appoint_data", "{}");
		model.addAttribute("master_data", master_data);
		model.addAttribute("reciept_mode", 1);
//		model.addAttribute("captcha", RandomUtils.getCaptcha());
		Captcha captcha = captchaGenerator.createCaptcha(200, 50);
		model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
		model.addAttribute("captcha", captcha.getAnswer());
		return "register_appontment";
	}
	
	@RequestMapping(value="view_appointment.do", method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<AppointmentEntity> getAppointment(@RequestParam(name="visitor_id", required = true) Integer visitor_id) throws JsonProcessingException {
		if(visitor_id == null) {
			throw new ValidationException("Visitor Id is Required.");
		}
		AppointmentEntity appoint_data = appoint_service.loadAppointmentById(visitor_id);
		//model.addAttribute("appoint_data", new ObjectMapper().writeValueAsString(appoint_data));
		return ResponseEntity.ok().body(appoint_data);
	}
	
	@RequestMapping(value="application_status.do", method=RequestMethod.POST)
	public @ResponseBody HttpStatus getAppointment(HttpServletRequest request, @RequestParam(required=true) String visit_id,
			@RequestParam(required=false)  Integer appl_status, @RequestParam(required=false) Integer appl_forward_to, /*@RequestParam(required=false)  boolean letter_sent,*/ @RequestParam(required=true) String appl_status_remark) {
		if(!validator.isNum(visit_id) || !validator.isAlphanumeric(appl_status_remark)) {
			throw new ValidationException("Please Check your Inputs.");
		}
		
		ActionAppModel action_model = new ActionAppModel();
		action_model.setVisit_id(Integer.parseInt(visit_id));
		action_model.setAppl_status(appl_status);
		action_model.setAppl_forward_to(appl_forward_to);
		action_model.setLetter_sent(false);
		action_model.setAppl_status_remark(appl_status_remark);
		
		
		if(appoint_service.appointmentAction(action_model, request) > 0) {
			AppointmentEntity appoint_data = appoint_service.loadAppointmentById(Integer.parseInt(visit_id));
			try {
				if ((int) appl_status == 2) {
					if((int) appoint_data.getPurpose_visit() == 6)
						emailService.regretMessage(appoint_data);
					else 
						emailService.regretAppointment(appoint_data);
				} 
				else if ((int) appl_status == 3) {
					emailService.pendingMessage(appoint_data);
				}
			}
			catch (Exception e) {
//				e.printStackTrace();
				logger.error("error while application_status {}", e.getMessage());
			}
			return HttpStatus.OK;
		}
		else 
			return HttpStatus.NOT_MODIFIED;
		
	}
	
	@RequestMapping(value="appoint_message.do", method=RequestMethod.POST)
	public String appointMessage(Model model, HttpServletRequest request, @RequestParam(required=true) String visit_id,
			@RequestParam(required=true) MultipartFile appoint_file, @RequestParam(required=false) String letter_sent, @RequestParam(required=true) String appl_appv_status_remark, RedirectAttributes redirect) throws Exception {
		if(!validator.isNum(visit_id) || !validator.CheckMimeType(appoint_file) || !validator.isAlphanumeric(appl_appv_status_remark) || (letter_sent != null && !validator.isString(letter_sent))) {
			throw new ValidationException("Please Check your Inputs.");
		}
		
		ActionAppModel action_model = new ActionAppModel();
		action_model.setVisit_id(Integer.parseInt(visit_id));
		action_model.setAppoint_file(appoint_file);
		action_model.setLetter_sent(Boolean.valueOf(letter_sent));
		action_model.setAppl_appv_status_remark(appl_appv_status_remark);
		if(appoint_service.appointmentConformService(action_model) > 0) {
			if(Boolean.valueOf(mail_active)) {
				AppointmentEntity appoint_data = appoint_service.loadAppointmentById(Integer.parseInt(visit_id));
				if((int) appoint_data.getAppl_status() == 5) {
					if((int) appoint_data.getPurpose_visit() == 6)
						emailService.invitationConfirmation(appoint_data);
					else if ((int) appoint_data.getPurpose_visit() == 3)
						emailService.requestForMessage(appoint_data);
					else 
						emailService.appointmentConfirm(appoint_data);
				}
			}
			redirect.addFlashAttribute("msg_status", "your message request is processed successfully.");
		}
		return "redirect:message_accepted.do";
	}
	
	@RequestMapping(value="appointment_status.do", method=RequestMethod.POST)
	public @ResponseBody HttpStatus submitAppointment(Model model, HttpServletRequest request, @RequestParam(required=true) String visit_id,
			@RequestParam(required=true) String appoint_date, @RequestParam(required=true) String appoint_time, @RequestParam(required=false) String letter_sent, @RequestParam(required=true) String appl_appv_status_remark) {
		if(!validator.isNum(visit_id) || !validator.isValDate(appoint_date) || !validator.isTime(appoint_time) || !validator.isAlphanumeric(appl_appv_status_remark) || (letter_sent != null && !validator.isString(letter_sent))) {
			throw new ValidationException("Please Check your Inputs.");
		}
		
		ActionAppModel action_model = new ActionAppModel();
		action_model.setVisit_id(Integer.parseInt(visit_id));
		action_model.setAppoint_date(appoint_date);
		action_model.setAppoint_time(appoint_time);
		action_model.setLetter_sent(Boolean.valueOf(letter_sent));
		action_model.setAppl_appv_status_remark(appl_appv_status_remark);
		
		try {
			if(appoint_service.appointmentConformService(action_model) > 0) {
				if(Boolean.valueOf(mail_active)) {
					AppointmentEntity appoint_data = appoint_service.loadAppointmentById(Integer.parseInt(visit_id));
					if((int) appoint_data.getAppl_status() == 5) {
						if((int) appoint_data.getPurpose_visit() == 6)
							emailService.invitationConfirmation(appoint_data);
						else if ((int) appoint_data.getPurpose_visit() == 3)
							emailService.requestForMessage(appoint_data);
						else 
							emailService.appointmentConfirm(appoint_data);
					}
					return HttpStatus.OK;
				}
				else return HttpStatus.OK;
			} 
			else 
				return HttpStatus.NOT_MODIFIED;
		} catch (Exception e) {
//			e.printStackTrace();
			logger.error("error while appointment_status {}", e.getMessage());
			return HttpStatus.CONFLICT;
		}
	}
	
	@RequestMapping(value="appl_approved.do", method=RequestMethod.GET)
	public String getApplApproved(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("purpose_visit");
		try {
			model.addAttribute("approved_list", new ObjectMapper().writeValueAsString(service.getApplApprovedListService()));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in AppointmentController at getApplApproved while JSON Parsing {}", e.getMessage());
//			e.printStackTrace();
		}
		return "approved_list";
	}
	
	@RequestMapping(value="appl_approved_download.do", method=RequestMethod.POST)
	public ModelAndView getApplApprovedDownload(Model model, HttpServletRequest request, @RequestParam("approval_date") String approval_date) {
		List<AppointmentEntity> approved_appoint = service.getAppointmentByDateService(approval_date);
		return new ModelAndView(new PDFBuilder(),"approved_appoint", approved_appoint);
	}
	
	/*
	 * AJAX PDF VIEW
	 */
	@RequestMapping(value="supportDocument.do")
	public @ResponseBody String supportDocument(HttpServletRequest request, @RequestParam(name="supp_doc_id", required = true) String supp_doc_id) {
		GridFsResource doc_file =  mongoOperations.getDocumentById(supp_doc_id, "visitor_support_doc");
		byte[] pdf_data = null;
		if (doc_file != null) {
			try {
				pdf_data = doc_file.getInputStream().toString().getBytes();
			} catch (IllegalStateException | IOException e) {
				logger.error("loadDocument EXCEPTION in supportDocument Controller {}", e.getMessage());
			}finally {
				try {
					if(doc_file.getInputStream() != null)
						doc_file.getInputStream().close();
				} catch (IOException e) {
					logger.error("EXCEPTION Occured While Closing The Stream {}"+e.getMessage());
				}
			}
		}
		return Base64.getEncoder().encodeToString(pdf_data);
	}
	
	
	@RequestMapping(value="changeDashBoardAppoint.do", method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<AppointmentsModel>> changeDashBoardAppoint(HttpServletRequest request, @RequestParam(name="appl_status", required = true) String appl_status, @RequestParam(name="purpose_visit", required = true) String purpose_visit) {
		if(!validator.isNum(purpose_visit) || !validator.isNum(appl_status)) {
			throw new ValidationException("Please Check your Inputs.");
		}
		return ResponseEntity.ok().body(service.changeDashBoardAppointments(Integer.parseInt(appl_status), Integer.parseInt(purpose_visit)));
	}
	
	@RequestMapping(value="changeDashBoardByMonth.do", method=RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<AppointmentsModel>> changeDashBoardByMonth(HttpServletRequest request, @RequestParam(name="appl_status", required = true) String appl_status, @RequestParam(name="month", required = true) String month) {
		HttpSession session = request.getSession();
		if(!validator.isNum(appl_status) || !validator.isNum(month)) {
			throw new ValidationException("Please Check your Inputs.");
		}
		return ResponseEntity.ok().body(service.changeDashBoardByMonth(Integer.parseInt(appl_status), Integer.parseInt(month), session.getAttribute("purpose_visit") == null ? null : (Integer) session.getAttribute("purpose_visit")));
	}
	
	@RequestMapping(value="appl_approved_view.do", method=RequestMethod.POST, consumes = {"application/x-www-form-urlencoded;charset=UTF-8"}, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<AppointmentEntity>> getApplApprovedView(@RequestParam("approval_date") String approval_date) {
		return ResponseEntity.ok().body(service.getAppointmentByDateService(approval_date));
	}
}
