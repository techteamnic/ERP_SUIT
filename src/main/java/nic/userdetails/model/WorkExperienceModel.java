package nic.userdetails.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

public class WorkExperienceModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7639619087126022689L;
	private Integer id;
	private String designation;
	private String organization;
	private String work_nature;
	private String joining_date;
	private String leaving_date;
	private String total_exp;
	private String annual_package;
	private String work_exp;
	private String designation_db;
	private String organization_db;
	private String work_nature_db;
	private String joining_date_db;
	private String leaving_date_db;
	private String total_exp_db;
	private String annual_package_db;
	private String work_exp_db;
	private MultipartFile exp_doc;
	private String exp_doc_id;
	private String exp_doc_id_db;
	private Integer role_id;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDesignation_db() {
		return designation_db;
	}
	public void setDesignation_db(String designation_db) {
		this.designation_db = designation_db;
	}
	public String getOrganization_db() {
		return organization_db;
	}
	public void setOrganization_db(String organization_db) {
		this.organization_db = organization_db;
	}
	public String getWork_nature_db() {
		return work_nature_db;
	}
	public void setWork_nature_db(String work_nature_db) {
		this.work_nature_db = work_nature_db;
	}
	public String getJoining_date_db() {
		return joining_date_db;
	}
	public void setJoining_date_db(String joining_date_db) {
		this.joining_date_db = joining_date_db;
	}
	public String getLeaving_date_db() {
		return leaving_date_db;
	}
	public void setLeaving_date_db(String leaving_date_db) {
		this.leaving_date_db = leaving_date_db;
	}
	public String getAnnual_package_db() {
		return annual_package_db;
	}
	public void setAnnual_package_db(String annual_package_db) {
		this.annual_package_db = annual_package_db;
	}
	public String getWork_exp_db() {
		return work_exp_db;
	}
	public void setWork_exp_db(String work_exp_db) {
		this.work_exp_db = work_exp_db;
	}
	public String getExp_doc_id_db() {
		return exp_doc_id_db;
	}
	public void setExp_doc_id_db(String exp_doc_id_db) {
		this.exp_doc_id_db = exp_doc_id_db;
	}
	public String getTotal_exp_db() {
		return total_exp_db;
	}
	public void setTotal_exp_db(String total_exp_db) {
		this.total_exp_db = total_exp_db;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getWork_nature() {
		return work_nature;
	}
	public void setWork_nature(String work_nature) {
		this.work_nature = work_nature;
	}
	public String getJoining_date() {
		return joining_date;
	}
	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}
	public String getLeaving_date() {
		return leaving_date;
	}
	public void setLeaving_date(String leaving_date) {
		this.leaving_date = leaving_date;
	}
	public String getTotal_exp() {
		return total_exp;
	}
	public void setTotal_exp(String total_exp) {
		this.total_exp = total_exp;
	}
	public String getAnnual_package() {
		return annual_package;
	}
	public void setAnnual_package(String annual_package) {
		this.annual_package = annual_package;
	}
	public String getWork_exp() {
		return work_exp;
	}
	public void setWork_exp(String work_exp) {
		this.work_exp = work_exp;
	}
	public MultipartFile getExp_doc() {
		return exp_doc;
	}
	public void setExp_doc(MultipartFile exp_doc) {
		this.exp_doc = exp_doc;
	}
	public String getExp_doc_id() {
		return exp_doc_id;
	}
	public void setExp_doc_id(String exp_doc_id) {
		this.exp_doc_id = exp_doc_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	
}
