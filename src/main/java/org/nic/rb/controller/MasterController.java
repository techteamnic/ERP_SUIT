 package org.nic.rb.controller;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tika.io.IOUtils;
import org.bson.BSON;
import org.bson.BsonValue;
import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.exceptions.ValidationException;
import org.nic.rb.model.GalleryModel;
import org.nic.rb.model.MasterModel;
import org.nic.rb.service.MasterService;
import org.nic.rb.validator.MasterValidator;
import org.nic.rb.validator.Validations;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="rb_exe")
@SessionAttributes("type")
public class MasterController {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private MasterService masterService;
	
	@Autowired
	private MasterValidator validate;
	
	
	
	/*@Autowired
	private CustomCsrfTokenRepository customCsrfTokenRepository;*/
	
	
	static Validations validator = new Validations();
	
	@RequestMapping(value="/masterData.do", method=RequestMethod.GET)
	public String masterItemsGet(Model model, HttpServletRequest request, HttpServletResponse response) throws JsonProcessingException {
		HttpSession session = request.getSession();
		HttpSessionCsrfTokenRepository http_session_rep = new HttpSessionCsrfTokenRepository();
		DefaultCsrfToken _csrf = (DefaultCsrfToken) http_session_rep.generateToken(request);
		http_session_rep.saveToken(_csrf, request, response);
		session.setAttribute("_CSRF", _csrf);
		String query_entity = (String) session.getAttribute("type");
		model.addAttribute("curr_master", query_entity.replaceAll("Master", ""));
		model.addAttribute("master_data", new ObjectMapper().writeValueAsString(masterService.getMasterDetailsByQ(query_entity)));
		return "masters";
	}
	
	@RequestMapping(value="/masterData.do", method=RequestMethod.POST)
	public String masterItemsPost(Model model, HttpServletRequest request, HttpServletResponse response,@RequestParam(value = "type") String query_entity) throws JsonProcessingException {
		HttpSession session = request.getSession();
		HttpSessionCsrfTokenRepository http_session_rep = new HttpSessionCsrfTokenRepository();
		DefaultCsrfToken _csrf = (DefaultCsrfToken) http_session_rep.generateToken(request);
		http_session_rep.saveToken(_csrf, request, response);
		session.setAttribute("_CSRF", _csrf);
		if(query_entity == null || query_entity.isEmpty() || !validator.isAlphanumeric(query_entity)) {
			model.addAttribute("error_msg", new ValidationException("Invalid Data Found."));
			return "error/notfound";
		}
		model.addAttribute("type", query_entity);
		model.addAttribute("curr_master", query_entity.replaceAll("Master", ""));
		model.addAttribute("master_data", new ObjectMapper().writeValueAsString(masterService.getMasterDetailsByQ(query_entity)));
		return "masters";
	}
	
	@InitBinder
	public void applicantType(WebDataBinder binder) {
	    binder.setDisallowedFields(new String[]{});
	}	
	
	@RequestMapping(value="/addMasterData.do", method=RequestMethod.POST)
	public String applicantType(Model model, HttpServletRequest request,HttpServletResponse response, @ModelAttribute("mastermodel") MasterModel masterModel, BindingResult errors) {
		HttpSession session = request.getSession();
		validate.validate(masterModel, errors);
		if(errors.hasErrors()) {
			logger.debug("MasterModel Validation Data {}", errors.toString());
			String query_entity = session.getAttribute("type").toString();
			model.addAttribute("curr_master", query_entity.replaceAll("Master", ""));
			try {
				model.addAttribute("master_data", new ObjectMapper().writeValueAsString(masterService.getMasterDetailsByQ(query_entity)));
			} catch (JsonProcessingException e) {
				logger.error("MasterModel addMasterData {}", e.getMessage());
			}
			return "masters";
		}
		if(masterService.saveMasterData(masterModel, request) > 0) {
			/*switch (masterModel.getMastr_name()) {
			case "ApplicantType":
				return "redirect:masterData.do?type=ApplicantType";
			case "PurposeVisit":
				return "redirect:masterData.do?type=PurposeVisit";
			case "District":
				return "redirect:masterData.do?type=District";
			case "TypeInvitaion":
				return "redirect:masterData.do?type=TypeInvitaion";
			case "Roles":
				return "redirect:masterData.do?type=Roles";
			}*/
			HttpSessionCsrfTokenRepository http_session_rep = new HttpSessionCsrfTokenRepository();
			DefaultCsrfToken _csrf = (DefaultCsrfToken) http_session_rep.generateToken(request);
			http_session_rep.saveToken(_csrf, request, response);
			session.setAttribute("_CSRF", _csrf);
			return "redirect:masterData.do";
		}else
			return "error/500";
	}
	
	@RequestMapping(value="/add_gallery.do", method=RequestMethod.GET)
	public String getGallery(Model model, @ModelAttribute("gallery") GalleryModel gallery) {
		return "add_gallery";
	}
	
	@RequestMapping(value="/add_gallery.do", method=RequestMethod.POST)
	public String addGallery(Model model, HttpServletRequest request, @ModelAttribute("gallery") GalleryModel gallery, BindingResult errors, RedirectAttributes redirect) {
		if(masterService.addGalleryService(gallery, request) != null) {
			redirect.addFlashAttribute("gal_alert", "success");
			if(gallery.getDoc_id() != null && !gallery.getDoc_id().isEmpty())
				redirect.addFlashAttribute("gal_msg", "success! - Images updated to Gallery.");
			else
				redirect.addFlashAttribute("gal_msg", "success! - Images added to Gallery.");
		}
		else {
			redirect.addFlashAttribute("gal_alert", "danger");
			if(gallery.getDoc_id() != null && !gallery.getDoc_id().isEmpty())
				redirect.addFlashAttribute("gal_msg", "Error! - Updating to Gallery has failed please try again.");
			else
				redirect.addFlashAttribute("gal_msg", "Error! - Adding to Gallery has failed please try again.");
		}
		
		if(gallery.getDoc_id() != null && !gallery.getDoc_id().isEmpty())
			return "redirect:edit_gallery.do";
		else
			return "redirect:add_gallery.do";
	}
	
	@RequestMapping(value="/edit_gallery.do", method=RequestMethod.GET)
	public String getEditGallery(Model model, @ModelAttribute("gallery") GalleryModel gallery) throws JsonProcessingException {
		model.addAttribute("galls", new ObjectMapper().writeValueAsString(masterService.getAllGallery()));
		return "edit_gallery";
	}
	
	@RequestMapping(value="/delete_gallery.do", method=RequestMethod.POST)
	public String getDeleteGallery(Model model, @RequestParam("doc_id") String doc_id, @RequestParam("title") String gallery_title) throws IllegalStateException, IOException {
		GalleryModel gal_model = null;
		List<GridFsResource> allfiles = masterService.getAllImagesByEventId(doc_id);
		if(allfiles != null) {
			gal_model = new GalleryModel();
			gal_model.setBase64Imgs(new HashMap<String, String>());
			gal_model.setGallery_title(gallery_title);
		}
		for (GridFsResource file : allfiles) {
			byte[] bytes = IOUtils.toByteArray(file.getInputStream());
			gal_model.getBase64Imgs().put(((BsonValue)file.getId()).asObjectId().getValue().toString(), Base64.getEncoder().encodeToString(bytes));
		}
		model.addAttribute("del_galls", gal_model);
		return "delete_gallery";
	}
	
	@RequestMapping(value="/delete_selected.do", method=RequestMethod.POST)
	public String deleteFromGallery(Model model, @RequestParam("object_id") String[] object_id, RedirectAttributes redirect) {
		if(object_id != null && object_id.length > 0) {
			masterService.deleteEventPhotos(object_id);
			redirect.addFlashAttribute("gal_alert","success");
			redirect.addFlashAttribute("gal_msg", object_id.length+" images were deleted from gallery.");
		}
		return "redirect:edit_gallery.do";
	}
	
}
