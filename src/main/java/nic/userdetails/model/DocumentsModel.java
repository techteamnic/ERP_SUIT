package nic.userdetails.model;

import org.springframework.web.multipart.MultipartFile;

public class DocumentsModel {

	private Integer id;
	
	private MultipartFile photo;
	private MultipartFile cv;
	private MultipartFile research_stmt;
	private MultipartFile teaching_stmt;
	private MultipartFile significant_papers;
	private MultipartFile transcripts;
	private MultipartFile category;
	private MultipartFile signature;

	private String photo_id;
	private String cv_id;
	private String research_stmt_id;
	private String teaching_stmt_id;
	private String significant_papers_id;
	private String joining_time;
	private String signature_id;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	public MultipartFile getCv() {
		return cv;
	}
	public void setCv(MultipartFile cv) {
		this.cv = cv;
	}
	public MultipartFile getResearch_stmt() {
		return research_stmt;
	}
	public void setResearch_stmt(MultipartFile research_stmt) {
		this.research_stmt = research_stmt;
	}
	public MultipartFile getTeaching_stmt() {
		return teaching_stmt;
	}
	public void setTeaching_stmt(MultipartFile teaching_stmt) {
		this.teaching_stmt = teaching_stmt;
	}
	public MultipartFile getSignificant_papers() {
		return significant_papers;
	}
	public void setSignificant_papers(MultipartFile significant_papers) {
		this.significant_papers = significant_papers;
	}
	public MultipartFile getTranscripts() {
		return transcripts;
	}
	public void setTranscripts(MultipartFile transcripts) {
		this.transcripts = transcripts;
	}
	public MultipartFile getCategory() {
		return category;
	}
	public void setCategory(MultipartFile category) {
		this.category = category;
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
	public MultipartFile getSignature() {
		return signature;
	}
	public void setSignature(MultipartFile signature) {
		this.signature = signature;
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
