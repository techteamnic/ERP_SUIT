package org.nic.rb.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tika.io.IOUtils;
import org.nic.rb.captcha.CaptchaGenerator;
import org.nic.rb.captcha.CaptchaUtils;
import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.docs.LetterGeneration;
import org.nic.rb.entity.AppointmentEntity;
import org.nic.rb.entity.GalleryEntity;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.mongo.MongoOperations;
import org.nic.rb.service.AppointmentService;
import org.nic.rb.service.EmailRestService;
import org.nic.rb.service.MasterService;
import org.nic.rb.utils.ClassUtils;
import org.nic.rb.utils.DateUtils;
import org.nic.rb.validator.AppointmentModelValidator;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.security.web.csrf.DefaultCsrfToken;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import nl.captcha.Captcha;

@Controller
@SessionAttributes({"captcha", "curr_date", "ran_val"})
public class HomeController {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Value("${app.master.load.reg}")
	private List<String> load_mst_data;
	
	@Autowired
	private MasterService masterService;
	
	@Autowired
	private AppointmentService appoint_service;
	
	@Autowired
	private AppointmentModelValidator validator;
	
	/*@Autowired
    private JavaMailSender javaMailSender;*/
	
	@Autowired
	private EmailRestService emailService;
	
	@Autowired
	private CaptchaGenerator captchaGenerator;
	
	@Autowired
	private MongoOperations mongoOperations;
	
	@Value("${app.mail.active}")
	private String mail_active;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String index(Model model, HttpServletRequest request, HttpServletResponse response) {
		int min = 0;
        int max = 999;
        Captcha captcha = captchaGenerator.createCaptcha(200, 50);
		model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
		model.addAttribute("captcha", captcha.getAnswer());
		model.addAttribute("curr_date", DateUtils.getCurrDate());
		
		model.addAttribute("ran_val", (int)(Math.random() * (max - min + 1) + min));
		
		/*response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
*/		return "index";
	}
	
	@InitBinder
	public void registerAppointment(WebDataBinder binder) {
	    binder.setDisallowedFields(new String[]{"visitor_id", "application_id"});
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="register_appontment.do", method=RequestMethod.GET)
	public String registerAppointment(Model model, HttpServletRequest request, @ModelAttribute("reg_appointment") AppointmentModel app_model, BindingResult errors) {
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
//		model.addAttribute("appoint_data", "{}");
//		model.addAttribute("captcha", RandomUtils.getCaptcha());
		Captcha captcha = captchaGenerator.createCaptcha(200, 50);
		model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
		model.addAttribute("captcha", captcha.getAnswer());
		return "register_appontment";
	}
	
	@InitBinder
	public void submitAppontment(WebDataBinder binder) {
	    binder.setDisallowedFields(new String[]{"visitor_id", "application_id"});
	}
		
	@SuppressWarnings("unused")
	@RequestMapping(value= {"register_appontment.do"}, method=RequestMethod.POST)
	public String submitAppontment(Model model, HttpServletRequest request,HttpServletResponse response,@ModelAttribute("reg_appointment") /*@Validated*/ AppointmentModel app_model, BindingResult errors, RedirectAttributes redirect) {
		HttpSession session = request.getSession();
		validator.validate(app_model, errors);
		if(errors.hasErrors()) {
			logger.debug("AppointmentModel Model Validations {}", errors.toString());
			HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
			Class<?> clazz = null;
			for (String mst_load : load_mst_data) {
				clazz = ClassUtils.getClassByString(mst_load);
				master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
			}
			model.addAttribute("master_data", master_data);
//			model.addAttribute("reg_appointment", app_model);
			if(app_model.getReceipt_mode() != null && !app_model.getReceipt_mode().isEmpty()) {
				model.addAttribute("reciept_mode", 1);
			}
			Captcha captcha = captchaGenerator.createCaptcha(200, 50);
			model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
			model.addAttribute("captcha", captcha.getAnswer());
			return "register_appontment";
		}
		if(app_model.getCaptcha().equals(session.getAttribute("captcha").toString())) {
			session.removeAttribute("captcha");
			AppointmentEntity appointment = null;
			try {
				appointment = appoint_service.submitAppointment(app_model, request);
				if(Boolean.valueOf(mail_active)) {
					emailService.applicationConfirm(appointment);
				}
				redirect.addFlashAttribute("acknowlwdge", appointment);
				HttpSessionCsrfTokenRepository http_session_rep = new HttpSessionCsrfTokenRepository();
				DefaultCsrfToken _csrf = (DefaultCsrfToken) http_session_rep.generateToken(request);
				http_session_rep.saveToken(_csrf, request, response);
				session.setAttribute("_CSRF", _csrf);
				return "redirect:acknowledgement.do";
			}catch (Exception e) {
				e.printStackTrace();
				logger.error("Register Exception Message{}", e.getMessage());
				return "error/500";
			}
		} else {
			HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
			Class<?> clazz = null;
			for (String mst_load : load_mst_data) {
				clazz = ClassUtils.getClassByString(mst_load);
				master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
			}
			model.addAttribute("master_data", master_data);
			model.addAttribute("reg_appointment", app_model);
			if(app_model.getReceipt_mode() != null && !app_model.getReceipt_mode().isEmpty()) {
				model.addAttribute("reciept_mode", 1);
			}
			model.addAttribute("captcha_math", "Invalid Captcha.");
			Captcha captcha = captchaGenerator.createCaptcha(200, 50);
			model.addAttribute("captchaEncode", CaptchaUtils.encodeBase64(captcha));
			model.addAttribute("captcha", captcha.getAnswer());
			return "register_appontment";
		}
	}
	
	@RequestMapping(value="acknowledgement.do", method=RequestMethod.GET)
	public String acknowledgement() {
		return "acknowledgement";
	}
	
	@RequestMapping(value="present_governor.do", method=RequestMethod.GET)
	public String presentgovernor() {
		return "html/present_governor";
	}
	
	@RequestMapping(value="former_governors.do", method=RequestMethod.GET)
	public String formergovernors() {
		return "html/former_governors";
	}
	
	@RequestMapping(value="roleofgovernor.do", method=RequestMethod.GET)
	public String roleofgovernor() {
		return "html/roleofgovernor";
	}
	
	@RequestMapping(value="aschancellor.do", method=RequestMethod.GET)
	public String aschancellor() {
		return "html/aschancellor";
	}
	
	@RequestMapping(value="exofficorole.do", method=RequestMethod.GET)
	public String exofficorole() {
		return "html/exofficorole";
	}
	
	@RequestMapping(value="advisorstogovernor.do", method=RequestMethod.GET)
	public String advisorstogovernor() {
		return "html/advisorstogovernor";
	}
	
	@RequestMapping(value="presentsecretary.do", method=RequestMethod.GET)
	public String presentsecretary() {
		return "html/presentsecretary";
	}
	
	@RequestMapping(value="formersecretary.do", method=RequestMethod.GET)
	public String formersecretary() {
		return "html/formersecretary";
	}
	
	@RequestMapping(value="historyofrajbhavan.do", method=RequestMethod.GET)
	public String historyofrajbhavan() {
		return "html/historyofrajbhavan";
	}
	
	@RequestMapping(value="speeches.do", method=RequestMethod.GET)
	public String speeches() {
		return "html/speeches";
	}
	
	@RequestMapping(value="contactus.do", method=RequestMethod.GET)
	public String contactus() {
		return "html/contactus";
	}
	
	@RequestMapping(value="importantlinks.do", method=RequestMethod.GET)
	public String importantlinks() {
		return "html/importantlinks";
	}
	
	@RequestMapping(value="pios_apios.do", method=RequestMethod.GET)
	public String piosapios() {
		return "html/pios_apios";
	}
	
	@RequestMapping(value="distributionsecretariatwing.do", method=RequestMethod.GET)
	public String distributionsecretariatwing() {
		return "html/distributionsecretariatwing";
	}
	
	@RequestMapping(value="distributionhouseholdwing.do", method=RequestMethod.GET)
	public String distributionhouseholdwing() {
		return "html/distributionhouseholdwing";
	}
	
	@RequestMapping(value="employeessalarysecretariatwing.do", method=RequestMethod.GET)
	public String employeessalarysecretariatwing() {
		return "html/employeessalarysecretariatwing";
	}
	
	@RequestMapping(value="employeessalaryhouseholdwing.do", method=RequestMethod.GET)
	public String employeessalaryhouseholdwing() {
		return "html/employeessalaryhouseholdwing";
	}
	
	@RequestMapping(value="eventgallery.do", method=RequestMethod.GET)
	public String eventgallery(Model model, HttpServletRequest request) throws JsonProcessingException {
		HttpSession session = request.getSession();
		//		OutputStream ou = null;
		InputStream sImage = null;
//		byte[] bytearray = null;
		List<GridFsResource> doc_files = null;
		List<String> base64Imgs = null;
		if(session.getAttribute("pageNum") == null) {
			session.setAttribute("pageNum", 1);
		}else {
			session.setAttribute("pageNum", 1);
		}
		List<GalleryEntity> list_gallery = masterService.loadGallery((int) session.getAttribute("pageNum"));
		for (GalleryEntity gallery : list_gallery) {
			doc_files =  mongoOperations.getDocumentById(gallery.getDoc_id());
			base64Imgs = new ArrayList<>();
			for (GridFsResource doc_file : doc_files) {
//				bytearray = new byte[1024];
				try {
					sImage = doc_file.getInputStream();
					byte[] bytes = IOUtils.toByteArray(sImage);
					base64Imgs.add(Base64.getEncoder().encodeToString(bytes));
					/*while (sImage.read(bytearray, 0, bytearray.length) != -1) {
					ou.write(bytearray, 0, bytearray.length);
					ou.flush();
				}*/
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				finally {
					try {
//						ou.close();
						sImage.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
			}
			gallery.setBase64Imgs(base64Imgs);
		}
		model.addAttribute("images", new ObjectMapper().writeValueAsString(list_gallery));
		return "html/eventgallery";
	}
	
	@RequestMapping(value="down.do", method=RequestMethod.GET)
	public ModelAndView getDownload() {
		return new ModelAndView(new LetterGeneration());
	}
	
	/*@RequestMapping(value="doc1.do", method=RequestMethod.GET)
	public ModelAndView doc1() {
		return new ModelAndView(new AppointmentConfirmation());
	}
	@RequestMapping(value="doc2.do", method=RequestMethod.GET)
	public ModelAndView doc2() {
		return new ModelAndView(new RegretAppointment());
	}
	@RequestMapping(value="doc3.do", method=RequestMethod.GET)
	public ModelAndView doc3() {
		return new ModelAndView(new RegretMessage());
	}
	@RequestMapping(value="doc4.do", method=RequestMethod.GET)
	public ModelAndView doc4() {
		MimeMessage message = javaMailSender.createMimeMessage();

		   try{
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setTo("sandhiraghuvaran@gmail.com");

	        helper.setSubject("Testing from Spring Boot");
	        helper.setText("Hi");

			
			ByteArrayOutputStream outputStream = null;
	        
	            //construct the text body part
	            MimeBodyPart textBodyPart = new MimeBodyPart();

	            outputStream = new ByteArrayOutputStream();
	            writePdf(outputStream);
	            byte[] bytes = outputStream.toByteArray();
	             
	            DataSource dataSource = new ByteArrayDataSource(bytes, "application/pdf");
	            MimeBodyPart pdfBodyPart = new MimeBodyPart();
	            pdfBodyPart.setDataHandler(new DataHandler(dataSource));
	            pdfBodyPart.setFileName("test.pdf");
	                         
	            MimeMultipart mimeMultipart = new MimeMultipart();
	            mimeMultipart.addBodyPart(textBodyPart);
	            mimeMultipart.addBodyPart(pdfBodyPart);
			
	            helper.addAttachment("test.pdf", dataSource);

		     }catch (Exception e) {
			throw new MailParseException(e);
		     }
		   javaMailSender.send(message);
		
		return new ModelAndView(new InvitationConfirmation());
	}
	
	public void writePdf(OutputStream outputStream) throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, outputStream);
         
        document.open();
         
        document.addTitle("Appointment Confirmation");
        document.addSubject("Appointment Confirmation");
        document.addKeywords("iText, email");
        document.addAuthor("Ts RajBhavan");
        document.addCreator("Ts RajBhavan");
         
        Chunk letter_head = new Chunk("Appointment Confirmation");
		letter_head.setUnderline(0.1f, -2f); //0.1 thick, -2 y-location
		
		Paragraph letter_face = new Paragraph(letter_head);
		letter_face.setAlignment(Element.ALIGN_CENTER);
		letter_face.setFont(FontFactory.getFont(FontFactory.TIMES_ROMAN,30, Font.BOLD, BaseColor.BLACK));
		document.add(letter_face);
		document.add( Chunk.NEWLINE );
        
        Paragraph wish_letter = new Paragraph("Sir / Madam,");
        document.add(wish_letter);
        
        Paragraph subject_letter = new Paragraph("Please refer your mail dated 09th April, 2020.\r\n" + 
        		"The Hon’ble Governor of Telangana is pleased to give an appointment at 16.00 hrs on 10th April 2020.\r\n" + 
        		"Please reach Raj Bhavan at least 30 min in advance.");
        document.add(subject_letter);
        
        document.close();
    }*/
	
	@RequestMapping(value="eventgalleryload.do", method=RequestMethod.GET)
	public @ResponseBody List<GalleryEntity> eventgalleryLoad(HttpServletRequest request) {
		HttpSession session = request.getSession();
		InputStream sImage = null;
		List<GridFsResource> doc_files = null;
		List<String> base64Imgs = null;
		int pageNum = 0;
		List<GalleryEntity> list_gallery = null;
		if(session.getAttribute("pageNum") != null) {
			pageNum = (int) session.getAttribute("pageNum") + 1;
			session.setAttribute("pageNum", pageNum);
			list_gallery = masterService.loadGallery(pageNum);
		}
		if(list_gallery != null && list_gallery.size() > 0) {
			for (GalleryEntity gallery : list_gallery) {
				doc_files =  mongoOperations.getDocumentById(gallery.getDoc_id());
				base64Imgs = new ArrayList<>();
				for (GridFsResource doc_file : doc_files) {
					try {
						sImage = doc_file.getInputStream();
						byte[] bytes = IOUtils.toByteArray(sImage);
						base64Imgs.add(Base64.getEncoder().encodeToString(bytes));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
					finally {
						try {
							sImage.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
					
				}
				gallery.setBase64Imgs(base64Imgs);
			}
		}
		else {
			session.removeAttribute("pageNum");
		}
		return list_gallery;
	}
}
