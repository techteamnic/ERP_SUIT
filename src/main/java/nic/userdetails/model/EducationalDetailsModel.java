package nic.userdetails.model;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class EducationalDetailsModel {
	
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
	private MultipartFile educational_doc;
	private Integer degree_db;
	private String specialization_db;
	private String board_db;
	private String institute_db;
	private String percentage_db;
	private String outof_db;
	private Integer year_of_pass_db;
	private String division_db;
	private String degree_name;
	private String educational_doc_id_db;
	
	private String phd_date;
	private String phd_date_db;
	private String phd_title;
	private String phd_title_db;
	private MultipartFile phd_orig_degree_doc;
	private String phd_orig_degree_doc_id;
	private String phd_orig_degree_doc_id_db;
	private MultipartFile phd_prov_degree_doc;
	private String phd_prov_degree_doc_id;
	private String phd_prov_degree_doc_id_db;
	private String other_degree;
	private String other_degree_db;
	
	private Integer student_id;
	private String student_name;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDegree_db() {
		return degree_db;
	}
	public void setDegree_db(Integer degree_db) {
		this.degree_db = degree_db;
	}
	public String getSpecialization_db() {
		return specialization_db;
	}
	public void setSpecialization_db(String specialization_db) {
		this.specialization_db = specialization_db;
	}
	public String getBoard_db() {
		return board_db;
	}
	public void setBoard_db(String board_db) {
		this.board_db = board_db;
	}
	public String getInstitute_db() {
		return institute_db;
	}
	public void setInstitute_db(String institute_db) {
		this.institute_db = institute_db;
	}
	public String getPercentage_db() {
		return percentage_db;
	}
	public void setPercentage_db(String percentage_db) {
		this.percentage_db = percentage_db;
	}
	public String getOutof_db() {
		return outof_db;
	}
	public void setOutof_db(String outof_db) {
		this.outof_db = outof_db;
	}
	public Integer getYear_of_pass_db() {
		return year_of_pass_db;
	}
	public void setYear_of_pass_db(Integer year_of_pass_db) {
		this.year_of_pass_db = year_of_pass_db;
	}
	public String getDivision_db() {
		return division_db;
	}
	public void setDivision_db(String division_db) {
		this.division_db = division_db;
	}
	public String getDegree_name() {
		return degree_name;
	}
	public void setDegree_name(String degree_name) {
		this.degree_name = degree_name;
	}
	public String getEducational_doc_id_db() {
		return educational_doc_id_db;
	}
	public void setEducational_doc_id_db(String educational_doc_id_db) {
		this.educational_doc_id_db = educational_doc_id_db;
	}
	public String getPhd_date_db() {
		return phd_date_db;
	}
	public void setPhd_date_db(String phd_date_db) {
		this.phd_date_db = phd_date_db;
	}
	public String getPhd_title_db() {
		return phd_title_db;
	}
	public void setPhd_title_db(String phd_title_db) {
		this.phd_title_db = phd_title_db;
	}
	public String getPhd_orig_degree_doc_id_db() {
		return phd_orig_degree_doc_id_db;
	}
	public void setPhd_orig_degree_doc_id_db(String phd_orig_degree_doc_id_db) {
		this.phd_orig_degree_doc_id_db = phd_orig_degree_doc_id_db;
	}
	public String getPhd_prov_degree_doc_id_db() {
		return phd_prov_degree_doc_id_db;
	}
	public void setPhd_prov_degree_doc_id_db(String phd_prov_degree_doc_id_db) {
		this.phd_prov_degree_doc_id_db = phd_prov_degree_doc_id_db;
	}
	public String getOther_degree_db() {
		return other_degree_db;
	}
	public void setOther_degree_db(String other_degree_db) {
		this.other_degree_db = other_degree_db;
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
	public String getEducational_doc_id() {
		return educational_doc_id;
	}
	public void setEducational_doc_id(String educational_doc_id) {
		this.educational_doc_id = educational_doc_id;
	}
	public MultipartFile getEducational_doc() {
		return educational_doc;
	}
	public void setEducational_doc(MultipartFile educational_doc) {
		this.educational_doc = educational_doc;
	}
	public String getPhd_date() {
		return phd_date;
	}
	public void setPhd_date(String phd_date) {
		this.phd_date = phd_date;
	}
	public String getPhd_title() {
		return phd_title;
	}
	public void setPhd_title(String phd_title) {
		this.phd_title = phd_title;
	}
	public MultipartFile getPhd_orig_degree_doc() {
		return phd_orig_degree_doc;
	}
	public void setPhd_orig_degree_doc(MultipartFile phd_orig_degree_doc) {
		this.phd_orig_degree_doc = phd_orig_degree_doc;
	}
	public String getPhd_orig_degree_doc_id() {
		return phd_orig_degree_doc_id;
	}
	public void setPhd_orig_degree_doc_id(String phd_orig_degree_doc_id) {
		this.phd_orig_degree_doc_id = phd_orig_degree_doc_id;
	}
	public MultipartFile getPhd_prov_degree_doc() {
		return phd_prov_degree_doc;
	}
	public void setPhd_prov_degree_doc(MultipartFile phd_prov_degree_doc) {
		this.phd_prov_degree_doc = phd_prov_degree_doc;
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
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	
}
