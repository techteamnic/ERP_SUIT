package org.nic.rb.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.nic.rb.constants.ApplicationStatus;
import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.model.ActionAppModel;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.service.AppointmentService;
import org.nic.rb.service.MasterService;
import org.nic.rb.utils.ClassUtils;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="rb_secr")
public class SecretaryController {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private AppointmentService service;
	
	@Value("${app.master.load.reg}")
	private List<String> load_mst_data;
	
	@Autowired
	private MasterService masterService;
	
	
	//APPLICATIONS SENT BY ADC TO Secretary
	@SuppressWarnings("unchecked")
	@RequestMapping(value="adc_forwarded.do", method=RequestMethod.GET)
	public String getApplRegistered(Model model, HttpServletRequest request) {
		HashMap<String, List<Object>> master_data = new HashMap<String,List<Object>>();
		Class<?> clazz = null;
		for (String mst_load : load_mst_data) {
			clazz = ClassUtils.getClassByString(mst_load);
			master_data.put(mst_load, (List<Object>) masterService.getMasterDataByEntityName(clazz));
		}
		model.addAttribute("master_data", master_data);
		model.addAttribute("reg_appointment", new AppointmentModel());
		try {
			model.addAttribute("appontments", new ObjectMapper().writeValueAsString(service.loadAllRegAppointments(null, 1)));
		} catch (JsonProcessingException e) {
			logger.error("Exception Occured in Appointment Controller at getApplRegistered while JSON parsing {}", e.getMessage());
			//e.printStackTrace();
		}
		model.addAttribute("action_model", new ActionAppModel());
		model.addAttribute("type_dashboard", "List of Appointments");
		model.addAttribute("purpose_filter", Boolean.TRUE);
		return "reg_appointments";
	}
}
