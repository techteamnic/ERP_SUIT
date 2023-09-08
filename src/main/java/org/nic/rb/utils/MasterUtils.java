package org.nic.rb.utils;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.nic.rb.entity.ApplicantTypeMaster;
import org.nic.rb.entity.DistrictMaster;
import org.nic.rb.entity.PurposeVisitMaster;
import org.nic.rb.entity.RolesMaster;
import org.nic.rb.entity.TypeInvitaionMaster;

public class MasterUtils {
	
	public static <T> T masterAdd(T obj, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(obj instanceof ApplicantTypeMaster) {
			 Date curr_date = new Date();
			((ApplicantTypeMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((ApplicantTypeMaster) obj).setCreated_date(curr_date);
			((ApplicantTypeMaster) obj).setIp(request.getRemoteAddr());
			((ApplicantTypeMaster) obj).setIs_active(true);
			((ApplicantTypeMaster) obj).setTs(curr_date);
		}
		if(obj instanceof DistrictMaster) {
			 Date curr_date = new Date();
			((DistrictMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((DistrictMaster) obj).setCreated_date(curr_date);
			((DistrictMaster) obj).setIp(request.getRemoteAddr());
			((DistrictMaster) obj).setIs_active(true);
			((DistrictMaster) obj).setTs(curr_date);
		}
		if(obj instanceof PurposeVisitMaster) {
			 Date curr_date = new Date();
			((PurposeVisitMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((PurposeVisitMaster) obj).setCreated_date(curr_date);
			((PurposeVisitMaster) obj).setIp(request.getRemoteAddr());
			((PurposeVisitMaster) obj).setIs_active(true);
			((PurposeVisitMaster) obj).setTs(curr_date);
		}
		if(obj instanceof TypeInvitaionMaster) {
			 Date curr_date = new Date();
			((TypeInvitaionMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((TypeInvitaionMaster) obj).setCreated_date(curr_date);
			((TypeInvitaionMaster) obj).setIp(request.getRemoteAddr());
			((TypeInvitaionMaster) obj).setIs_active(true);
			((TypeInvitaionMaster) obj).setTs(curr_date);
		}
		if(obj instanceof RolesMaster) {
			 Date curr_date = new Date();
			((RolesMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((RolesMaster) obj).setCreated_date(curr_date);
			((RolesMaster) obj).setIp(request.getRemoteAddr());
			((RolesMaster) obj).setIs_active(true);
			((RolesMaster) obj).setTs(curr_date);
		}
		return obj;
	}
	
	public static <T> T masterUpdate(T obj, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(obj instanceof ApplicantTypeMaster) {
			 Date curr_date = new Date();
			((ApplicantTypeMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((ApplicantTypeMaster) obj).setCreated_date(curr_date);
			((ApplicantTypeMaster) obj).setIp(request.getRemoteAddr());
			((ApplicantTypeMaster) obj).setIs_active(true);
			((ApplicantTypeMaster) obj).setTs(curr_date);
			
			((ApplicantTypeMaster) obj).setModified_by(session.getAttribute("user_name").toString());
			((ApplicantTypeMaster) obj).setModified_date(curr_date);
		}
		if(obj instanceof DistrictMaster) {
			 Date curr_date = new Date();
			((DistrictMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((DistrictMaster) obj).setCreated_date(curr_date);
			((DistrictMaster) obj).setIp(request.getRemoteAddr());
			((DistrictMaster) obj).setIs_active(true);
			((DistrictMaster) obj).setTs(curr_date);
			
			((DistrictMaster) obj).setModified_by(session.getAttribute("user_name").toString());
			((DistrictMaster) obj).setModified_date(curr_date);
		}
		if(obj instanceof PurposeVisitMaster) {
			 Date curr_date = new Date();
			((PurposeVisitMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((PurposeVisitMaster) obj).setCreated_date(curr_date);
			((PurposeVisitMaster) obj).setIp(request.getRemoteAddr());
			((PurposeVisitMaster) obj).setIs_active(true);
			((PurposeVisitMaster) obj).setTs(curr_date);
			
			((PurposeVisitMaster) obj).setModified_by(session.getAttribute("user_name").toString());
			((PurposeVisitMaster) obj).setModified_date(curr_date);
		}
		if(obj instanceof TypeInvitaionMaster) {
			 Date curr_date = new Date();
			((TypeInvitaionMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((TypeInvitaionMaster) obj).setCreated_date(curr_date);
			((TypeInvitaionMaster) obj).setIp(request.getRemoteAddr());
			((TypeInvitaionMaster) obj).setIs_active(true);
			((TypeInvitaionMaster) obj).setTs(curr_date);
			
			((TypeInvitaionMaster) obj).setModified_by(session.getAttribute("user_name").toString());
			((TypeInvitaionMaster) obj).setModified_date(curr_date);
		}
		if(obj instanceof RolesMaster) {
			 Date curr_date = new Date();
			((RolesMaster) obj).setCreated_by(session.getAttribute("user_name").toString());
			((RolesMaster) obj).setCreated_date(curr_date);
			((RolesMaster) obj).setIp(request.getRemoteAddr());
			((RolesMaster) obj).setIs_active(true);
			((RolesMaster) obj).setTs(curr_date);
			
			((RolesMaster) obj).setModified_by(session.getAttribute("user_name").toString());
			((RolesMaster) obj).setModified_date(curr_date);
		}
		return obj;
	}
}
