package nic.userdetails.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import org.nic.rb.validator.Validations;
import nic.userdetails.model.AddressModel;
import nic.userdetails.model.AwardsModel;
import nic.userdetails.model.EducationalDetailsModel;
import nic.userdetails.model.PersonalModel;
import nic.userdetails.model.WorkExperienceModel;


@Component
public class UserDetailsValidator implements Validator {
	
	
	Validations validator = null;
	
//	static Validations val = new Validations();

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		validator = new Validations();
		String clazz = target.getClass().getSimpleName();
		switch (clazz) {
		case "PersonalModel":
			PersonalModel personal_model = (PersonalModel) target;
			
		
			if (personal_model.getCand_name() != null && !personal_model.getCand_name().isEmpty()) {
				if (!validator.isStringSpaces((personal_model.getCand_name().toString())))
					errors.rejectValue("cand_name", "error.cand_name", "candidate full name is invalid.");
			} else
				errors.rejectValue("cand_name", "error.cand_name", "candidate full name is required.");
			
			if (personal_model.getFather_name() != null && !personal_model.getFather_name().isEmpty()) {
				if (!validator.isStringSpaces((personal_model.getFather_name().toString())))
					errors.rejectValue("father_name", "error.father_name", "father's name is invalid.");
			} else
				errors.rejectValue("father_name", "error.father_name", "father's name is required.");
			
			if (personal_model.getGender() != null && !personal_model.getGender().isEmpty()) {
				if (!validator.isString((personal_model.getGender().toString())))
					errors.rejectValue("gender", "error.gender", "gender is invalid.");
			} else
				errors.rejectValue("gender", "error.gender", "gender is required.");
			
			if (personal_model.getDob() != null && !personal_model.getDob().isEmpty()) {
				if (!validator.isValidDate((personal_model.getDob().toString())))
					errors.rejectValue("dob", "error.dob", "date of birth is invalid.");
			} else
				errors.rejectValue("dob", "error.dob", "date of birth is required.");
			
			if (personal_model.getAge() != null && !personal_model.getAge().isEmpty()) {
				if (!validator.isAlphanumeric((personal_model.getAge().toString())))
					errors.rejectValue("age", "error.age", "age is invalid.");
			} else
				errors.rejectValue("age", "error.age", "age is required.");
			
			
			if (personal_model.getNationality() != null && !personal_model.getNationality().isEmpty()) {
				if (!validator.isString((personal_model.getNationality().toString())))
					errors.rejectValue("nationality", "error.nationality", "nationality is invalid.");
			} else
				errors.rejectValue("nationality", "error.nationality", "nationality is required.");
			
			
			
			if (personal_model.getLang_english() != null && !personal_model.getLang_english().isEmpty()) {
				if (!validator.isAlphanumeric((personal_model.getLang_english().toString())))
					errors.rejectValue("lang_english", "error.lang_english", "english language read/write/speak is invalid.");
			}
			
			if (personal_model.getLang_hindi() != null && !personal_model.getLang_hindi().isEmpty()) {
				if (!validator.isAlphanumeric((personal_model.getLang_hindi().toString())))
					errors.rejectValue("lang_hindi", "error.lang_hindi", "hindi language read/write/speak is invalid.");
			}
			
			if (personal_model.getLang_other_one() != null && !personal_model.getLang_other_one().isEmpty()) {
				if (!validator.isString((personal_model.getLang_other_one().toString())))
					errors.rejectValue("lang_other_one", "error.lang_other_one", "other 1 language is invalid.");
				
				if (personal_model.getLang_other1() != null && !personal_model.getLang_other1().isEmpty()) {
					if (!validator.isAlphanumeric((personal_model.getLang_other1().toString())))
						errors.rejectValue("lang_other1", "error.lang_other1", "other 1 language read/write/speak is invalid.");
				}
			}
			
			if (personal_model.getLang_other_two() != null && !personal_model.getLang_other_two().isEmpty()) {
				if (!validator.isString((personal_model.getLang_other_two().toString())))
					errors.rejectValue("lang_other_two", "error.lang_other_two", "other 2 language is invalid.");
				
				if (personal_model.getLang_other2() != null && !personal_model.getLang_other2().isEmpty()) {
					if (!validator.isAlphanumeric((personal_model.getLang_other2().toString())))
						errors.rejectValue("lang_other2", "error.lang_other2", "other 2 language read/write/speak is invalid.");
				}
			}
			break;
			
		case "AddressModel" :
			AddressModel address_model = (AddressModel) target;
		/*	if (address_model.getState_currentaddr() != null && !address_model.getState_currentaddr().isEmpty()) {
				if (!validator.isNum((address_model.getState_currentaddr().toString())))
					errors.rejectValue("state_currentaddr", "error.state_currentaddr", "State is invalid.");
			} else
				errors.rejectValue("state_currentaddr", "error.state_currentaddr", "State is required.");
			
			if (address_model.getDist_currentaddr() != null && !address_model.getDist_currentaddr().isEmpty()) {
				if (!validator.isNum((address_model.getDist_currentaddr().toString())))
					errors.rejectValue("dist_currentaddr", "error.dist_currentaddr", "District is invalid.");
			} else
				errors.rejectValue("dist_currentaddr", "error.dist_currentaddr", "District is required."); */
			
			if (address_model.getHouseno_currentaddr() != null && !address_model.getHouseno_currentaddr().isEmpty()) {
				if (!validator.isAlphanumeric((address_model.getHouseno_currentaddr().toString())))
					errors.rejectValue("houseno_currentaddr", "error.houseno_currentaddr", "House No is invalid.");
			} else
				errors.rejectValue("houseno_currentaddr", "error.houseno_currentaddr", "House No is required.");
			
			if (address_model.getStreet_currentaddr() != null && !address_model.getStreet_currentaddr().isEmpty()) {
				if (!validator.isAlphanumeric((address_model.getStreet_currentaddr().toString())))
					errors.rejectValue("street_currentaddr", "error.street_currentaddr", "Street/ Locality is invalid.");
			} else
				errors.rejectValue("street_currentaddr", "error.street_currentaddr", "Street/ Locality is required.");
			
			if (address_model.getVillage_currentaddr() != null && !address_model.getVillage_currentaddr().isEmpty()) {
				if (!validator.isAlphanumeric((address_model.getVillage_currentaddr().toString())))
					errors.rejectValue("village_currentaddr", "error.village_currentaddr", "Street/ Locality is invalid.");
			} else
				errors.rejectValue("village_currentaddr", "error.village_currentaddr", "Street/ Locality is required.");
			
			if (address_model.getPincode_currentaddr() != null && !address_model.getPincode_currentaddr().isEmpty()) {
				if (!validator.isNum((address_model.getPincode_currentaddr().toString())))
					errors.rejectValue("pincode_currentaddr", "error.pincode_currentaddr", "Pin Code is invalid.");
			} else
				errors.rejectValue("pincode_currentaddr", "error.pincode_currentaddr", "Pin Code is required.");
			
			if (address_model.getLandmark_one_currentaddr() != null && !address_model.getLandmark_one_currentaddr().isEmpty()) {
				if (!validator.isAlphanumeric((address_model.getLandmark_one_currentaddr().toString())))
					errors.rejectValue("landmark_one_currentaddr", "error.landmark_one_currentaddr", "Landmark is invalid.");
			}
			
			if (address_model.getMobile() != null && !address_model.getMobile().isEmpty()) {
				if (!validator.isMobile((address_model.getMobile().toString())))
					errors.rejectValue("mobile", "error.mobile", "Mobile Number is invalid.");
			} else
				errors.rejectValue("mobile", "error.mobile", "Mobile Number is required.");
			
			if (address_model.getAlt_mobile() != null && !address_model.getAlt_mobile().isEmpty()) {
				if (!validator.isMobile((address_model.getAlt_mobile().toString())))
					errors.rejectValue("alt_mobile", "error.alt_mobile", "Alternative Mobile Number is invalid.");
			}
			
			if (address_model.getEmail() != null && !address_model.getEmail().isEmpty()) {
				if (!validator.isEmail((address_model.getEmail().toString())))
					errors.rejectValue("email", "error.email", "Email address is invalid.");
			} else
				errors.rejectValue("email", "error.email", "Email address is required.");
			
			if (address_model.getAlt_email() != null && !address_model.getAlt_email().isEmpty()) {
				if (!validator.isEmail((address_model.getAlt_email().toString())))
					errors.rejectValue("alt_email", "error.alt_email", "Alternative  Email address is invalid.");
			}
			
			/*if (address_model.getIsaddr_same() != null && !address_model.getIsaddr_same().isEmpty()) {
				if (!validator.isName((address_model.getIsaddr_same().toString())))
					errors.rejectValue("isaddr_same", "error.isaddr_same", "Permanent address same as Current Address is invalid.");
				
				if(address_model.getIsaddr_same().equals("No")) {
					if (address_model.getState() != null && !address_model.getState().isEmpty()) {
						if (!validator.isNum((address_model.getState().toString())))
							errors.rejectValue("state", "error.state", "State is invalid.");
					} else
						errors.rejectValue("state", "error.state", "State is required.");
					
					if (address_model.getDist() != null && !address_model.getDist().isEmpty()) {
						if (!validator.isNum((address_model.getDist().toString())))
							errors.rejectValue("dist", "error.dist", "District is invalid.");
					} else
						errors.rejectValue("dist", "error.dist", "District is required.");
					
					if (address_model.getHouseno() != null && !address_model.getHouseno().isEmpty()) {
						if (!validator.isAlphanumeric((address_model.getHouseno().toString())))
							errors.rejectValue("houseno", "error.houseno", "House No is invalid.");
					} else
						errors.rejectValue("houseno", "error.houseno", "House No is required.");
					
					if (address_model.getStreet() != null && !address_model.getStreet().isEmpty()) {
						if (!validator.isAlphanumeric((address_model.getStreet().toString())))
							errors.rejectValue("street", "error.street", "Street/ Locality is invalid.");
					} else
						errors.rejectValue("street", "error.street", "Street/ Locality is required.");
					
					if (address_model.getVillage() != null && !address_model.getVillage().isEmpty()) {
						if (!validator.isAlphanumeric((address_model.getVillage().toString())))
							errors.rejectValue("village", "error.village", "Street/ Locality is invalid.");
					} else
						errors.rejectValue("village", "error.village", "Street/ Locality is required.");
					
					if (address_model.getPincode() != null && !address_model.getPincode().isEmpty()) {
						if (!validator.isNum((address_model.getPincode().toString())))
							errors.rejectValue("pincode", "error.pincode", "Pin Code is invalid.");
					} else
						errors.rejectValue("pincode", "error.pincode", "Pin Code is required.");
					
					if (address_model.getLandmark_one() != null && !address_model.getLandmark_one().isEmpty()) {
						if (!validator.isAlphanumeric((address_model.getLandmark_one().toString())))
							errors.rejectValue("landmark_one", "error.landmark_one", "Landmark is invalid.");
					}
				}
			} else
				errors.rejectValue("isaddr_same", "error.isaddr_same", "Permanent address same as Current Address is required.");
			*/
			break;
			case "EducationalDetailsModel":
				EducationalDetailsModel edu_model = (EducationalDetailsModel) target;
				if (edu_model.getDegree() != null) {
					if (!validator.isNum((edu_model.getDegree().toString())))
						errors.rejectValue("degree", "error.degree", "Degree/Diploma is invalid.");
				} else
					errors.rejectValue("degree", "error.degree", "Degree/Diploma is required.");
				
				if(edu_model.getDegree() != null && edu_model.getDegree() > 2) {
					if (edu_model.getSpecialization() != null && !edu_model.getSpecialization().isEmpty()) {
						if (!validator.isAlphanumeric((edu_model.getSpecialization().toString())))
							errors.rejectValue("specialization", "error.specialization", "Specialization is invalid.");
					} else 
						errors.rejectValue("specialization", "error.specialization", "Degree/Diploma is required.");
				}
				
				if(edu_model.getDegree() != null && edu_model.getDegree() == 14) {
					if (edu_model.getOther_degree() != null && !edu_model.getOther_degree().isEmpty()) {
						if (!validator.isAlphanumeric((edu_model.getSpecialization().toString())))
							errors.rejectValue("other_degree", "error.other_degree", "Other Degree/Diploma is invalid.");
					} else 
						errors.rejectValue("other_degree", "error.other_degree", "Other Degree/Diploma is required.");
				}
				
				if (edu_model.getBoard() != null && !edu_model.getBoard().isEmpty()) {
					if (!validator.isAlphanumeric((edu_model.getBoard().toString())))
						errors.rejectValue("board", "error.board", "Board/University is invalid.");
				} else
					errors.rejectValue("board", "error.board", "Board/University is required.");
				
				if (edu_model.getInstitute() != null && !edu_model.getInstitute().isEmpty()) {
					if (!validator.isAlphanumeric((edu_model.getInstitute().toString())))
						errors.rejectValue("institute", "error.institute", "School/Institute/College is invalid.");
				} else
					errors.rejectValue("institute", "error.institute", "School/Institute/College is required.");
				
				/*if (edu_model.getPercentage() != null && !edu_model.getPercentage().isEmpty()) {
					if (!validator.isAlphanumeric((edu_model.getPercentage().toString())))
						errors.rejectValue("percentage", "error.percentage", "Percentage/ CPI/ CGPA is invalid.");
				} else {
					if(edu_model.getDegree() != null && !edu_model.getDegree().equals(13))
						errors.rejectValue("percentage", "error.percentage", "Percentage/ CPI/ CGPA is required.");
				}
				
				if (edu_model.getOutof() != null) {
					if (!validator.isAlphanumeric((edu_model.getOutof().toString())))
						errors.rejectValue("outof", "error.outof", "Maximum Percentage/ CPI/ CGPA is invalid.");
				} else {
					if(edu_model.getDegree() != null && !edu_model.getDegree().equals(13))
						errors.rejectValue("outof", "error.outof", "Maximum Percentage/ CPI/ CGPA is required.");
				}
				*/
				if (edu_model.getYear_of_pass() != null) {
					if (!validator.isNum((edu_model.getYear_of_pass().toString())))
						errors.rejectValue("year_of_pass", "error.year_of_pass", "Year of Pass is invalid.");
				} else
					errors.rejectValue("year_of_pass", "error.year_of_pass", "Year of Pass is required.");
				
				/*if (edu_model.getDivision() != null && !edu_model.getDivision().isEmpty()) {
					if (!validator.isAlphanumeric((edu_model.getDivision().toString())))
						errors.rejectValue("division", "error.division", "Division is invalid.");
				} else {
					if(edu_model.getDegree() != null && !edu_model.getDegree().equals(13))
						errors.rejectValue("division", "error.division", "Division is required.");
				}
				*/
				
				if (edu_model.getEducational_doc() != null && !edu_model.getEducational_doc().isEmpty()) {
					/*
					 * commented on 11-09-2023
					 * String rtn_error = validator.validatePdfDoc(edu_model.getEducational_doc());
					if (rtn_error != null) {
						errors.rejectValue("educational_doc", "error.educational_doc", rtn_error);
					}else {
						try {
							if(!validator.checkMimeType(edu_model.getEducational_doc())) {
								errors.rejectValue("educational_doc", "error.educational_doc", "File content invalid");
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}*/
				} else {
					if(edu_model.getDegree() != null && !edu_model.getDegree().equals(13) && edu_model.getEducational_doc_id() != null && edu_model.getEducational_doc_id().isEmpty())
						errors.rejectValue("educational_doc", "error.educational_doc", "Educational Doc is required.");
				}
				
				/*if (edu_model.getPhd_date() != null && !edu_model.getPhd_date().isEmpty()) {
					if (!validator.isValidDate((edu_model.getPhd_date().toString())))
						errors.rejectValue("phd_date", "error.phd_date", "Date of Ph.D defense/ notification/ provisional degree is invalid.");
				} else {
					if(edu_model.getDegree() != null && edu_model.getDegree().equals(13))
						errors.rejectValue("phd_date", "error.phd_date", "Date of Ph.D defense/ notification/ provisional degree is required.");
				}
				
				if (edu_model.getPhd_title() != null && !edu_model.getPhd_title().isEmpty()) {
					if (!validator.isAlphanumeric((edu_model.getPhd_title().toString())))
						errors.rejectValue("phd_title", "error.phd_title", "Ph.D Thesis title degree is invalid.");
				} else {
					if(edu_model.getDegree() != null && edu_model.getDegree().equals(13))
						errors.rejectValue("phd_title", "error.phd_title", "Ph.D Thesis title degree is required.");
				}
				
				if (edu_model.getPhd_orig_degree_doc() != null && !edu_model.getPhd_orig_degree_doc().isEmpty()) {
					String rtn_error = validator.validatePdfDoc(edu_model.getPhd_orig_degree_doc());
					if (rtn_error != null) {
						errors.rejectValue("phd_orig_degree_doc", "error.phd_orig_degree_doc", rtn_error);
					}
				} else {
					if(edu_model.getDegree() != null && edu_model.getDegree().equals(13) && edu_model.getPhd_orig_degree_doc_id() != null && edu_model.getPhd_orig_degree_doc_id().isEmpty())
						errors.rejectValue("phd_orig_degree_doc", "error.phd_orig_degree_doc", "Ph.D Original Degree Doc is required.");
				}
				
				if (edu_model.getPhd_prov_degree_doc() != null && !edu_model.getPhd_prov_degree_doc().isEmpty()) {
					String rtn_error = validator.validatePdfDoc(edu_model.getPhd_prov_degree_doc());
					if (rtn_error != null) {
						errors.rejectValue("phd_prov_degree_doc", "error.phd_prov_degree_doc", rtn_error);
					}
				} else {
					if(edu_model.getDegree() != null && edu_model.getDegree().equals(13) && edu_model.getPhd_prov_degree_doc_id() != null && edu_model.getPhd_prov_degree_doc_id().isEmpty())
						errors.rejectValue("phd_prov_degree_doc", "error.phd_prov_degree_doc", "Ph.D Provisional Degree Doc is required.");
				}*/
				break;
			case "WorkExperienceModel":
				WorkExperienceModel workexp_model = (WorkExperienceModel) target;
				if(workexp_model.getRole_id() != null && workexp_model.getRole_id() == '2'){
					if (workexp_model.getWork_exp() != null && !workexp_model.getWork_exp().isEmpty()) {
						if (!validator.isAlphanumeric((workexp_model.getWork_exp().toString())))
							errors.rejectValue("work_exp", "error.work_exp", "Work Experience is invalid.");
					} else
						errors.rejectValue("work_exp", "error.work_exp", "Work Experience is required.");
				}
				if (workexp_model.getDesignation() != null && !workexp_model.getDesignation().isEmpty()) {
					if (!validator.isAlphanumeric((workexp_model.getDesignation().toString())))
						errors.rejectValue("designation", "error.designation", "Designation is invalid.");
				} else
					errors.rejectValue("designation", "error.designation", "Designation is required.");
				
				if (workexp_model.getOrganization() != null && !workexp_model.getOrganization().isEmpty()) {
					if (!validator.isAlphanumeric((workexp_model.getOrganization().toString())))
						errors.rejectValue("organization", "error.organization", "Organization is invalid.");
				} else
					errors.rejectValue("organization", "error.organization", "Organization is required.");
				
				if (workexp_model.getWork_nature() != null && !workexp_model.getWork_nature().isEmpty()) {
					if (!validator.isAlphanumeric((workexp_model.getWork_nature().toString())))
						errors.rejectValue("work_nature", "error.work_nature", "Nature of work is invalid.");
				} else
					errors.rejectValue("work_nature", "error.work_nature", "Nature of work is required.");
				
				if (workexp_model.getJoining_date() != null && !workexp_model.getJoining_date().isEmpty()) {
					if (!validator.isValidDate((workexp_model.getJoining_date().toString())))
						errors.rejectValue("joining_date", "error.joining_date", "Date of Joining is invalid.");
				} else
					errors.rejectValue("joining_date", "error.joining_date", "Date of Joining is required.");
				
				if (workexp_model.getLeaving_date() != null && !workexp_model.getLeaving_date().isEmpty()) {
					if (!validator.isValidDate((workexp_model.getLeaving_date().toString())))
						errors.rejectValue("leaving_date", "error.leaving_date", "Date of Leaving is invalid.");
				} else
					errors.rejectValue("leaving_date", "error.leaving_date", "Date of Leaving is required.");
				
				if (workexp_model.getTotal_exp() != null && !workexp_model.getTotal_exp().isEmpty()) {
					if (!validator.isAlphanumeric((workexp_model.getTotal_exp().toString())))
						errors.rejectValue("total_exp", "error.total_exp", "Total Duration is invalid.");
				} else
					errors.rejectValue("total_exp", "error.total_exp", "Total Duration is required.");
				
				/*if (workexp_model.getAnnual_package() != null) { //Remarks column
					if (!validator.isAlphanumeric((workexp_model.getAnnual_package().toString())))
						errors.rejectValue("annual_package", "error.annual_package", "Pay Scale/ Pay per Annum in INR is invalid.");
				} else
					errors.rejectValue("annual_package", "error.annual_package", "Pay Scale/ Pay per Annum in INR is required.");
				*/
				if (workexp_model.getExp_doc() != null && !workexp_model.getExp_doc().isEmpty()) {
					/*
					 *  commented on 11-09-2023
					 * String rtn_error = validator.validatePdfDoc(workexp_model.getExp_doc());
					if (rtn_error != null) {
						errors.rejectValue("exp_doc", "error.exp_doc", rtn_error);
					}else {
						try {
							if(!validator.checkMimeType(workexp_model.getExp_doc())) {
								errors.rejectValue("exp_doc", "error.exp_doc", "File content invalid");
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}*/
				} else {
					if(workexp_model.getExp_doc_id() == null || workexp_model.getExp_doc_id().isEmpty())
						errors.rejectValue("exp_doc", "error.exp_doc", "Experince Degree Doc is required.");
				}
				
				break;
			case "AwardsModel" :
				AwardsModel awardModel = (AwardsModel) target;
				if (awardModel.getAwards() != null && !awardModel.getAwards().isEmpty()) {
					if (!validator.isAlphanumeric((awardModel.getAwards().toString())))
						errors.rejectValue("awards", "error.awards", "awards is invalid.");
				} else
					errors.rejectValue("awards", "error.awards", "awards is required.");
				
				/*if (awardModel.getOrganization() != null && !awardModel.getOrganization().isEmpty()) {
					if (!validator.isAlphanumeric((awardModel.getOrganization().toString())))
						errors.rejectValue("organization", "error.organization", "organization is invalid.");
				} else
					errors.rejectValue("organization", "error.organization", "organization is required."); */
				
				if (awardModel.getRemarks() != null && !awardModel.getRemarks().isEmpty()) {
					if (!validator.isAlphanumeric((awardModel.getRemarks().toString())))
						errors.rejectValue("remarks", "error.remarks", "remarks is invalid.");
				} else
					errors.rejectValue("remarks", "error.remarks", "remarks is required.");
				
				if (awardModel.getAwards_doc() != null && !awardModel.getAwards_doc().isEmpty()) {
					/*
					 * 
					 *  commented on 11-09-2023
					 * String rtn_error = validator.validatePdfDoc(awardModel.getAwards_doc());
					if (rtn_error != null) {
						errors.rejectValue("awards_doc", "error.awards_doc", rtn_error);
					}else {
						try {
							if(!validator.checkMimeType(awardModel.getAwards_doc())) {
								errors.rejectValue("awards_doc", "error.awards_doc", "File content invalid");
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}*/
				} else {
					if(awardModel.getAwards_doc_id() == null || awardModel.getAwards_doc_id().isEmpty())
						errors.rejectValue("awards_doc", "error.awards_doc", "Award Doc is required.");
				}
				
				
				break;
		}
	}
}