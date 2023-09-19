package nic.userdetails.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "multi_personal_info")
@Setter
@Getter
public class MultiPersonalEntity implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "multi_personal_info_id")
	@SequenceGenerator(name = "multi_personal_info_id", sequenceName = "multi_personal_info_id_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
	private Integer inst_id;
	private Integer user_type;
	private String cand_name;
	private String father_name;
	private String gender;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date dob;
	private String age;
	private String nationality;
	private String lang_english;
	private String lang_hindi;
	private String lang_other1;
	private String lang_other2;
	private String lang_other_one;
	private String lang_other_two;
	private String category;
	private String blood_group;
	private String rh_factor;
	private String student_unique_no;
	private String identity_marks1;
	private String identity_marks2;
	private String identity_type;
	private String identity_no;
	private String user_image_id;
	
	@Column
	private String created_by;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date created_date;
	@Column
	private String ipaddress;
	@Temporal(TemporalType.TIMESTAMP)
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
	private Date ts;
	private String modified_by;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date modified_date;
	private Integer userid;
	private Integer role_id;
	@Column(columnDefinition = "boolean default true ")
	private boolean is_active;

}
