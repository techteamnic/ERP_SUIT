package nic.userdetails.model;

import org.springframework.web.multipart.MultipartFile;

public class AwardsModel {
	
	private Integer id;
	private String awards;
	private String organization;
	private String remarks;
	private String awards_db;
	private String organization_db;
	private String remarks_db;
	private MultipartFile awards_doc;
	private String awards_doc_id_db;
	private String awards_doc_id;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAwards_db() {
		return awards_db;
	}
	public void setAwards_db(String awards_db) {
		this.awards_db = awards_db;
	}
	public String getOrganization_db() {
		return organization_db;
	}
	public void setOrganization_db(String organization_db) {
		this.organization_db = organization_db;
	}
	public String getRemarks_db() {
		return remarks_db;
	}
	public void setRemarks_db(String remarks_db) {
		this.remarks_db = remarks_db;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public String getAwards_doc_id_db() {
		return awards_doc_id_db;
	}
	public void setAwards_doc_id_db(String awards_doc_id_db) {
		this.awards_doc_id_db = awards_doc_id_db;
	}
	public MultipartFile getAwards_doc() {
		return awards_doc;
	}
	public void setAwards_doc(MultipartFile awards_doc) {
		this.awards_doc = awards_doc;
	}
	public String getAwards_doc_id() {
		return awards_doc_id;
	}
	public void setAwards_doc_id(String awards_doc_id) {
		this.awards_doc_id = awards_doc_id;
	}

}
