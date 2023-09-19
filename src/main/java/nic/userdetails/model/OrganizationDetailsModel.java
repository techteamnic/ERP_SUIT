package nic.userdetails.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrganizationDetailsModel {
	
	private Integer id;
	private String org_name;
	private String hosp_type;
	private String hosp_speciality;
	private String license_number;
	private MultipartFile licence_doc;
	private String licence_doc_id;
	private String license_valid_from;
	private String license_valid_to;
	private String pan;
	private String tan;
	private String gst;
	private String no_of_employees_working;
	private String no_of_doctors;
	private String test_facility;

}
