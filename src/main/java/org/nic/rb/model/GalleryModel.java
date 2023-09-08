package org.nic.rb.model;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class GalleryModel implements Serializable{
	
	private static final long serialVersionUID = 3408450891234593757L;
	
	private String gallery_title;
	private List<MultipartFile> gallery_imgs;
	private String doc_id;
	private Map<String, String> base64Imgs;
	
	
	public String getGallery_title() {
		return gallery_title;
	}
	public void setGallery_title(String gallery_title) {
		this.gallery_title = gallery_title;
	}
	public List<MultipartFile> getGallery_imgs() {
		return gallery_imgs;
	}
	public void setGallery_imgs(List<MultipartFile> gallery_imgs) {
		this.gallery_imgs = gallery_imgs;
	}
	public String getDoc_id() {
		return doc_id;
	}
	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}
	public Map<String, String> getBase64Imgs() {
		return base64Imgs;
	}
	public void setBase64Imgs(Map<String, String> base64Imgs) {
		this.base64Imgs = base64Imgs;
	}
}
