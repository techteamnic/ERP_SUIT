package nic.userdetails.model;

import java.io.Serializable;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class ReportVo implements Serializable{

	private AddressModel address;
	private List<EducationalDetailsModel> education;
	private List<WorkExperienceModel> experience;
	private List<PersonalModel> personaldetails;
	private List<AwardsModel> awards;
	private List<AwardsModel> achivements;
	
	private Integer hospital_regs;
	private Integer lab_regs;
	private Integer coll_center_regs;
	private Integer doc_regs;
	
}
