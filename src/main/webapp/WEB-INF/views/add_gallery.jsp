<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
.server_err{
color: red;
}
.val_req{
color: red;
font-size: 14px
}
</style>
<script type="text/javascript">					
$(document).ready(function() {
$.validator.addMethod(
   "regex",
   function(value, element, regexp) {
       var check = false;
       return this.optional(element) || regexp.test(value);
   },
   "Please check your input."
);
$("#add_gallery").validate({
	rules: {
		gallery_title : {
			 required : true,
			 minlength : 10,
			 maxlength : 2048,
			 regex: /^([0-9a-zA-Z,'()"&.-\s])+$/i
		 },
		 gallery_imgs : {
			 required : true
		 }
	},
	messages:{
		gallery_title : {},
		 gallery_imgs : {}
	},
	submitHandler: function (form) {
        form.submit();
    }
});
});						
</script>
</head>
<body>
<div class="container-fluid"> 
     <div class="box form_content">
     <br>
           <div class="title1">
		   <b> Add To Gallery </b>
		</div>
		<br>
		<c:if test="${not empty gal_alert}">
			<div class="container">
			<br/>
			<div class="alert alert-${gal_alert} alert-dismissible fade in" style="width: 935px;">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				<strong>${gal_msg}</strong> 
				</div>
			</div>
		</c:if>
		<form:form action="${pageContext.request.contextPath}/rb_exe/add_gallery.do"
			modelAttribute="gallery" method="POST" id="add_gallery" enctype="multipart/form-data" autocomplete="off">
				<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="form-group">
								<label class="col-md-5">Title<sup class="val_req">*</sup>
								</label>
								<div class="col-md-6">
									<div class="input-group selected_style">
										<form:textarea path="gallery_title" class="form-control selected_style"
									          placeholder="Add A Title Here" type="text" rows="3"/>
									    <form:errors path="gallery_title" class="server_err"></form:errors>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
				 <div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="form-group">
								<label class="col-md-5">Choose Images<sup class="val_req">*</sup>
								</label>
								<div class="col-md-6">
									<div class="input-group selected_style">
										<form:input path="gallery_imgs" class="form-control selected_style"
									          placeholder="Select images for aboue title" type="file" accept="image/*" multiple="multiple"/>
							            <form:errors path="gallery_imgs" class="server_err"></form:errors>
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
					    <button type="submit" class="btn btn-md btn-primary">Submit</button>
					</div>
					<br><br>
		</form:form>
	</div>
 </div>	
</body>
</html>