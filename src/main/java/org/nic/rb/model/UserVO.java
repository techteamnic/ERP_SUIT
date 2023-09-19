package org.nic.rb.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class UserVO implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private Integer inst_id;
	private String user_name;
	private String password;
	private String full_name;
	private boolean is_active;
	private String user_description;
	private Integer role_id;
	private String real_password;
	private boolean isinitpasswordreset;
	private String state;
	private String email;
	private String mobile;
	private String ipaddress;
	private Date ts;
	private Integer organization;
	private String district;
	private String block;
	private String village;
	private String street;
	private String locality;
	private String pincode;
	private Integer desgcode;
	private Integer levelno;
	private String qst1;
	private String hintqst1;
	private String qst2;
	private String hintqst2;
	private String pwdqst1;
	private String hintpwd1;
	private String pwdqst2;
	private String hintpwd2;
	private Integer deptcode;
	private Integer catgid;
	private Integer nodalorgcode;
	private String house_no;
	private String sub_dist;
	
	private String label;
	private Integer code;
	private String name;
	private String user_address;
	
	private String oldpass;
	private String currpass;
	private String confirmpass;
	private String otpnum;
	
	//for session based on login
	private String distcode;
	private String mandalcode;
	
	private String dist_name;
	private String mandal_name;
	private String reqStatus;
	
	private Boolean isSelected;
	private Integer selected_sup[];
	
	private String reset_key;
	private Integer orgcode;
	private Integer category_id;
	private String category;
	private String user_status;
	
	public String getReset_key() {
		return reset_key;
	}
	public void setReset_key(String reset_key) {
		this.reset_key = reset_key;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getInst_id() {
		return inst_id;
	}
	public void setInst_id(Integer inst_id) {
		this.inst_id = inst_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public boolean getIs_active() {
		return is_active;
	}
	public void setIs_active(boolean is_active) {
		this.is_active = is_active;
	}
	public String getUser_description() {
		return user_description;
	}
	public void setUser_description(String user_description) {
		this.user_description = user_description;
	}
	
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getReal_password() {
		return real_password;
	}
	public void setReal_password(String real_password) {
		this.real_password = real_password;
	}
	public boolean isIsinitpasswordreset() {
		return isinitpasswordreset;
	}
	public void setIsinitpasswordreset(boolean isinitpasswordreset) {
		this.isinitpasswordreset = isinitpasswordreset;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
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
	public Integer getOrganization() {
		return organization;
	}
	public void setOrganization(Integer organization) {
		this.organization = organization;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getBlock() {
		return block;
	}
	public void setBlock(String block) {
		this.block = block;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public Integer getDesgcode() {
		return desgcode;
	}
	public void setDesgcode(Integer desgcode) {
		this.desgcode = desgcode;
	}
	public Integer getLevelno() {
		return levelno;
	}
	public void setLevelno(Integer levelno) {
		this.levelno = levelno;
	}
	public String getQst1() {
		return qst1;
	}
	public void setQst1(String qst1) {
		this.qst1 = qst1;
	}
	public String getHintqst1() {
		return hintqst1;
	}
	public void setHintqst1(String hintqst1) {
		this.hintqst1 = hintqst1;
	}
	public String getQst2() {
		return qst2;
	}
	public void setQst2(String qst2) {
		this.qst2 = qst2;
	}
	public String getHintqst2() {
		return hintqst2;
	}
	public void setHintqst2(String hintqst2) {
		this.hintqst2 = hintqst2;
	}
	public String getPwdqst1() {
		return pwdqst1;
	}
	public void setPwdqst1(String pwdqst1) {
		this.pwdqst1 = pwdqst1;
	}
	public String getHintpwd1() {
		return hintpwd1;
	}
	public void setHintpwd1(String hintpwd1) {
		this.hintpwd1 = hintpwd1;
	}
	public String getPwdqst2() {
		return pwdqst2;
	}
	public void setPwdqst2(String pwdqst2) {
		this.pwdqst2 = pwdqst2;
	}
	public String getHintpwd2() {
		return hintpwd2;
	}
	public void setHintpwd2(String hintpwd2) {
		this.hintpwd2 = hintpwd2;
	}
	public Integer getDeptcode() {
		return deptcode;
	}
	public void setDeptcode(Integer deptcode) {
		this.deptcode = deptcode;
	}
	public Integer getCatgid() {
		return catgid;
	}
	public void setCatgid(Integer catgid) {
		this.catgid = catgid;
	}
	public Integer getNodalorgcode() {
		return nodalorgcode;
	}
	public void setNodalorgcode(Integer nodalorgcode) {
		this.nodalorgcode = nodalorgcode;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public String getOldpass() {
		return oldpass;
	}
	public void setOldpass(String oldpass) {
		this.oldpass = oldpass;
	}
	public String getCurrpass() {
		return currpass;
	}
	public void setCurrpass(String currpass) {
		this.currpass = currpass;
	}
	public String getConfirmpass() {
		return confirmpass;
	}
	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}
	public String getHouse_no() {
		return house_no;
	}
	public void setHouse_no(String house_no) {
		this.house_no = house_no;
	}
	public String getSub_dist() {
		return sub_dist;
	}
	public void setSub_dist(String sub_dist) {
		this.sub_dist = sub_dist;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getOtpnum() {
		return otpnum;
	}
	public void setOtpnum(String otpnum) {
		this.otpnum = otpnum;
	}
	public String getDistcode() {
		return distcode;
	}
	public void setDistcode(String distcode) {
		this.distcode = distcode;
	}
	public String getMandalcode() {
		return mandalcode;
	}
	public void setMandalcode(String mandalcode) {
		this.mandalcode = mandalcode;
	}
	public String getDist_name() {
		return dist_name;
	}
	public void setDist_name(String dist_name) {
		this.dist_name = dist_name;
	}
	public String getReqStatus() {
		return reqStatus;
	}
	public void setReqStatus(String reqStatus) {
		this.reqStatus = reqStatus;
	}
	public String getMandal_name() {
		return mandal_name;
	}
	public void setMandal_name(String mandal_name) {
		this.mandal_name = mandal_name;
	}
	public Boolean getIsSelected() {
		return isSelected;
	}
	public void setIsSelected(Boolean isSelected) {
		this.isSelected = isSelected;
	}
	public Integer[] getSelected_sup() {
		return selected_sup;
	}
	public void setSelected_sup(Integer[] selected_sup) {
		this.selected_sup = selected_sup;
	}
	public Integer getOrgcode() {
		return orgcode;
	}
	public void setOrgcode(Integer orgcode) {
		this.orgcode = orgcode;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public String getUser_status() {
		return user_status;
	}
	public void setUser_status(String user_status) {
		this.user_status = user_status;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
}
