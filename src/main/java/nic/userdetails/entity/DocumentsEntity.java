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
@Table(name = "documents")
public class DocumentsEntity implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "documents_id")
	@SequenceGenerator(name = "documents_id", sequenceName = "documents_id_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
	private String photo_id;
	private String cv_id;
	private String research_stmt_id;
	private String teaching_stmt_id;
	private String significant_papers_id;
	private String joining_time;
	private String signature_id;
	
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
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPhoto_id() {
		return photo_id;
	}
	public void setPhoto_id(String photo_id) {
		this.photo_id = photo_id;
	}
	public String getCv_id() {
		return cv_id;
	}
	public void setCv_id(String cv_id) {
		this.cv_id = cv_id;
	}
	public String getResearch_stmt_id() {
		return research_stmt_id;
	}
	public void setResearch_stmt_id(String research_stmt_id) {
		this.research_stmt_id = research_stmt_id;
	}
	public String getTeaching_stmt_id() {
		return teaching_stmt_id;
	}
	public void setTeaching_stmt_id(String teaching_stmt_id) {
		this.teaching_stmt_id = teaching_stmt_id;
	}
	public String getSignificant_papers_id() {
		return significant_papers_id;
	}
	public void setSignificant_papers_id(String significant_papers_id) {
		this.significant_papers_id = significant_papers_id;
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
	public String getJoining_time() {
		return joining_time;
	}
	public void setJoining_time(String joining_time) {
		this.joining_time = joining_time;
	}
	public String getSignature_id() {
		return signature_id;
	}
	public void setSignature_id(String signature_id) {
		this.signature_id = signature_id;
	}
	
	
}
