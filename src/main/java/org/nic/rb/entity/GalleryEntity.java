package org.nic.rb.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.Transient;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "gallery")
public class GalleryEntity implements Serializable{
	
	private static final long serialVersionUID = 5273118597583646508L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gallery_id")
	@SequenceGenerator(name = "gallery_id", sequenceName = "gallery_seq", allocationSize = 1)
	@Column(name = "gallery_id", nullable = false, unique = true)
	private Integer gallery_id;
	@Column(length=2048)
	private String title;
	@Column(length=36)
	private String doc_id;
	@Column(length=80)
	private String created_by;
	@Temporal(TemporalType.DATE)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy", timezone = "IST")
    private Date created_date;
    @Temporal(TemporalType.TIMESTAMP)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy'T'HH:mm:ss'Z'", timezone = "IST")
    private Date ts;
    @Column(length=20)
    private String ip;
    
    private transient List<String> base64Imgs;
    
	public Integer getGallery_id() {
		return gallery_id;
	}
	public void setGallery_id(Integer gallery_id) {
		this.gallery_id = gallery_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
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
	public Date getTs() {
		return ts;
	}
	public void setTs(Date ts) {
		this.ts = ts;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public List<String> getBase64Imgs() {
		return base64Imgs;
	}
	public void setBase64Imgs(List<String> base64Imgs) {
		this.base64Imgs = base64Imgs;
	}
}
