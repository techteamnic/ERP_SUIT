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
@Table(name = "addrdetails")
public class AddressEntity implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "addrdetails_id")
	@SequenceGenerator(name = "addrdetails_id", sequenceName = "addrdetails_id_seq", allocationSize = 1)
	@Column(name = "id", nullable = false, unique = true)
	private Integer id;
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
	private boolean is_active;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getPersonaldetailsid() {
		return personaldetailsid;
	}
	public void setPersonaldetailsid(Integer personaldetailsid) {
		this.personaldetailsid = personaldetailsid;
	}
	public String getHouseno() {
		return houseno;
	}
	public void setHouseno(String houseno) {
		this.houseno = houseno;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}
	public String getSubdist() {
		return subdist;
	}
	public void setSubdist(String subdist) {
		this.subdist = subdist;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getLandmark_one() {
		return landmark_one;
	}
	public void setLandmark_one(String landmark_one) {
		this.landmark_one = landmark_one;
	}
	public String getLandmark_two() {
		return landmark_two;
	}
	public void setLandmark_two(String landmark_two) {
		this.landmark_two = landmark_two;
	}
	public Integer getTotalno() {
		return totalno;
	}
	public void setTotalno(Integer totalno) {
		this.totalno = totalno;
	}
	public String getAdd_photo_1_doc_id() {
		return add_photo_1_doc_id;
	}
	public void setAdd_photo_1_doc_id(String add_photo_1_doc_id) {
		this.add_photo_1_doc_id = add_photo_1_doc_id;
	}
	public String getAdd_photo_2_doc_id() {
		return add_photo_2_doc_id;
	}
	public void setAdd_photo_2_doc_id(String add_photo_2_doc_id) {
		this.add_photo_2_doc_id = add_photo_2_doc_id;
	}
	public String getHouseno_currentaddr() {
		return houseno_currentaddr;
	}
	public void setHouseno_currentaddr(String houseno_currentaddr) {
		this.houseno_currentaddr = houseno_currentaddr;
	}
	public String getStreet_currentaddr() {
		return street_currentaddr;
	}
	public void setStreet_currentaddr(String street_currentaddr) {
		this.street_currentaddr = street_currentaddr;
	}
	public String getLocality_currentaddr() {
		return locality_currentaddr;
	}
	public void setLocality_currentaddr(String locality_currentaddr) {
		this.locality_currentaddr = locality_currentaddr;
	}
	public String getVillage_currentaddr() {
		return village_currentaddr;
	}
	public void setVillage_currentaddr(String village_currentaddr) {
		this.village_currentaddr = village_currentaddr;
	}
	public String getPincode_currentaddr() {
		return pincode_currentaddr;
	}
	public void setPincode_currentaddr(String pincode_currentaddr) {
		this.pincode_currentaddr = pincode_currentaddr;
	}
	public String getLandmark_one_currentaddr() {
		return landmark_one_currentaddr;
	}
	public void setLandmark_one_currentaddr(String landmark_one_currentaddr) {
		this.landmark_one_currentaddr = landmark_one_currentaddr;
	}
	public String getLandmark_two_currentaddr() {
		return landmark_two_currentaddr;
	}
	public void setLandmark_two_currentaddr(String landmark_two_currentaddr) {
		this.landmark_two_currentaddr = landmark_two_currentaddr;
	}
	public Integer getTotalno_currentaddr() {
		return totalno_currentaddr;
	}
	public void setTotalno_currentaddr(Integer totalno_currentaddr) {
		this.totalno_currentaddr = totalno_currentaddr;
	}
	public String getIsaddr_same() {
		return isaddr_same;
	}
	public void setIsaddr_same(String isaddr_same) {
		this.isaddr_same = isaddr_same;
	}
	public String getResident_india() {
		return resident_india;
	}
	public void setResident_india(String resident_india) {
		this.resident_india = resident_india;
	}
	public String getHomecountry() {
		return homecountry;
	}
	public void setHomecountry(String homecountry) {
		this.homecountry = homecountry;
	}
	public String getHomecountryaddr() {
		return homecountryaddr;
	}
	public void setHomecountryaddr(String homecountryaddr) {
		this.homecountryaddr = homecountryaddr;
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
	public String getState_currentaddr() {
		return state_currentaddr;
	}
	public void setState_currentaddr(String state_currentaddr) {
		this.state_currentaddr = state_currentaddr;
	}
	public String getDist_currentaddr() {
		return dist_currentaddr;
	}
	public void setDist_currentaddr(String dist_currentaddr) {
		this.dist_currentaddr = dist_currentaddr;
	}
	public String getSubdist_currentaddr() {
		return subdist_currentaddr;
	}
	public void setSubdist_currentaddr(String subdist_currentaddr) {
		this.subdist_currentaddr = subdist_currentaddr;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAlt_mobile() {
		return alt_mobile;
	}
	public void setAlt_mobile(String alt_mobile) {
		this.alt_mobile = alt_mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAlt_email() {
		return alt_email;
	}
	public void setAlt_email(String alt_email) {
		this.alt_email = alt_email;
	}
	public Integer getCountry_currentaddr() {
		return country_currentaddr;
	}
	public void setCountry_currentaddr(Integer country_currentaddr) {
		this.country_currentaddr = country_currentaddr;
	}
	public Integer getCountry_state_currentaddr() {
		return country_state_currentaddr;
	}
	public void setCountry_state_currentaddr(Integer country_state_currentaddr) {
		this.country_state_currentaddr = country_state_currentaddr;
	}
	public Integer getCountry_state_city_currentaddr() {
		return country_state_city_currentaddr;
	}
	public void setCountry_state_city_currentaddr(Integer country_state_city_currentaddr) {
		this.country_state_city_currentaddr = country_state_city_currentaddr;
	}
	
	
}