package nic.userdetails.model;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class AddressModel {
	
	private Integer id;
	private Integer personaldetailsid;
	private String houseno;
	private String street;
	private String state;
	private String dist;
	private String subdist;
	private String locality;
	private String village;
	private String pincode;
	private String landmark_one;
	private String landmark_two;
	private Integer totalno;
	private Integer role_id;
	private boolean is_active;
	private String personname;
	private MultipartFile photo1;
	private MultipartFile photo2;
	private String add_photo_1_doc_id;
	private String add_photo_2_doc_id;
	private String homecountry;
	private String homecountryaddr;
	private String houseno_currentaddr;
	private String resident_india;
	private String isaddr_same;
	private String landmark_one_currentaddr;
	private String landmark_two_currentaddr;
	private String locality_currentaddr;
	private String pincode_currentaddr;
	private String street_currentaddr;
	private Integer totalno_currentaddr;
	private String village_currentaddr;
	private String country_status;
	private String state_currentaddr;
	private String dist_currentaddr;
	private String subdist_currentaddr;
	private String mobile;
	private String alt_mobile;
	private String email;
	private String alt_email;
	
	private String statename;
	private String dist_name;
	private String statename_currentaddr;
	private String dist_name_currentaddr;
	
	private Integer country_currentaddr;
	private Integer country_state_currentaddr;
	private Integer country_state_city_currentaddr;
	
	private String countryname;
	private String cityname;
	
	private Integer inst_id;
	private Integer student_id;
	private String student_name;
	
}
