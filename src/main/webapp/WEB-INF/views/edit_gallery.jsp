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
<script type="text/javascript">					
$(document).ready(function() {
$("#example").dataTable();	
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
			 regex: /^([0-9a-zA-Z,'"().-\s])+$/i
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
<script type="text/javascript">
var galls = ${galls};
var app = angular.module("rbts", []);
app.controller('galleryController', ['$scope', function ($scope) {
	$scope.galls = galls;
	$scope.editGallery = function(gall){
		$scope.gall = gall;
		window.scroll({
		  top: 0,
		  behavior: 'smooth'
		});
	}
}]);
</script>
</head>
<body data-ng-app="rbts" data-ng-controller="galleryController" data-ng-cloak>
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
									          placeholder="Add A Title Here" type="text" ng-model="gall.title" readonly="true" rows="3"/>
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
					<input type="hidden" name="doc_id" value="{{gall.doc_id}}">
					<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
				    <div class="col-sm-3 col-md-offset-5">
					    <button type="submit" class="btn btn-md btn-primary">Submit</button>
					</div>
					<br><br>
		</form:form>
		<hr>
		<div class="table table-responsive">
               <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr  bgcolor="">
                <th>#</th>
                <th>Title</th>
               	<th>Update</th>
               	<th>Delete</th>
            </tr>
        </thead>
        <tbody>
        	<tr ng-repeat="gall in galls">
        		<td>{{$index+1}}</td>
                <td>{{gall.title}}</td>    
                <td>
				<i data-title="Edit" data-ng-click="editGallery(gall)" class="btn btn-info fa fa-edit" style="font-size:20px"></i> 
				</td>
				<td>
				<form action="${pageContext.request.contextPath}/rb_exe/delete_gallery.do" method="POST">
				<input type="hidden" name="doc_id" value="{{gall.doc_id}}">
				<input type="hidden" name="title" value="{{gall.title}}">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				<button type="submit"><i data-title="Delete" class="btn btn-danger fa fa-trash" style="font-size:20px"></i></button>
				</form>
				</td>
            </tr>
            <tr ng-if="gall.length == 0">
            	<td colspan="4" align="center">No Data Found.</td>
            </tr>
        </tbody>
    </table>
        </div>
	</div>
 </div>	
</body>
</html>