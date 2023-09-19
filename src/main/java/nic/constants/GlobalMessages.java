package nic.constants;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class GlobalMessages {
	
	public static String INTERNAL_PROBLEM_ERROR;
	public static String SUCCESS_DETAILS_MESSAGE;
	public static String DRAFT_DETAILS_MESSAGE;
	public static String DUPLICATE_DETAILS_MESSAGE;
	public static String UPDATE_DETAILS_MESSAGE;
	public static String DELETE_DETAILS_MESSAGE;
	public static String ERROR;
	public static String RECORD_NOT_MATCHED;
	public static String INVALID_NUMMBER;
	public static String INVALID_TEXT;
	
	public static Boolean MAIL_ACTIVE;
	public static String EMAIL_URL;
	public static String PASS_RESET_URL;
	
	public String getPASSRESET_URL() {
		return PASS_RESET_URL;
	}
	public Boolean getMAIL_ACTIVE() {
		return MAIL_ACTIVE;
	}
	public String getEMAIL_URL() {
		return EMAIL_URL;
	}
	public String getINTERNAL_PROBLEM_ERROR() {
		return INTERNAL_PROBLEM_ERROR;
	}

	public String getSUCCESS_DETAILS_MESSAGE() {
		return SUCCESS_DETAILS_MESSAGE;
	}

	public String getDRAFT_DETAILS_MESSAGE() {
		return DRAFT_DETAILS_MESSAGE;
	}

	public String getDUPLICATE_DETAILS_MESSAGE() {
		return DUPLICATE_DETAILS_MESSAGE;
	}

	public String getUPDATE_DETAILS_MESSAGE() {
		return UPDATE_DETAILS_MESSAGE;
	}

	public String getDELETE_DETAILS_MESSAGE() {
		return DELETE_DETAILS_MESSAGE;
	}

	public String getERROR() {
		return ERROR;
	}

	public String getRECORD_NOT_MATCHED() {
		return RECORD_NOT_MATCHED;
	}

	public String getINVALID_NUMMBER() {
		return INVALID_NUMMBER;
	}

	public String getINVALID_TEXT() {
		return INVALID_TEXT;
	}

}
