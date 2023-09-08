package org.nic.rb.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nic.rb.constants.TSRBLogger;
import org.nic.rb.entity.UserLogTrace;
import org.nic.rb.model.PasswordModel;
import org.nic.rb.service.AppointmentService;
import org.nic.rb.service.UserLogService;
import org.nic.rb.service.UserService;
import org.nic.rb.utils.DateUtils;
import org.nic.rb.utils.MonthUtils;
import org.nic.rb.validator.PasswordValidator;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@SessionAttributes({"user_name", "user_role", "months", "up_ran_val"})
public class UserController {
	
	Logger logger = TSRBLogger.getTSRBLogger(this.getClass());
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AppointmentService appointService;
	
	@Value("${app.master.entities}")
	private List<String> masters;
	
	@Autowired
	private PasswordValidator passwordValidator;
	
	@Autowired
	private UserLogService userLogService;
	
	@RequestMapping(value="tsrb.do")
	public String login_home(Model model, HttpServletRequest request, HttpServletResponse response) {
		Object principal =  SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(principal instanceof UserDetails){
			UserLogTrace userLogTrace = new UserLogTrace();
			userLogTrace.setUsername(((UserDetails) principal).getUsername());
			userLogTrace.setIpaddress(request.getRemoteAddr());
			userLogTrace.setLogints(DateUtils.getCurrentDate());
			userLogTrace.setLog_type("Login");
			userLogTrace.setLog_message("Logged In Successfully.");
			userLogService.addLogtoUserTrace(userLogTrace);
			request.getSession().removeAttribute("user_id");
			model.addAttribute("user_role", ((UserDetails) principal).getAuthorities().iterator().next().getAuthority().toLowerCase());
			model.addAttribute("user_name", ((UserDetails) principal).getUsername());
			logger.debug("User Logged In Successfully {}", ((UserDetails) principal).getUsername());
		}
		switch (((UserDetails) principal).getAuthorities().iterator().next().getAuthority()) {
		case "Admin":
			model.addAttribute("masters", masters);
			break;
		case "Adc":
			model.addAttribute("appl_stats", appointService.getApplStatusReportService());
			model.addAttribute("months", MonthUtils.getMonths());
			break;
		default:
			break;
		}
		/*HttpSessionCsrfTokenRepository http_session_rep = new HttpSessionCsrfTokenRepository();
		DefaultCsrfToken _csrf = (DefaultCsrfToken) http_session_rep.generateToken(request);
		http_session_rep.saveToken(_csrf, request, response);
		session.setAttribute("_CSRF", _csrf);*/
		return "home_rbts";
	}
	
	@RequestMapping(value="logout.do")
	public String logOut(Model model, HttpServletRequest request, HttpServletResponse response, SessionStatus status, RedirectAttributes redirect) {
		HttpSession session = request.getSession();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null) {
			logger.debug("User Logged Out Successfully {}", session.getAttribute("user_name") != null ? session.getAttribute("user_name").toString() : "Anonymous User");
			UserLogTrace userLogTrace = new UserLogTrace();
			userLogTrace.setUsername(session.getAttribute("user_name").toString());
			userLogTrace.setIpaddress(request.getRemoteAddr());
			userLogTrace.setLogoutts(DateUtils.getCurrentDate());
			userLogTrace.setLog_type("Logout");
			userLogTrace.setLog_message("Logged Out Successfully.");
			userLogService.addLogtoUserTrace(userLogTrace);
			new SecurityContextLogoutHandler().logout(request, response, auth);
			redirect.addFlashAttribute("user_logout", "Logged Out Successfully.");
		}
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		return "redirect:/";
	}
	
	@RequestMapping(value="auth_failure.do", method = RequestMethod.GET)
	public String authenticationFailue(Model model, HttpServletRequest request,HttpServletResponse response, RedirectAttributes redirectAttributes) {
		HttpSession session = request.getSession();
		String user_mg = null;
		if (session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION") != null){
			model.addAttribute("user_error", "'error'");
			if(((Exception) session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage().trim().equals("Bad credentials")){
				logger.error("Autentication Failure"+((Exception) request.getSession().getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage());
				user_mg = "Invalid Username / Password.";
//				model.addAttribute("user_msg", "Invalid Credentials.");
			}else if (((Exception) session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage().trim().equals("User is disabled")) {
		        user_mg = "Your account is temporarily blocked."; 
//				model.addAttribute("user_msg", "Your account is temporarily blocked.");
			}else if (((Exception) session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage().trim().equals("Maximum sessions of 1 for this principal exceeded")) {
				user_mg = "With this credentials someone already logged in."; 
//				model.addAttribute("user_msg", "With this credentials someone already logged in.");
			}
			else if(((Exception) session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage().trim().equals("Captcha Not Matched.")) {
				user_mg = "Captcha Not Matched.";
//				model.addAttribute("user_msg", ((Exception) session.getAttribute("SPRING_SECURITY_LAST_EXCEPTION")).getMessage());
				redirectAttributes.addFlashAttribute("error_msg", user_mg);
				return "redirect:/";
			}
		}
		UserLogTrace userLogTrace = new UserLogTrace();
		userLogTrace.setUsername(session.getAttribute("user_id").toString());
		userLogTrace.setIpaddress(request.getRemoteAddr());
		userLogTrace.setLogints(DateUtils.getCurrentDate());
		userLogTrace.setLog_type("Login");
		userLogTrace.setLog_message("Login Failed-".concat(user_mg));
		userLogService.addLogtoUserTrace(userLogTrace);
		session.removeAttribute("user_id");
		redirectAttributes.addFlashAttribute("error_msg", user_mg);
		return "redirect:/";
	}
	
	@RequestMapping(value="changePass.do", method=RequestMethod.GET)
	public String changePassword(Model model,HttpServletRequest request, @ModelAttribute("changepass") PasswordModel passwordmodel, BindingResult errors) {
		int min = 0;
        int max = 999;
        model.addAttribute("up_ran_val", (int)(Math.random() * (max - min + 1) + min));
		return "changepass";
	}
	
	@RequestMapping(value="changePass.do", method=RequestMethod.POST)
	public String updatePassword(Model model,HttpServletRequest request, @ModelAttribute("changepass") PasswordModel passwordmodel, BindingResult errors, RedirectAttributes redirect) {
		HttpSession session = request.getSession();
		passwordValidator.validate(passwordmodel, errors);
		if(errors.hasErrors()) {
			return "changepass";
		}else {
			int updated = userService.updatePasswordByUsername(passwordmodel.getNew_pass(), session.getAttribute("user_name").toString());
			if(updated == 1) {
				UserLogTrace userLogTrace = new UserLogTrace();
				userLogTrace.setUsername(session.getAttribute("user_name").toString());
				userLogTrace.setIpaddress(request.getRemoteAddr());
				userLogTrace.setLogints(DateUtils.getCurrentDate());
				userLogTrace.setLog_type("Change Password");
				userLogTrace.setLog_message("Password Updated Successfully.");
				userLogService.addLogtoUserTrace(userLogTrace);
				redirect.addFlashAttribute("passsucmsg", "Password Updated Successfully.");
			}else {
				UserLogTrace userLogTrace = new UserLogTrace();
				userLogTrace.setUsername(session.getAttribute("user_name").toString());
				userLogTrace.setIpaddress(request.getRemoteAddr());
				userLogTrace.setLogints(DateUtils.getCurrentDate());
				userLogTrace.setLog_type("Change Password");
				userLogTrace.setLog_message("Password Updation Failed.");
				userLogService.addLogtoUserTrace(userLogTrace);
				redirect.addFlashAttribute("passerrmsg", "Password Updation Failed.");
			}
			return "redirect:changePass.do";
		}
	}
}
