package nic.userdetails.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PersonalModel implements Serializable{
	
	private static final long serialVersionUID = 9084388095598804412L;
	
	
	private Integer id;
	private String cand_name;
	private String father_name;
	private String gender;
	private String dob;
	private String age;
	private String nationality;
	private String lang_english;
	private String lang_hindi;
	private String lang_other1;
	private String lang_other2;
	private String lang_other_one;
	private String lang_other_two;
	private Date dob_date;
	private String category;
	private String blood_group;
	private String rh_factor;
	private String student_unique_no;
	private String identity_marks1;
	private String identity_marks2;
	private String identity_type;
	private String identity_no;
	private String user_image_id;
	private MultipartFile user_image;
	
	private Integer inst_id;
	private Integer user_type;
	private String user_type_name;
	
}