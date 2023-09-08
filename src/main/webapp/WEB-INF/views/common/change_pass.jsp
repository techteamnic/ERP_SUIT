<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.server_err{
color: red;
}
.val_req{
color: red;
font-size: 14px
}
</style>
<script src="js/app_code_1.js"></script>
<script src="js/app_code_2.js"></script>
<script type="text/javascript">					
$(document).ready(function() {
$("#reset_pass").click(function() {
	$("#old_pass").val('');
    $("#new_pass").val('');
    $("#conf_new_pass").val('');
});
$.validator.addMethod(
   "regex",
   function(value, element, regexp) {
       var check = false;
       return this.optional(element) || regexp.test(value);
   },
   "Please check your input."
);
$("#changepass").validate({
	rules: {
		old_pass : {
			 required : true,
			 minlength : 8,
			 maxlength : 20,
			 regex: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/i
		 },
		 new_pass : {
			 required : true,
			 minlength : 8,
			 maxlength : 20,
			 regex: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/i
		 },
		 conf_new_pass : {
			 required : true,
			 minlength : 8,
			 maxlength : 20,
			 regex: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,20}$/i,
			 equalTo : "#new_pass"
		 }
	},
	messages:{
		old_pass : {
			 regex : "Minimum 8 Characters with Combination of Number,Special Character,Capital Letter and Small Letter"
		 },
		 new_pass : {
			 regex : "Minimum 8 Characters with Combination of Number,Special Character,Capital Letter and Small Letter"
		 },
		 conf_new_pass : {
			 regex : "Minimum 8 Characters with Combination of Number,Special Character,Capital Letter and Small Letter",
			 equalTo : "Password Not Matched."
		 }
	},
	submitHandler: function (form) {
        var up_ran_val = ${up_ran_val};
        var old_pass = $('#old_pass').val();
        var new_pass = $('#new_pass').val();
        var conf_new_pass = $('#conf_new_pass').val();
	    
        var pass_old_1=GM(GM(GM(old_pass)));
        var pass_new_1=GM(GM(GM(new_pass)));
        var conf_pass_new_1=GM(GM(GM(conf_new_pass)));
        
        var sha256 = new jsSHA('SHA-256', 'TEXT');
        sha256.update(pass_old_1.concat(up_ran_val));
        var pass_old_2 = sha256.getHash("HEX");
        $("#old_pass").val(pass_old_2);
        $("#new_pass").val(pass_new_1);
        $("#conf_new_pass").val(conf_pass_new_1);
        
        form.submit();
    }
});
});						
</script>
</head>
<body>
<div class="container-fluid"> 
     <div class="box form_content">
           <div class="title1">
		   <b> Change Password </b>
		</div>
		<br>
		<c:if test="${not empty passerrmsg}">
			<div class="container">
			<br/>
			<div class="alert alert-danger alert-dismissible fade in" style="width: 968px;">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>Error! ${passerrmsg}</strong> 
				</div>
			</div>
		</c:if>
		<c:if test="${not empty passsucmsg}">
			<div class="container">
			<br/>
			<div class="alert alert-success alert-dismissible fade in" style="width: 968px;">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>${passsucmsg}</strong> 
				</div>
			</div>
		</c:if>
		<form:form action="${pageContext.request.contextPath}/changePass.do"
			modelAttribute="changepass" method="POST" id="changepass">
				<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="form-group">
								<label class="col-md-5">Old Password<sup class="val_req">*</sup>
								</label>
								<div class="col-md-6">
									<div class="input-group selected_style">
										<form:input path="old_pass" class="form-control selected_style"
									          placeholder="old password" type="password"/>
									    <form:errors path="old_pass" class="server_err"></form:errors>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
				 <div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="form-group">
								<label class="col-md-5">New Password<sup class="val_req">*</sup>
								</label>
								<div class="col-md-6">
									<div class="input-group selected_style">
										<form:input path="new_pass" class="form-control selected_style"
									          placeholder="new password" type="password"/>
							            <form:errors path="new_pass" class="server_err"></form:errors>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
				<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="form-group">
								<label class="col-md-5">Confirm New Password<sup class="val_req">*</sup>
								</label>
								<div class="col-md-6">
									<div class="input-group selected_style">
										<form:input path="conf_new_pass" class="form-control selected_style"
									        placeholder="confirm new password" type="password"/>
								        <form:errors path="conf_new_pass" class="server_err"></form:errors>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br><br>
					<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
				    <div class="col-sm-3 col-md-offset-5">
						<button id="reset_pass" type="button" class="btn btn-md btn-info">Reset</button>
					    <button type="submit" id="passchange" class="btn btn-md btn-info" type="submit">Submit</button>
					</div>
					<br><br>
		</form:form>
	</div>
 </div>	
</body>
</html>