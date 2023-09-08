package org.nic.rb.validator;

import org.nic.rb.model.MasterModel;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class MasterValidator implements Validator{
	
	static Validations validator = new Validations();
	
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		MasterModel model = (MasterModel) target;
		if(model.getId() != null && !validator.isNum(model.getId())) {
			errors.rejectValue("id", "error.id", "Id is Invalid.");
		}
		if(model.getMastr_name() == null || model.getMastr_name().isEmpty()) {
			errors.rejectValue("mastr_name", "error.mastr_name", "Master Name is Required.");
		}
		if (model.getMastr_name() != null && !model.getMastr_name().trim().isEmpty()  &&  !validator.isName(model.getMastr_name().trim())) {
			errors.rejectValue("mastr_name", "error.mastr_name", "Master Name is Invalid.");
		}
		if(model.getValue() == null || model.getValue().isEmpty()) {
			errors.rejectValue("value", "error.value", "Master Value is Required.");
		}
		if (model.getValue() != null && !model.getValue().trim().isEmpty()  &&  !validator.isName(model.getValue().trim())) {
			errors.rejectValue("value", "error.value", "Master Value is Invalid.");
		}
	}
}
