package org.nic.rb.validator;

import org.nic.rb.dao.PinCodeDao;
import org.nic.rb.model.AppointmentModel;
import org.nic.rb.utils.AESCryptUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


@Component
public class AppointmentModelValidator implements Validator{
	
	@Autowired
	private PinCodeDao pinCodeDao;
	
	static Validations validator = new Validations();
	
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		AppointmentModel model = (AppointmentModel) target;
		if(model.getApplicant_id_no() != null && !model.getApplicant_id_no().trim().isEmpty()) {
//			model.setApplicant_id_no(new String(Base64.decodeBase64(model.getApplicant_id_no())));
			model.setApplicant_id_no(AESCryptUtil.decrypt(model.getApplicant_id_no(), AESCryptUtil.BASE64ENCODED));
		}
		if (model.getApplicant_type() != null && !validator.isNum(model.getApplicant_type())) {
				errors.rejectValue("applicant_type", "error.applicant_type", "Applicant Type is Invalid.");
		}
		if (model.getPurpose_visit() != null && !validator.isNum(model.getPurpose_visit())) {
			errors.rejectValue("purpose_visit", "error.purpose_visit", "Purpose of Visit is Invalid.");
		}
		if (model.getApplicant_name() != null && !model.getApplicant_name().trim().isEmpty()  &&  !validator.isName(model.getApplicant_name().trim())) {
			errors.rejectValue("applicant_name", "error.applicant_name", "Applicant Name is Invalid.");
		}
		if (model.getApplicant_id_no() != null && !validator.isNumString(model.getApplicant_id_no().trim())) {
			errors.rejectValue("applicant_id_no", "error.applicant_id_no", "Applicant Id is Invalid.");
		}
		if (model.getGender() != null && !validator.isCharNoSpace(model.getGender().trim())) {
			errors.rejectValue("gender", "error.gender", "Gender is Invalid.");
		}
		if (model.getDistrict() != null && !validator.isNum(model.getDistrict())) {
			errors.rejectValue("district", "error.district", "District is Invalid.");
		}
		if (model.getDistrict_other() != null && !model.getDistrict_other().trim().isEmpty() && !validator.isName(model.getDistrict_other().trim())) {
			errors.rejectValue("district_other", "error.district_other", "District Other is Invalid.");
		}
		if (model.getFull_address() != null && !model.getFull_address().trim().isEmpty() && !validator.isAlphanumeric(model.getFull_address().trim())) {
			errors.rejectValue("full_address", "error.full_address", "Full Address is Invalid.");
		}
		if (model.getPincode() != null && !model.getPincode().trim().isEmpty()) {
			if(!validator.isNum(model.getPincode().trim()))
				errors.rejectValue("pincode", "error.pincode", "Pin code is Invalid.");
			if(!pinCodeDao.findByPincode(model.getPincode().trim()).isPresent())
				errors.rejectValue("pincode", "error.pincode", "Pin code is Invalid.");
		}
		if (model.getIdentity_type() != null && !model.getIdentity_type().trim().isEmpty() && !validator.isName(model.getIdentity_type().trim())) {
			errors.rejectValue("identity_type", "error.identity_type", "Identity type is Invalid.");
		}
		if (model.getMobile_no() != null && !model.getMobile_no().trim().isEmpty() && !validator.isMobile(model.getMobile_no().trim())) {
			errors.rejectValue("mobile_no", "error.mobile_no", "Mobile no is Invalid.");
		}
		if (model.getAlternate_no() != null && !model.getAlternate_no().trim().isEmpty() && !validator.isMobile(model.getAlternate_no().trim())) {
			errors.rejectValue("alternate_no", "error.alternate_no", "Alternate Mobile no is Invalid.");
		}
		if (model.getEmail() != null && !model.getEmail().trim().isEmpty() && !validator.isEmail(model.getEmail().trim())) {
			errors.rejectValue("email", "error.email", "Email is Invalid.");
		}
		if (model.getPref_date_1() != null && !model.getPref_date_1().trim().isEmpty() && !validator.isRegDate(model.getPref_date_1().trim())) {
			errors.rejectValue("pref_date_1", "error.pref_date_1", "Pref Date 1 is Invalid.");
		}
		if (model.getPref_date_2() != null && !model.getPref_date_2().trim().isEmpty() && !validator.isRegDate(model.getPref_date_2().trim())) {
			errors.rejectValue("pref_date_2", "error.pref_date_2", "Pref Date 2 is Invalid.");
		}
		if (model.getPref_date_3() != null && !model.getPref_date_3().trim().isEmpty() && !validator.isRegDate(model.getPref_date_3().trim())) {
			errors.rejectValue("pref_date_3", "error.pref_date_3", "Pref Date 3 is Invalid.");
		}
		if (model.getVisitor_document() != null && !model.getVisitor_document().isEmpty() && model.getApplicant_type() != null && !model.getApplicant_type().isEmpty() && Integer.parseInt(model.getApplicant_type()) != 2) {
			String doc_result = validator.validateFile(model.getVisitor_document());
			if(doc_result != null && !doc_result.isEmpty()) {
				errors.rejectValue("visitor_document", "error.visitor_document", "Visitor Document ".concat(doc_result));
			}
			try {
				if(!validator.CheckMimeType(model.getVisitor_document())) {
					errors.rejectValue("visitor_document", "error.visitor_document", "Visitor Document is Invalid.");
				}
			} catch (Exception e) {
				errors.rejectValue("visitor_document", "error.visitor_document", "Visitor Document is Invalid.");
			}
		}
		if (model.getVisit_description() != null && !model.getVisit_description().trim().isEmpty() && !validator.isAlphanumeric(model.getVisit_description().trim())) {
			errors.rejectValue("visit_description", "error.visit_description", "Visit Description is Invalid.");
		}
		if (model.getVisit_support_document() != null && !model.getVisit_support_document().isEmpty()) {
			String doc_result = validator.validateFile(model.getVisit_support_document());
			if(doc_result != null && !doc_result.isEmpty()) {
				errors.rejectValue("visit_support_document", "error.visit_support_document", "Visit Support Document ".concat(doc_result));
			}
			try {
				if(!validator.CheckMimeType(model.getVisit_support_document())) {
					errors.rejectValue("visit_support_document", "error.visit_support_document", "Visit Support Document is Invalid.");
				}
			} catch (Exception e) {
				errors.rejectValue("visit_support_document", "error.visit_support_document", "Visit Support Document is Invalid.");
			}
		}
		
		if (model.getOrganisation_name() != null && !model.getOrganisation_name().trim().isEmpty() && !validator.isAlphanumeric(model.getOrganisation_name().trim())) {
			errors.rejectValue("organisation_name", "error.organisation_name", "Organisation Name is Invalid.");
		}
		if (model.getOrg_reg_number() != null && !model.getOrg_reg_number().trim().isEmpty() && !validator.isAlphanumeric(model.getOrg_reg_number().trim())) {
			errors.rejectValue("org_reg_number", "error.org_reg_number", "Organisation Registratin No is Invalid.");
		}
		
		if (model.getPolitical_party_name() != null && !model.getPolitical_party_name().trim().isEmpty() && !validator.isAlphanumeric(model.getPolitical_party_name().trim())) {
			errors.rejectValue("political_party_name", "error.political_party_name", "Political Party Name is Invalid.");
		}
		if (model.getParty_reg_number() != null && !model.getParty_reg_number().trim().isEmpty() && !validator.isAlphanumeric(model.getParty_reg_number().trim())) {
			errors.rejectValue("party_reg_number", "error.party_reg_number", "Party Registration No is Invalid.");
		}
		
		if (model.getEvent_name() != null && !model.getEvent_name().trim().isEmpty() && !validator.isName(model.getEvent_name().trim())) {
			errors.rejectValue("event_name", "error.event_name", "Event Name is Invalid.");
		}
		if (model.getEvent_description() != null && !model.getEvent_description().trim().isEmpty() && !validator.isAlphanumeric(model.getEvent_description().trim())) {
			errors.rejectValue("event_description", "error.event_description", "Event Description is Invalid.");
		}
		if (model.getEvent_location() != null && !model.getEvent_location().trim().isEmpty() && !validator.isAlphanumeric(model.getEvent_location().trim())) {
			errors.rejectValue("event_location", "error.event_location", "Event Location is Invalid.");
		}
		if (model.getEvent_type_invitation() != null && !validator.isNum(model.getEvent_type_invitation().toString())) {
			errors.rejectValue("event_type_invitation", "error.event_type_invitation", "Event Type Invitation is Invalid.");
		}
		if (model.getEvent_coordinator_name() != null && !model.getEvent_coordinator_name().trim().isEmpty() && !validator.isAlphanumeric(model.getEvent_coordinator_name().trim())) {
			errors.rejectValue("event_coordinator_name", "error.event_coordinator_name", "Event Coordinator Name is Invalid.");
		}
		if (model.getEvent_coordinator_mobile() != null && !model.getEvent_coordinator_mobile().trim().isEmpty() && !validator.isMobile(model.getEvent_coordinator_mobile().trim())) {
			errors.rejectValue("event_coordinator_mobile", "error.event_coordinator_mobile", "Event Coordinator Mobile is Invalid.");
		}
		if (model.getDais_sharing_no() != null && !validator.isNum(model.getDais_sharing_no())) {
			errors.rejectValue("dais_sharing_no", "error.dais_sharing_no", "Event Dais Sharing No is Invalid.");
		}
		if (model.getDais_sharing_names() != null && !model.getDais_sharing_names().trim().isEmpty() && !validator.isAlphanumeric(model.getDais_sharing_names().trim())) {
			errors.rejectValue("dais_sharing_names", "error.dais_sharing_names", "Event Dais Sharing Names is Invalid.");
		}
		if (model.getEvent_desc_document() != null && !model.getEvent_desc_document().isEmpty()) {
			String doc_result = validator.validateFile(model.getEvent_desc_document());
			if(doc_result != null && !doc_result.isEmpty()) {
				errors.rejectValue("event_desc_document", "error.event_desc_document", "Event Description Document ".concat(doc_result));
			}
			try {
				if(!validator.CheckMimeType(model.getEvent_desc_document())) {
					errors.rejectValue("event_desc_document", "error.event_desc_document", "Event Description is Invalid.");
				}
			} catch (Exception e) {
				errors.rejectValue("event_desc_document", "error.event_desc_document", "Event Description is Invalid.");
			}
		}
		if (model.getEvent_expected_audience() != null && !validator.isNum(model.getEvent_expected_audience())) {
			errors.rejectValue("event_expected_audience", "error.event_expected_audience", "Event Expected Audience is Invalid.");
		}
		if (model.getEvent_audiance_type() != null && !model.getEvent_audiance_type().trim().isEmpty() && !validator.isName(model.getEvent_audiance_type().trim())) {
			errors.rejectValue("event_audiance_type", "error.event_audiance_type", "Event Audiance Type is Invalid.");
		}
		if (model.getEvent_date() != null && !model.getEvent_date().trim().isEmpty() && !validator.isRegDate(model.getEvent_date().trim())) {
			errors.rejectValue("event_date", "error.event_date", "Event Date is Invalid.");
		}
		if (model.getEvent_time() != null && !model.getEvent_time().trim().isEmpty() && !validator.isTime(model.getEvent_time().trim())) {
			errors.rejectValue("event_time", "error.event_time", "Event Time is Invalid.");
		}
		if (model.getEvent_duration() != null && !model.getEvent_duration().trim().isEmpty() && !validator.isAlphanumeric(model.getEvent_duration().trim())) {
			errors.rejectValue("event_duration", "error.event_duration", "Event Duration is Invalid.");
		}
		
		if(model.getAddl_visitor_name() != null) {
			for (int i = 0; i < model.getAddl_visitor_name().length; i++) {
				if (model.getAddl_visitor_name()[i] != null && !model.getAddl_visitor_name()[i].trim().isEmpty() && !validator.isName(model.getAddl_visitor_name()[i].trim())) {
					errors.rejectValue("addl_visitor_name", "error.addl_visitor_name", "Addl Visitor Name is Invalid.");
				}
			}
		}
		if(model.getAddl_visitor_identity_type() != null) {
			for (int i = 0; i < model.getAddl_visitor_identity_type().length; i++) {
				if (model.getAddl_visitor_identity_type()[i] != null && !model.getAddl_visitor_identity_type()[i].trim().isEmpty() && !validator.isStringSpaces(model.getAddl_visitor_identity_type()[i].trim())) {
					errors.rejectValue("addl_visitor_identity_type", "error.addl_visitor_identity_type", "Addl Visitor Identity Type is Invalid.");
				}
			}
		}
		if(model.getAddl_visitor_id_number() != null) {
			for (int i = 0; i < model.getAddl_visitor_id_number().length; i++) {
				if (model.getAddl_visitor_id_number()[i] != null && !model.getAddl_visitor_id_number()[i].trim().isEmpty() && !validator.isAlphanumeric(model.getAddl_visitor_id_number()[i].trim())) {
					errors.rejectValue("addl_visitor_id_number", "error.addl_visitor_id_number", "Addl Visitor Id Number is Invalid.");
				}
			}
		}
		if(model.getAddl_visitor_mobile() != null) {
			for (int i = 0; i < model.getAddl_visitor_mobile().length; i++) {
				if (model.getAddl_visitor_mobile()[i] != null && !model.getAddl_visitor_mobile()[i].trim().isEmpty() && !validator.isAlphanumeric(model.getAddl_visitor_mobile()[i].trim())) {
					errors.rejectValue("addl_visitor_mobile", "error.addl_visitor_mobile", "Addl Visitor Mobile Number is Invalid.");
				}
			}
		}
		
		if(model.getAddl_visitor_document() != null && model.getAddl_visitor_document().length > 0) {
			for (int i = 0; i < model.getAddl_visitor_document().length; i++) {
				if (model.getAddl_visitor_document()[i] != null && !model.getAddl_visitor_document()[i].isEmpty()) {
					String doc_result = validator.validateFile(model.getAddl_visitor_document()[i]);
					if(doc_result != null && !doc_result.isEmpty()) {
						errors.rejectValue("addl_visitor_document", "error.addl_visitor_document", "Addl Visitor Document ".concat(doc_result));
					}
					try {
						if(!validator.CheckMimeType(model.getAddl_visitor_document()[i])) {
							errors.rejectValue("addl_visitor_document", "error.addl_visitor_document", "Addl Visitor Document is Invalid.");
						}
					} catch (Exception e) {
						errors.rejectValue("addl_visitor_document", "error.addl_visitor_document", "Addl Visitor Document is Invalid.");
					}
				}
			}
		}
		
		if (model.getApplicant_type_name() != null && !model.getApplicant_type_name().trim().isEmpty() && !validator.isName(model.getApplicant_type_name().trim())) {
			errors.rejectValue("applicant_type_name", "error.applicant_type_name", "Applicant Type Name is Invalid.");
		}
		if (model.getPurpose_visit_name() != null && !model.getPurpose_visit_name().trim().isEmpty() && !validator.isName(model.getPurpose_visit_name().trim())) {
			errors.rejectValue("purpose_visit_name", "error.purpose_visit_name", "Purpose of Visit Name is Invalid.");
		}
		
		if (model.getParty_designation() != null && !model.getParty_designation().trim().isEmpty() && !validator.isName(model.getParty_designation().trim())) {
			errors.rejectValue("party_designation", "error.party_designation", "Party Designation is Invalid.");
		}
		if (model.getOrganisation_type() != null && !model.getOrganisation_type().trim().isEmpty() && !validator.isName(model.getOrganisation_type().trim())) {
			errors.rejectValue("organisation_type", "error.organisation_type", "Organisation Type is Invalid.");
		}
		
		if (model.getMsg_sought_for() != null && !model.getMsg_sought_for().trim().isEmpty() && !validator.isName(model.getMsg_sought_for().trim())) {
			errors.rejectValue("msg_sought_for", "error.msg_sought_for", "Message Sought for is Invalid.");
		}
		
		if (model.getOrg_evnt_celb_document() != null && !model.getOrg_evnt_celb_document().isEmpty()) {
			String doc_result = validator.validateFile(model.getOrg_evnt_celb_document());
			if(doc_result != null && !doc_result.isEmpty()) {
				errors.rejectValue("org_evnt_celb_document", "error.org_evnt_celb_document", "Organization Event Document ".concat(doc_result));
			}
			try {
				if(!validator.CheckMimeType(model.getOrg_evnt_celb_document())) {
					errors.rejectValue("org_evnt_celb_document", "error.org_evnt_celb_document", "Organization Event Document is Invalid.");
				}
			} catch (Exception e) {
				errors.rejectValue("org_evnt_celb_document", "error.org_evnt_celb_document", "Organization Event Document is Invalid.");
			}
		}
		
		if (model.getDraft_document() != null && !model.getDraft_document().isEmpty()) {
			String doc_result = validator.validateFile(model.getDraft_document());
			if(doc_result != null && !doc_result.isEmpty()) {
				errors.rejectValue("draft_document", "error.draft_document", "Draft Document ".concat(doc_result));
			}
			try {
				if(!validator.CheckMimeType(model.getDraft_document())) {
					errors.rejectValue("draft_document", "error.draft_document", "Draft Document is Invalid.");
				}
			} catch (Exception e) {
				errors.rejectValue("draft_document", "error.draft_document", "Draft Document is Invalid.");
			}
		}
		if (model.getEvent_chief_guest_desc() != null && !model.getEvent_chief_guest_desc().trim().isEmpty() && !validator.isName(model.getEvent_chief_guest_desc().trim())) {
			errors.rejectValue("event_chief_guest_desc", "error.event_chief_guest_desc", "Event Chief Guest Description is Invalid.");
		}
		
		if (model.getOtp() != null && !model.getOtp().trim().isEmpty() && !validator.isNum(model.getOtp().trim())) {
			errors.rejectValue("otp", "error.otp", "OTP is Invalid.");
		}
		if (model.getCaptcha() != null && !model.getCaptcha().trim().isEmpty() && !validator.isNumString(model.getCaptcha())) {
			errors.rejectValue("captcha", "error.captcha", "Captcha is Invalid.");
		}
		
		if (model.getReceipt_mode() != null && !validator.isNum(model.getReceipt_mode())) {
			errors.rejectValue("receipt_mode", "error.receipt_mode", "Receipt mode is Invalid.");
		}
		if (model.getReceipt_by() != null && !model.getReceipt_by().trim().isEmpty() && !validator.isStringSpaces(model.getReceipt_by().trim())) {
			errors.rejectValue("receipt_by", "error.receipt_by", "Receipt by is Invalid.");
		}
		if (model.getReceipt_date() != null && !model.getReceipt_date().trim().isEmpty() && !validator.isRegDate(model.getReceipt_date().trim())) {
			errors.rejectValue("receipt_date", "error.receipt_date", "Receipt Date is Invalid.");
		}
		if (model.getReceipt_remarks() != null && !model.getReceipt_remarks().trim().isEmpty() && !validator.isAlphanumeric(model.getReceipt_remarks().trim())) {
			errors.rejectValue("receipt_remarks", "error.receipt_remarks", "Receipt Remarks is Invalid.");
		}
	}
}
