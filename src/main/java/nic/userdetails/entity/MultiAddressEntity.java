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

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "multiaddrdetails")
public class MultiAddressEntity implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "multiaddrdetails_id")
	@SequenceGenerator(name = "multiaddrdetails_id", sequenceName = "multiaddrdetails_id_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
	private Integer inst_id;
	private Integer student_id;
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
	
	private String add_photo_1_doc_id;
	private String add_photo_2_doc_id;
	
	private String houseno_currentaddr;
	private String street_currentaddr;
	private String locality_currentaddr;
	private String village_currentaddr;
	private String pincode_currentaddr;
	private String landmark_one_currentaddr;
	private String landmark_two_currentaddr;
	private Integer totalno_currentaddr;
	private String isaddr_same;
	private String resident_india;
	private String homecountry;
	private String homecountryaddr;
	private String state_currentaddr;
	private String dist_currentaddr;
	private String subdist_currentaddr;	
	private String mobile;
	private String alt_mobile;
	private String email;
	private String alt_email;
	
	private Integer country_currentaddr;
	private Integer country_state_currentaddr;
	private Integer country_state_city_currentaddr;
	
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
	private Boolean is_active;
	
	
	
}