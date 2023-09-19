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

@Entity
@Table(name = "educational_details")
public class EducationalDetailsEntity implements Serializable {
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "educational_details_id")
	@SequenceGenerator(name = "educational_details_id", sequenceName = "educational_details_id_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
	private Integer degree;
	private String specialization;
	private String board;
	private String institute;
	private String percentage;
	private Integer outof;
	private Integer year_of_pass;
	private String division;
	private String educational_doc_id;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd-MM-yyyy")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
	private Date phd_date;
	
	private String phd_title;
	private String phd_orig_degree_doc_id;
	private String phd_prov_degree_doc_id;
	private String other_degree;

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
	
	private Integer student_id;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDegree() {
		return degree;
	}
	public void setDegree(Integer degree) {
		this.degree = degree;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getBoard() {
		return board;
	}
	public void setBoard(String board) {
		this.board = board;
	}
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	public Integer getOutof() {
		return outof;
	}
	public void setOutof(Integer outof) {
		this.outof = outof;
	}
	public Integer getYear_of_pass() {
		return year_of_pass;
	}
	public void setYear_of_pass(Integer year_of_pass) {
		this.year_of_pass = year_of_pass;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getCreated_by() {
		return created_by;
	}
	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}
	public Date getCreated_date() {
		return created_date;
	}
	public void setCreated_date(Date created_date) {
		this.created_date = created_date;
	}
	public String getIpaddress() {
		return ipaddress;
	}
	public void setIpaddress(String ipaddress) {
		this.ipaddress = ipaddress;
	}
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getModified_by() {
		return modified_by;
	}
	public void setModified_by(String modified_by) {
		this.modified_by = modified_by;
	}
	public Date getModified_date() {
		return modified_date;
	}
	public void setModified_date(Date modified_date) {
		this.modified_date = modified_date;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public boolean isIs_active() {
		return is_active;
	}
	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}
	public String getEducational_doc_id() {
		return educational_doc_id;
	}
	public void setEducational_doc_id(String educational_doc_id) {
		this.educational_doc_id = educational_doc_id;
	}
	public Date getPhd_date() {
		return phd_date;
	}
	public void setPhd_date(Date phd_date) {
		this.phd_date = phd_date;
	}
	public String getPhd_title() {
		return phd_title;
	}
	public void setPhd_title(String phd_title) {
		this.phd_title = phd_title;
	}
	public String getPhd_orig_degree_doc_id() {
		return phd_orig_degree_doc_id;
	}
	public void setPhd_orig_degree_doc_id(String phd_orig_degree_doc_id) {
		this.phd_orig_degree_doc_id = phd_orig_degree_doc_id;
	}
	public String getPhd_prov_degree_doc_id() {
		return phd_prov_degree_doc_id;
	}
	public void setPhd_prov_degree_doc_id(String phd_prov_degree_doc_id) {
		this.phd_prov_degree_doc_id = phd_prov_degree_doc_id;
	}
	public String getOther_degree() {
		return other_degree;
	}
	public void setOther_degree(String other_degree) {
		this.other_degree = other_degree;
	}
	public Integer getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}
	
}
