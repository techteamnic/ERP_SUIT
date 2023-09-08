<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html lang="en" data-ng-app="rbts">
<head>
  <meta charset="utf-8">
  <title>Raj Bhavan</title>
<%
  response.setHeader("Cache-Control", "no-cache");
  response.setHeader("Cache-Control", "no-store");
  response.setHeader("Cache-Control", "private");
  response.setHeader("Cache-Control", "pre-check=0");
  response.setHeader("Pragma", "no-cache");
  response.setDateHeader("Expires", 0);
%>
  <meta name="_csrf" content="${_csrf.token}"/>
  <meta name="_csrf_header" content="${_csrf.headerName}"/>
<!--   <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://cdn.datatables.net/; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://cdn.datatables.net/; font-src 'self'; frame-src; object-src "> -->
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="description" content="3D Thumbnail Hover Effects" />
  <meta name="keywords" content="3d, 3dtransform, hover, effect, thumbnail, overlay, curved, folded" />
  <meta name="referrer" content="no-referrer">
  <link href="${pageContext.request.contextPath}/img/satyamevajayate.png" rel="icon">

  <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/jquery-3.5.0.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/jquery.validate.min.js"></script>
  <script src="${pageContext.request.contextPath}/angular/angular.min.js"></script>
  <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/css/animate.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/vendor/css/style.css" rel="stylesheet">

  <link href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/lib/animate/animate.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

 <style>
.Searchsty{
font-weight: 600;
font-size: 20px;
background: #5155bd;
border-bottom: 1px solid #7b7ec1;
text-align:center;
padding: 10px;
color:white;
}
.Searchsty a:hover{
background:  !important;
}
.nav-tabs>li>a {
   border-radius: 1px;
   border: 1px solid white !important;
}
.nav-tabs>li.active {
    border-radius: 1px;
    background: #e1651e;
}
.nav-tabs>li {
    text-align: center;
    width: 20%;
    float: left;
    margin-bottom: -1px;
}
.panel-gallery1{
    min-height:288px !important;	
	padding: 5px;
}
.active1{
    background: #e1651e  !important;
    color: #ffffff !important;
}
h6 a{
color:white;
}
h6 a:hover{
color:white;
}

/* .select_org1{
display:none;
} */

/* .select_event{
display:none;
} */
/* .select_msg{
display:none;
} */
.error{
color: blue;
}
.Preferredsty {
    width: 94% !important;
    display: inline-block !important;
}
.PreferredDatesty1 {
    width: 94% !important;
    display: inline-block !important;
}
.addlVisitor {
    width: 94% !important;
    display: inline-block !important;
}
.red {
color: red;
font-size: 25px;
}
.white {
color: white;
font-size: 25px;
}
</style>
<c:if test="${empty reciept_mode}">
	<script type="text/javascript">
var id = 1;
var app = angular.module("rbts", []);
app.controller('appointmentController', ['$scope', function ($scope) {
	$scope.applicantTypeChange = function(appli_type){
		$scope.appoint_data={};
		$scope.appoint_data.applicant_type = appli_type;
// 		$scope.$apply();
	}
	$(document).ready(function() {
	       $("#append").click( function(e) {
	    	   var addl_visit = "'addl_visitor_document"+id+"'";
	           e.preventDefault();
		       $(".inc").append('<div class="controls col-md-4 col-md-offset-4">\
		               <input class="form-control addlPreferredsty" type="text" name="addl_visitor_name" placeholder="Name of the Additional Visitor" id="addl_visitor_name'+id+'">\
					<br><br>\
		               <select class="form-control addlPreferredsty" name="addl_visitor_identity_type" id="addl_visitor_identity_type'+id+'"><option value="">Type of Identity</option><option value="PAN">PAN</option><option value="Aadhaar">Aadhaar</option><option value="Voter Id">Voter Id</option><option value="Driving Licence">Driving Licence</option><option value="Passport">Passport</option></select>\
	                <br><br>\
	                <input class="form-control addlPreferredsty" type="text" name="addl_visitor_id_number" placeholder="Enter Any Photo ID Number" id="addl_visitor_id_number'+id+'">\
					<br><br>\
					<input class="form-control addlPreferredsty" type="text" name="addl_visitor_mobile" placeholder="Mobile number" id="addl_visitor_mobile'+id+'">\
					<br><br>\
					<div class="row"><div class="col-md-6 form-group"><div class="subhead1"> Upload copy of ID.Proof </div></div></div><input class="form-control addlPreferredsty" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" name="addl_visitor_document" data-toggle="tooltip" id="addl_visitor_document'+id+'" onchange="return fileValidation('+addl_visit+')">\
					<br><br>\
		               <a href="#" class="remove_this btn btn-danger">Remove</a>\
					<br>\
					<br>\
		           </div>');
		       id++;
		       return false;
	       });

	   jQuery(document).on('click', '.remove_this', function() {
	       jQuery(this).parent().remove();
	       return false;
	       });
	   $("input[type=submit]").click(function(e) {
	     e.preventDefault();
	     $(this).next("[name=textbox]")
	     .val(
	       $.map($(".inc :text"), function(el) {
	         return el.value
	       }).join(",\n")
	     )
	   })
		
		$.validator.addMethod("regex", 
		   function(value, element, regexp) {
		       var check = false;
		       return this.optional(element) || regexp.test(value);
		   },
		   "Please check your input."
		);
	    $.validator.addMethod("notEqualTo", function (value, element, param)
	    {
	       var target = $(param);
	       if (value) return value != target.val();
	       else return this.optional(element);
	    }, "Preferred Dates should not match");
	    $.validator.addMethod("notMatchWith", function (value, element, param)
   	    {
   	       var target = $(param);
   	       if (value) return value != target.val();
   	       else return this.optional(element);
   	    }, "Preferred Dates should not match");
	    $("#reg_appointment").validate({
		rules : {
			applicant_type : {
				required : true,
				regex : /^([0-9])+$/i
			},
			applicant_type_name:{
				required : true,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			purpose_visit:{
				required : true,
				regex : /^([0-9])+$/i
			},
			purpose_visit_name:{
				required : true,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			applicant_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			gender:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				regex : /^([a-zA-Z])+$/i
			},
			district:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				regex : /^([0-9])+$/i
			},
			district_other:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			full_address:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				maxlength: 100,
				regex : /^([/0-9a-zA-Z,.-\s])+$/i
			},
			pincode:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				minlength: 6,
				maxlength: 6,
				regex : /^([0-9])+$/i
			},
			identity_type:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			applicant_id_no:{
				required : function applType(){
					return $("#applicant_type").val() != 2;
				},
				maxlength: 20,
				regex : /^([0-9a-zA-Z])+$/i
			},
			mobile_no:{
				required : true,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			alternate_no:{
				required : false,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			email:{
				required : true,
				maxlength: 40,
				regex : /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i
			},
			pref_date_1:{
				required : true,
				notEqualTo: "#pref_date_2",
				notMatchWith: "#pref_date_3",
				maxlength: 10
			},
			pref_date_2:{
				required : true,
				notEqualTo: "#pref_date_1",
				notMatchWith: "#pref_date_3",
				maxlength: 10
			},
			pref_date_3:{
				required : true,
				notEqualTo: "#pref_date_1",
				notMatchWith: "#pref_date_2",
				maxlength: 10
			},
			visitor_document:{
				required : function visit_req(){
					if($("#applicant_type").val() != null && $("#applicant_type").val() == 2)
						return false;
					else return true;
				}
			},
			visit_description:{
				required : true,
				maxlength: 255,
				regex: /^([0-9a-zA-Z,.-\s])+$/i
			},
			visit_support_document:{
				required : true
			},
			addl_visitor_name:{
				required : {
			          depends: function(element) {
			        	  if(element.id == "")
			              	return !($("#addl_visitor_document").get(0).files.length===0)
		              	  else{
		              		var id = element.id.substr(17)
		              		return !($("#addl_visitor_document"+id).get(0).files.length===0)
		              	  }
			            }
					},
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			addl_visitor_identity_type:{
				required : {
			          depends: function(element) {
			        	  if(element.id == "")
			              	return !($("#addl_visitor_document").get(0).files.length===0)
		              	  else{
		              		var id = element.id.substr(26)
		              		return !($("#addl_visitor_document"+id).get(0).files.length===0)
		              	  }
			            }
					},
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			addl_visitor_id_number:{
				required : {
			          depends: function(element) {
			        	  if(element.id == "")
			              	return !($("#addl_visitor_document").get(0).files.length===0)
		              	  else{
		              		var id = element.id.substr(22)
		              		return !($("#addl_visitor_document"+id).get(0).files.length===0)
		              	  }
			            }
					},
				maxlength: 20,
				regex : /^([0-9A-Za-z])+$/i
			},
			addl_visitor_mobile:{
				required : {
		          depends: function(element) {
		        	  if(element.id == "")
		              	return !($("#addl_visitor_document").get(0).files.length===0)
	              	  else{
	              		var id = element.id.substr(19)
	              		return !($("#addl_visitor_document"+id).get(0).files.length===0)
	              	  }
		            }
				},
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			addl_visitor_document:{
				required : {
			          depends: function(element) {
			        	  if(element.id == "")
			              	return !($("#addl_visitor_identity_type").val() == "")
		              	  else{
		              		var id = element.id.substr(21)
		              		return !($("#addl_visitor_identity_type"+id).val() == "")
		              	  }
			            }
					},
			},
			organisation_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			political_party_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_description:{
				required : true,
				maxlength: 255,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			event_location:{
				required : true,
				maxlength: 100,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			event_type_invitation:{
				required : true,
				regex : /^([0-9])+$/i
			},
			event_coordinator_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_coordinator_mobile:{
				required : true,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			dais_sharing_no:{
				required : true,
				regex : /^([0-9])+$/i
			},
			dais_sharing_names:{
				required : true,
				maxlength: 255,
				regex : /^([a-zA-Z,.\s])+$/i
			},
			event_desc_document:{
				required : true
			},
			event_expected_audience:{
				required : true,
				maxlength: 8,
				regex : /^([0-9])+$/i
			},
			event_audiance_type:{
				required : true,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_date:{
				required : true,
				maxlength: 10
			},
			event_time:{
				required : true
			},
			event_duration:{
				required : true,
				maxlength: 5,
				regex : /^([0-9.:])+$/i
			},
			draft_document:{
				required : true
			},
			receipt_mode:{
				required : true,
				regex : /^([0-9])+$/i
			},
			receipt_by:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			receipt_date:{
				required : true,
				maxlength: 10
			},
			receipt_remarks:{
				required : true,
				maxlength: 255,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			msg_sought_for: {
				required : true,
				maxlength: 20,
				regex : /^([a-zA-Z])+$/i
			},
			org_evnt_celb_document:{
				required : true
			},
			party_designation:{
				required : true,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			organisation_type:{
				required : true,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			chief_guest_desc:{
				required : true,
				maxlength: 40,
				regex : /^([a-zA-Z,.-\s])+$/i
			},
			captcha:{
				required : true,
				maxlength: 5,
				regex : /^([0-9a-zA-Z])+$/i
			}
		},
		messages : {
			applicant_type : {
				required : "Applicant Type Required."
			},
			applicant_type_name:{
				required : "Other Applicant Type Required."
			},
			purpose_visit:{
				required : "Purpose of Visit Required."
			},
			purpose_visit_name:{
				required : "Other Purpose of Visit Required."
			},
			applicant_name:{
				required : "Applicant Name Required."
			},
			gender:{
				required : "Gender Required."
			},
			district:{
				required : "District Required."
			},
			district_other:{
				required : "District Name Required."
			},
			full_address:{
				required : "Full Address Required."
			},
			pincode:{
				required : "PIN Code Required."
			},
			identity_type:{
				required : "Type of Identity Required."
			},
			applicant_id_no:{
				required : "ID Proof No Required."
			},
			mobile_no:{
				required : "Mobile Number Required."
			},
			alternate_no:{
				required : "Other Contact Number Required."
			},
			email:{
				required : "Email Address Required."
			},
			pref_date_1:{
				required : "This Preferred Date is Required."
			},
			pref_date_2:{
				required : "This Preferred Date is Required."
			},
			pref_date_3:{
				required : "This Preferred Date is Required."
			},
			visitor_document:{
				required : "ID Proof Required."
			},
			visit_description:{
				required : "Description of Visit Required."
			},
			visit_support_document:{
				required : "This field is Required."
			},
			addl_visitor_name:{
				required : "Visitor Name Required."
			},
			addl_visitor_identity_type:{
				required : "Type of Identity Required."
			},
			addl_visitor_id_number:{
				required : "ID proof Number Required."
			},
			addl_visitor_mobile:{
				required : "Mobile Number Required."
			},
			addl_visitor_document:{
				required : "ID Proof Required."
			},
			organisation_name:{
				required : "Organisation Name Required."
			},
			political_party_name:{
				required : "Name of Political Party Required."
			},
			event_name:{
				required : "Name of Event Required."
			},
			event_description:{
				required : "Event Description Required."
			},
			event_location:{
				required : "Event Address Required."
			},
			event_type_invitation:{
				required : "Invitation Type Required."
			},
			event_coordinator_name:{
				required : "Name of Event Coordinator Required."
			},
			event_coordinator_mobile:{
				required : "Coordinator Mobile Number Required."
			},
			dais_sharing_no:{
				required : "No of Dignitaries Sharing Dias Required."
			},
			dais_sharing_names:{
				required : "Details of Dignitaries sharing dais Required."
			},
			event_desc_document:{
				required : "Necessary Document Required."
			},
			event_expected_audience:{
				required : "Expected no of Audience Required."
			},
			event_audiance_type:{
				required : "Type of Audience Required."
			},
			event_date:{
				required : "Date of Event Required."
			},
			event_time:{
				required : "Time of Event Required."
			},
			event_duration:{
				required : "Duration of Event Required."
			},
			draft_document:{
				required : "Document for Message Notes Required."
			},
			receipt_mode:{
				required : "Mode of Receipt Required."
			},
			receipt_by:{
				required : "Received By Required."
			},
			receipt_date:{
				required : "Received Date Required."
			},
			receipt_remarks:{
				required : "Remarks Required."
			},
			msg_sought_for:{
				required : "This field is Required."
			},
			org_evnt_celb_document:{
				required : "This field is Required."
			},
			msg_sought_for: {
				required : "This field is Required."
			},
			org_evnt_celb_document:{
				required : "Document of Organization/Event/Celebration is Required."
			},
			party_designation:{
				required : "This field is Required."
			},
			organisation_type:{
				rrequired : "This field is Required."
			},
			chief_guest_desc:{
				required : "This field is Required."
			},
		    captcha: {
		    	required : "Please Enter Captcha."
		    }
		},
		submitHandler: function(form) {
	        $("#appontment_submit").attr("disabled", true);
	        if($("#applicant_id_no").val() != ''){
		        var parsed_Key = CryptoJS.enc.Base64.parse('QXBwbGljYXRpb25OSUNUUw==');
		        var encryptedData = null;
		        {
			        encryptedData = CryptoJS.AES.encrypt($("#applicant_id_no").val(), parsed_Key, {
			        mode: CryptoJS.mode.ECB,
			        padding: CryptoJS.pad.Pkcs7
			        });
			        $("#applicant_id_no").val(encryptedData.toString());
		        }
	        }
	        form.submit();
	    }
	});
	});
}]);
function fileValidation(fileID) {
    var fileInput = document.getElementById(fileID);
    var filePath = fileInput.value;
    var allowedExtensions = /([a-zA-Z0-9\s_\\.\-\(\):])+(.jpg|.jpeg|.png|.pdf|.doc|.docx)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .pdf .jpeg .png .doc .docx only.');
        fileInput.value = '';
        return false;
    }
    /* if(!fileInput.files[0].type.match('image/*|application/pdf')){
    	console.log('Uploded file is not an image or pdf');
    	fileInput.value = '';
        return false;
    } */
    const file = Math.round((fileInput.files[0].size / 1024));
    if(file > 2048) {
    	console.log(fileInput.files[0].size);
    	alert('File size should not exceed 2 MB.');
        fileInput.value = '';
        return false;
    }
}
</script>
</c:if>
<c:if test="${not empty reciept_mode}">
	<script type="text/javascript">
var id = 1;
var app = angular.module("rbts", []);
app.controller('appointmentController', ['$scope', function ($scope) {
	$scope.applicantTypeChange = function(appli_type){
		$scope.appoint_data={};
		$scope.appoint_data.applicant_type = appli_type;
// 		$scope.$apply();
	}
	$(document).ready(function() {
	       $("#append").click( function(e) {
	    	   var addl_visit = "'addl_visitor_document"+id+"'";
	           e.preventDefault();
		       $(".inc").append('<div class="controls col-md-4 col-md-offset-4">\
		               <input class="form-control addlPreferredsty" type="text" name="addl_visitor_name" placeholder="Name of the Additional Visitor" id="addl_visitor_name'+id+'">\
					<br><br>\
		               <select class="form-control addlPreferredsty" name="addl_visitor_identity_type" id="addl_visitor_identity_type'+id+'"><option value="">Type of Identity</option><option value="PAN">PAN</option><option value="Aadhaar">Aadhaar</option><option value="Voter Id">Voter Id</option><option value="Driving Licence">Driving Licence</option><option value="Passport">Passport</option></select>\
	                <br><br>\
	                <input class="form-control addlPreferredsty" type="text" name="addl_visitor_id_number" placeholder="Enter Any Photo ID Number" id="addl_visitor_id_number'+id+'">\
					<br><br>\
					<input class="form-control addlPreferredsty" type="text" name="addl_visitor_mobile" placeholder="Mobile number" id="addl_visitor_mobile'+id+'">\
					<br><br>\
					<div class="row"><div class="col-md-6 form-group"><div class="subhead1"> Upload copy of ID.Proof </div></div></div><input class="form-control addlPreferredsty" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" name="addl_visitor_document" data-toggle="tooltip" id="addl_visitor_document'+id+'" onchange="return fileValidation('+addl_visit+')">\
					<br><br>\
		               <a href="#" class="remove_this btn btn-danger">Remove</a>\
					<br>\
					<br>\
		           </div>');
		       id++;
		       return false;
	       });

	   jQuery(document).on('click', '.remove_this', function() {
	       jQuery(this).parent().remove();
	       return false;
	       });
	   $("input[type=submit]").click(function(e) {
	     e.preventDefault();
	     $(this).next("[name=textbox]")
	     .val(
	       $.map($(".inc :text"), function(el) {
	         return el.value
	       }).join(",\n")
	     )
	   })
		
		$.validator.addMethod("regex", 
		   function(value, element, regexp) {
		       var check = false;
		       return this.optional(element) || regexp.test(value);
		   },
		   "Please check your input."
		);
	   $.validator.addMethod("notEqualTo", function (value, element, param)
	   {
	       var target = $(param);
	       if (value) return value != target.val();
	       else return this.optional(element);
	   }, "Preferred Dates should not match");
	   $.validator.addMethod("notMatchWith", function (value, element, param)
  	    {
  	       var target = $(param);
  	       if (value) return value != target.val();
  	       else return this.optional(element);
  	    }, "Preferred Dates should not match");
	    $("#reg_appointment").validate({
		rules : {
			applicant_type : {
				required : true,
				regex : /^([0-9])+$/i
			},
			applicant_type_name:{
				required : true,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			purpose_visit:{
				required : true,
				regex : /^([0-9])+$/i
			},
			purpose_visit_name:{
				required : true,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			applicant_name:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			gender:{
				required : true,
				regex : /^([a-zA-Z])+$/i
			},
			district:{
				required : true,
				regex : /^([0-9])+$/i
			},
			district_other:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			full_address:{
				required : false,
				maxlength: 100,
				regex : /^([/0-9a-zA-Z,.-\s])+$/i
			},
			pincode:{
				required : false,
				minlength: 6,
				maxlength: 6,
				regex : /^([0-9])+$/i
			},
			identity_type:{
				required : false,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			applicant_id_no:{
				required : false,
				maxlength: 20,
				regex : /^([0-9a-zA-Z])+$/i
			},
			mobile_no:{
				required : true,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			alternate_no:{
				required : false,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			email:{
				required : true,
				maxlength: 40,
				regex : /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i
			},
			pref_date_1:{
				required : false,
				notEqualTo: "#pref_date_2",
				notMatchWith: "#pref_date_3",
				maxlength: 10
			},
			pref_date_2:{
				required : false,
				notEqualTo: "#pref_date_1",
				notMatchWith: "#pref_date_3",
				maxlength: 10
			},
			pref_date_3:{
				required : false,
				notEqualTo: "#pref_date_1",
				notMatchWith: "#pref_date_2",
				maxlength: 10
			},
			visitor_document:{
				required : false
			},
			visit_description:{
				required : false,
				maxlength: 255,
				regex: /^([0-9a-zA-Z,.-\s])+$/i
			},
			visit_support_document:{
				required : false
			},
			addl_visitor_name:{
				required : false,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			addl_visitor_identity_type:{
				required : false,
				maxlength: 20,
				regex : /^([a-zA-Z\s])+$/i
			},
			addl_visitor_id_number:{
				required : false,
				maxlength: 20,
				regex : /^([0-9A-Za-z])+$/i
			},
			addl_visitor_mobile:{
				required : false,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			addl_visitor_document:{
				required : false
			},
			organisation_name:{
				required : false,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			political_party_name:{
				required : false,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_name:{
				required : false,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_description:{
				required : false,
				maxlength: 255,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			event_location:{
				required : false,
				maxlength: 100,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			event_type_invitation:{
				required : false,
				regex : /^([0-9])+$/i
			},
			event_coordinator_name:{
				required : false,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_coordinator_mobile:{
				required : false,
				maxlength: 10,
				regex : /^(\d{10})$/
			},
			dais_sharing_no:{
				required : false,
				regex : /^([0-9])+$/i
			},
			dais_sharing_names:{
				required : false,
				maxlength: 255,
				regex : /^([a-zA-Z,.\s])+$/i
			},
			event_desc_document:{
				required : false
			},
			event_expected_audience:{
				required : false,
				maxlength: 8,
				regex : /^([0-9])+$/i
			},
			event_audiance_type:{
				required : false,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			event_date:{
				required : false,
				maxlength: 10
			},
			event_time:{
				required : false
			},
			event_duration:{
				required : false,
				maxlength: 5,
				regex : /^([0-9.:])+$/i
			},
			draft_document:{
				required : false
			},
			receipt_mode:{
				required : true,
				regex : /^([0-9])+$/i
			},
			receipt_by:{
				required : true,
				maxlength: 80,
				regex : /^([a-zA-Z\s])+$/i
			},
			receipt_date:{
				required : true,
				maxlength: 10
			},
			receipt_remarks:{
				required : true,
				maxlength: 255,
				regex : /^([0-9a-zA-Z,.-\s])+$/i
			},
			msg_sought_for: {
				required : false,
				maxlength: 20,
				regex : /^([a-zA-Z])+$/i
			},
			org_evnt_celb_document:{
				required : false
			},
			party_designation:{
				required : false,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			organisation_type:{
				required : false,
				maxlength: 40,
				regex : /^([a-zA-Z\s])+$/i
			},
			chief_guest_desc:{
				required : false,
				maxlength: 40,
				regex : /^([a-zA-Z,.-\s])+$/i
			},
			captcha:{
				required : true,
				maxlength: 5,
				regex : /^([0-9a-zA-Z])+$/i
			}
		},
		messages : {
			applicant_type : {
				required : "Applicant Type Required."
			},
			applicant_type_name:{
				required : "Other Applicant Type Required."
			},
			purpose_visit:{
				required : "Purpose of Visit Required."
			},
			purpose_visit_name:{
				required : "Other Purpose of Visit Required."
			},
			applicant_name:{
				required : "Applicant Name Required."
			},
			gender:{
				required : "Gender Required."
			},
			district:{
				required : "District Required."
			},
			district_other:{
				required : "District Name Required."
			},
			full_address:{
				required : "Full Address Required."
			},
			pincode:{
				required : "PIN Code Required."
			},
			identity_type:{
				required : "Type of Identity Required."
			},
			applicant_id_no:{
				required : "ID Proof No Required."
			},
			mobile_no:{
				required : "Mobile Number Required."
			},
			alternate_no:{
				required : "Other Contact Number Required."
			},
			email:{
				required : "Email Address Required."
			},
			pref_date_1:{
				required : "This Preferred Date is Required."
			},
			pref_date_2:{
				required : "This Preferred Date is Required."
			},
			pref_date_3:{
				required : "This Preferred Date is Required."
			},
			visitor_document:{
				required : "ID Proof Required."
			},
			visit_description:{
				required : "Description of Visit Required."
			},
			visit_support_document:{
				required : "This field is Required."
			},
			addl_visitor_name:{
				required : "Visitor Name Required."
			},
			addl_visitor_identity_type:{
				required : "Type of Identity Required."
			},
			addl_visitor_id_number:{
				required : "ID proof Number Required."
			},
			addl_visitor_mobile:{
				required : "Mobile Number Required."
			},
			addl_visitor_document:{
				required : "ID Proof Required."
			},
			organisation_name:{
				required : "Organisation Name Required."
			},
			political_party_name:{
				required : "Name of Political Party Required."
			},
			event_name:{
				required : "Name of Event Required."
			},
			event_description:{
				required : "Event Description Required."
			},
			event_location:{
				required : "Event Address Required."
			},
			event_type_invitation:{
				required : "Invitation Type Required."
			},
			event_coordinator_name:{
				required : "Name of Event Coordinator Required."
			},
			event_coordinator_mobile:{
				required : "Coordinator Mobile Number Required."
			},
			dais_sharing_no:{
				required : "No of Dignitaries Sharing Dias Required."
			},
			dais_sharing_names:{
				required : "Details of Dignitaries sharing dais Required."
			},
			event_desc_document:{
				required : "Necessary Document Required."
			},
			event_expected_audience:{
				required : "Expected no of Audience Required."
			},
			event_audiance_type:{
				required : "Type of Audience Required."
			},
			event_date:{
				required : "Date of Event Required."
			},
			event_time:{
				required : "Time of Event Required."
			},
			event_duration:{
				required : "Duration of Event Required."
			},
			draft_document:{
				required : "Document for Message Notes Required."
			},
			receipt_mode:{
				required : "Mode of Receipt Required."
			},
			receipt_by:{
				required : "Received By Required."
			},
			receipt_date:{
				required : "Received Date Required."
			},
			receipt_remarks:{
				required : "Remarks Required."
			},
			msg_sought_for:{
				required : "This field is Required."
			},
			org_evnt_celb_document:{
				required : "This field is Required."
			},
			msg_sought_for: {
				required : "This field is Required."
			},
			org_evnt_celb_document:{
				required : "Document of Organization/Event/Celebration is Required."
			},
			party_designation:{
				required : "This field is Required."
			},
			organisation_type:{
				rrequired : "This field is Required."
			},
			chief_guest_desc:{
				required : "This field is Required."
			},
		    captcha: {
		    	required : "Please Enter Captcha."
		    }
		},
		submitHandler: function(form) {
	        $("#appontment_submit").attr("disabled", true);
	        if($("#applicant_id_no").val() != ''){
		        var parsed_Key = CryptoJS.enc.Base64.parse('QXBwbGljYXRpb25OSUNUUw==');
		        var encryptedData = null;
		        {
			        encryptedData = CryptoJS.AES.encrypt($("#applicant_id_no").val(), parsed_Key, {
			        mode: CryptoJS.mode.ECB,
			        padding: CryptoJS.pad.Pkcs7
			        });
			        $("#applicant_id_no").val(encryptedData.toString());
		        }
	        }
	        form.submit();
	    }
	});
	});
}]);
function fileValidation(fileID) {
	var fileInput = document.getElementById(fileID);
    var filePath = fileInput.value;
    var allowedExtensions = /([a-zA-Z0-9\s_\\.\-\(\):])+(.jpg|.jpeg|.png|.pdf|.doc|.docx)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Please upload file having extensions .pdf .jpeg .png .doc .docx only.');
        fileInput.value = '';
        return false;
    }
    /* if(!fileInput.files[0].type.match('image/*|application/pdf')){
    	console.log('Uploded file is not an image or pdf');
    	fileInput.value = '';
        return false;
    } */
    const file = Math.round((fileInput.files[0].size / 1024));
    if(file > 2048) {
    	console.log(fileInput.files[0].size);
    	alert('File size should not exceed 2 MB.');
        fileInput.value = '';
        return false;
    }
}
</script>
</c:if>
</head>
<body data-ng-controller="appointmentController" data-ng-cloak>
        <div class="wrapper">
            <div class="container-fluid">
                				
          <div class="row">
              <div class="header"><img  class="img-responsive" src="${pageContext.request.contextPath}/img/headernew.png"> </div>
                </div>

<br>
 <div class="container-fluid">
                <div class="row">
                    <div class="gallery">
            <div class="panel">
			<div class="Searchsty">
			<h3 data-ng-if="appoint_data.purpose_visit == null">Schedule an Appointment</h3>
			<c:if test="${not empty master_data}">
				<c:forEach items="${master_data.PurposeVisit}" var="vist">
				<h3 data-ng-if="appoint_data.purpose_visit != null && appoint_data.purpose_visit == ${vist.id}">
					Schedule an Appointment for ${vist.value}
				</h3>
				</c:forEach>
			</c:if>
			<h6>
			<security:authorize access="isAuthenticated()">
             	<a href="${pageContext.request.contextPath}/tsrb.do"><i class="fa fa-home"></i> &nbsp;Home</a>
            </security:authorize>
            <security:authorize access="!isAuthenticated()">
             	<a href="${pageContext.request.contextPath}">HOME</a>
            </security:authorize>
			</h6>
			</div>
			<spring:hasBindErrors name="reg_appointment">
				<div class="container">
				<br/>
					<div class="alert alert-danger alert-dismissible fade in">
						<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
						<strong>Error! ${errors.allErrors[0].defaultMessage}</strong> 
					</div>
				</div>
			</spring:hasBindErrors>
       		<br>
       		<c:if test="${empty reciept_mode}">
       		<form:form id="reg_appointment" action="${pageContext.request.contextPath}/register_appontment.do" method="POST" modelAttribute="reg_appointment" enctype="multipart/form-data" autocomplete="off">
			<div class="container-fluid">
                          <div id="" class="">
			  					<div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
								    	<span class="red">*</span>
                                 		 <form:select path="applicant_type" ng-model="appoint_data.applicant_type" ng-change="applicantTypeChange(appoint_data.applicant_type)" id="applicant_type" class="form-control Preferredsty" >
										 <option value="" disabled="disabled">Applicant Type</option>
										 <form:options items="${master_data.ApplicantType}" itemLabel="value" itemValue="id"/>
									 </form:select>
                                            </div>
                                           </div>
                                           
                                    <div class="row" ng-if="appoint_data.applicant_type == 4">
    									<div class="col-md-4 col-md-offset-4 form-group">
    									<span class="red">*</span>
                                    		<form:input path="applicant_type_name" ng-model="appoint_data.applicant_type_name" type="text" class="form-control Preferredsty" id="" placeholder="Please Specify Your Self."/>
                                    	</div>
                                    </div>
                                           
							   	 <div class="row">
					    		 <div class="col-md-4 col-md-offset-4 form-group">
                                  <span class="red">*</span>
                                  <form:select path="purpose_visit" ng-model="appoint_data.purpose_visit" class="form-control Preferredsty" id="selectorchangediv1">
									 <option value="" disabled="disabled">Purpose of Visit</option>
									 <form:options items="${master_data.PurposeVisit}" itemLabel="value" itemValue="id"/>
								 </form:select>
                                 </div>
                                 </div>
                                           
                                 <div class="row" ng-if="appoint_data.purpose_visit == 7">
									<div class="col-md-4 col-md-offset-4 form-group">
                                 		<span class="red">*</span>
                                 		<form:input path="purpose_visit_name" ng-model="appoint_data.purpose_visit_name" type="text" class="form-control Preferredsty" id="" placeholder="Other Purpose of Visit"/>
                                	</div>
                                 </div>
                                           
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="red">*</span>
                                    <form:input path="applicant_name" ng-model="appoint_data.applicant_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of the Applicant"/>
                                    </div>
                              </div>
                                           
                             <div class="select_org1" id="" data-ng-if="appoint_data.applicant_type == 2">
						   	<div class="row">
						    <div class="col-md-4 col-md-offset-4 form-group">
							<span class="red">*</span>
							<form:input path="political_party_name" ng-model="appoint_data.political_party_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Political Party" />
                                  </div>
                                  </div>
						 	<div class="row">
						    <div class="col-md-4 col-md-offset-4 form-group">
                                     <span class="red">*</span>
                                     <form:input path="party_designation" ng-model="appoint_data.party_designation" type="text" class="form-control Preferredsty" id="" placeholder="Designation in Party" />
                              </div>
                              </div>
                              </div>
                              <div class="select_org1" data-ng-if="appoint_data.applicant_type == 3">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="red">*</span>
                                    <form:input path="organisation_name" ng-model="appoint_data.organisation_name" type="text" class="form-control Preferredsty" id="" placeholder="Organisation Name" />
                                   </div>
                                 </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                   <span class="red">*</span>
                                   <form:input path="organisation_type" ng-model="appoint_data.organisation_type" type="text" class="form-control Preferredsty" id="" placeholder="Type of Organisation" />
                                   </div>
                                  </div>
                                  </div>											
								<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 <span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                 <form:select path="gender" class="form-control Preferredsty" ng-model="appoint_data.gender">
									 <option value="" disabled="disabled">Gender</option>
									 <option value="Male">Male</option>
									 <option value="Female">Female</option>
									 <option value="Others">Others</option>
						   		</form:select>
                                </div>
                                </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                <span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                <span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                <form:select path="district" class="form-control Preferredsty" ng-model="appoint_data.district">
									 <option value="" disabled="disabled">District</option>
									 <form:options items="${master_data.District}" itemLabel="value" itemValue="id"/>
							   </form:select>
                                           </div>
                                           </div>
                              <div class="row" data-ng-if="appoint_data.district == 33">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span class="red">*</span>
                                	<form:input path="district_other" ng-model="appoint_data.district_name" class="form-control Preferredsty" placeholder="Enter your District"/>
                                 </div>
                                 </div>         
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 	<span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                	<form:textarea path="full_address" ng-model="appoint_data.full_address" class="form-control Preferredsty" placeholder="Full Address" rows="3"/>
                                 </div>
                                 </div>
                               <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 	<span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                	<form:input path="pincode" ng-model="appoint_data.pincode" class="form-control Preferredsty" placeholder="PIN Code"/>
                                 </div>
                                 </div>
                               <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 <span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                 <form:select path="identity_type" class="form-control Preferredsty" ng-model="appoint_data.identity_type">
									 <option value="" disabled="disabled">Type of Identity</option>
									 <option value="PAN">PAN</option>
									 <option value="Aadhaar">Aadhaar</option>
									 <option value="Voter Id">Voter Id</option>
									 <option value="Driving Licence">Driving Licence</option>
									 <option value="Passport">Passport</option>
						   		</form:select>
                                </div>
                                </div>
                              <div class="row">
								 <div class="col-md-4 col-md-offset-4 form-group">
                             		<span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 	<span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                             		<form:input path="applicant_id_no" type="text" ng-model="appoint_data.applicant_id_no" class="form-control Preferredsty" placeholder="ID Proof No."/>
                              </div>
                              </div>
							<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                  <span class="red">*</span>
                                  <form:input path="mobile_no" type="text" ng-model="appoint_data.mobile_no" class="form-control Preferredsty" id="" placeholder="Mobile Number" />
                                 </div>
                                 </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                   <span class="red">&nbsp;</span>
                                   &nbsp;<form:input path="alternate_no" ng-model="appoint_data.alternate_no" type="text" class="form-control Preferredsty" id="" placeholder="Alternate Mobile Number"/>
                                   </div>
                                   </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
				    			<span class="red">*</span>
                                	<form:input path="email" ng-model="appoint_data.email" type="text" class="form-control Preferredsty" id="" placeholder="Email Address"/>
                                </div>
                                </div>
						       <div class="sl_msg">
						       <div data-ng-if="appoint_data.purpose_visit != 3">
						       <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div data-ng-if="appoint_data.purpose_visit == null" class="subhead1"> Preferred Dates</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 1" class="subhead1"> Preferred Dates for Submission</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 4 || appoint_data.purpose_visit == 7" class="subhead1"> Preferred Dates for Appointment</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 6" class="subhead1"> Preferred Dates for Event</div>
                                           </div> 
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           1.<form:input path="pref_date_1" ng-model="appoint_data.pref_date_1" type="date" min="${curr_date}" class="form-control PreferredDatesty" placeholder="Preferred Date-1"/>
                                           </div>
                                           </div>
							    <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           2.<form:input path="pref_date_2" ng-model="appoint_data.pref_date_2" type="date" min="${curr_date}" class="form-control PreferredDatesty" placeholder="Preferred Date-2"/>
                                           </div>
                                           </div>
							    <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           3.<form:input path="pref_date_3" ng-model="appoint_data.pref_date_3" type="date" min="${curr_date}" class="form-control PreferredDatesty" placeholder="Preferred Date-3" />
                                           </div>
                                           </div>
                                </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Upload copy of ID.Proof </div>
                                           </div> 
                                           </div>
                                <div class="row">
								    <div data-ng-if="appoint_data.applicant_type != 2" class="col-md-4 col-md-offset-4 form-group">
		                                <span class="red">*</span>
		                                <form:input path="visitor_document" ng-model="appoint_data.visitor_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" id="visitor_document" onchange="return fileValidation('visitor_document')" data-toggle="tooltip" title="Note: Please Upload Copy of ID Proof."/>
	                                </div>
	                                <div data-ng-if="appoint_data.applicant_type == 2" class="col-md-4 col-md-offset-4 form-group">
		                       			<form:input path="visitor_document" ng-model="appoint_data.visitor_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control addlPreferredsty" id="visitor_document" onchange="return fileValidation('visitor_document')" data-toggle="tooltip" title="Note: Please Upload Copy of ID Proof."/>
	                                </div> 
                                </div>
                                  <div data-ng-if="appoint_data.purpose_visit == 3">
                                 <div class="row">
                                 	<div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="red">*</span>
                                 	<form:select path="msg_sought_for" class="form-control Preferredsty" ng-model="appoint_data.msg_sought_for">
										 <option value="" disabled="disabled">Message Sought for</option>
										 <option value="event">Event</option>
										 <option value="organization">Organization</option>
										 <option value="celebration">Celebration</option>
						   			</form:select>
						   			</div>
						   			</div>
						   			<div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Date of Event/Celebration</div>
                                          </div> 
                                          </div>
								   <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
                                         <span class="red">*</span>
                                         <form:input path="pref_date_1" ng-model="appoint_data.pref_date_1" type="date" min="${curr_date}" class="form-control PreferredDatesty" id="" placeholder="Preferred Date-1"/>
                                         </div>
                                    </div>
                                 <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Upload the  Document of Organization/Event/Celebration.</div>
                                          </div> 
                                          </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="red">*</span>
                                     <form:input path="org_evnt_celb_document" ng-model="appoint_data.org_evnt_celb_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" id="org_evnt_celb_document" onchange="return fileValidation('org_evnt_celb_document')" data-toggle="tooltip" title="Note: Please Upload Document of Organization/Event/Celebration.)"/>
                                 </div>
                                 </div>
                                           
                                 <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Upload the Document of Draft Message in word format.</div>
                                          </div> 
                                          </div>
							     <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                  	<span class="red">*</span>
                                  	<form:input path="draft_document" ng-model="appoint_data.draft_document" type="file" accept="image/*, application/pdf, application/msword, text/plain" class="form-control Preferredsty" id="draft_document" onchange="return fileValidation('draft_document')" data-toggle="tooltip" title="Note: Please Upload Draft Message."/>
                                  </div>
                                  </div>
                                 </div>
                                 <div data-ng-if="appoint_data.purpose_visit == 7">
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
								    <span class="red">*</span>
									<form:textarea path="visit_description" ng-model="appoint_data.visit_description" class="form-control Preferredsty" placeholder="Brief Purpose of Visit" rows="3"/>
                                </div>
                                </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Documents, the Applicant Wish to Submit</div>
                                           </div> 
                                           </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="visit_support_document" id="visit_support_document" onchange="return fileValidation('visit_support_document')" ng-model="appoint_data.visit_support_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Please Upload  Support Document."/>
                                           </div>
                                           </div>
                                </div>
                                <div data-ng-if="appoint_data.purpose_visit == 1">
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
								    <span class="red">*</span>
									<form:textarea path="visit_description" ng-model="appoint_data.visit_description" class="form-control Preferredsty" placeholder="Brief Purpose of Visit" rows="3"/>
                                </div>
                                </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Representation, the Applicant Wish to Submit</div>
                                           </div> 
                                           </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="visit_support_document" id="visit_support_document" onchange="return fileValidation('visit_support_document')" ng-model="appoint_data.visit_support_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Please Upload  Support Document."/>
                                           </div>
                                           </div>
                                </div>
                                <div data-ng-if="appoint_data.purpose_visit != 3">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead"> Additional Visitor Details</div>
                                           </div> 
                                           </div>	
								<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_name" ng-model="appoint_data.addl_visitor_name" type="text" class="form-control addlPreferredsty" id="" placeholder="Name of the Additional Visitor" />
                                           </div> 
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <form:select path="addl_visitor_identity_type" class="form-control addlPreferredsty" ng-model="appoint_data.addl_visitor_identity_type" multiple="false">
									 <option value="">Type of Identity</option>
									 <option value="PAN">PAN</option>
									 <option value="Aadhaar">Aadhaar</option>
									 <option value="Voter Id">Voter Id</option>
									 <option value="Driving Licence">Driving Licence</option>
									 <option value="Passport">Passport</option>
						   		</form:select>
                                </div>
                                </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_id_number" ng-model="appoint_data.addl_visitor_id_number" type="text" class="form-control addlPreferredsty" id="" placeholder="Enter Any Photo ID proof Number" />
                                           </div> 
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_mobile" ng-model="appoint_data.addl_visitor_mobile" type="text" class="form-control addlPreferredsty" id="" placeholder="Mobile Number" />
                                           </div> 
                                           </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Upload copy of ID.Proof </div>
                                           </div> 
                                           </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_document" id="addl_visitor_document" onchange="return fileValidation('addl_visitor_document')" ng-model="appoint_data.addl_visitor_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control addlPreferredsty" data-toggle="tooltip" title="Note:Upload Photo ID Proof" />
                                           </div> 
                                           </div>
                                           <div class="row">
							   <div class="inc form-group">

                                           </div>
						       </div>
						       <c:if test="${empty view_appoint}">
						       <div class="row">
									<div class="col-md-4 col-md-offset-4 form-group">
										<span id="addl_error"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4 col-md-offset-4 form-group">
										<button class="btn btn-info" type="button" id="append"
											name="append">+ Add Additional Visitor Details</button>
									</div>
								</div>
							  </c:if>
							  </div>
							 </div>
							    <div class="select_event" id="" data-ng-if="appoint_data.purpose_visit == 6">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span class="red">*</span>
                                	<form:input path="event_name" ng-model="appoint_data.event_details.event_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Event"/>
                                </div>
                                </div>
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="red">*</span>
                                 	<form:textarea path="event_description" ng-model="appoint_data.event_details.event_description" class="form-control Preferredsty" id="" placeholder="Description" rows="3"/>
                                 </div>
                                 </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="red">*</span>
                                 	<form:textarea path="event_location" ng-model="appoint_data.event_details.event_location" class="form-control Preferredsty" id="" placeholder="Event Venue Address" rows="3"/>
                                 </div>
                                 </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                <span class="red">*</span>
                                <form:select path="event_type_invitation" class="form-control Preferredsty" ng-model="appoint_data.event_details.event_type_invitation">
									 <option value="" disabled="disabled">Type of Invitation</option>
									 <form:options items="${master_data.TypeInvitaion}" itemLabel="value" itemValue="id"/>
							   </form:select>
                                           </div>
                                           </div>
                               <div class="row" data-ng-if="appoint_data.event_details.event_type_invitation == 2">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                     <span class="red">*</span>
                                     <form:input path="event_chief_guest_desc" class="form-control Preferredsty" ng-model="appoint_data.event_details.chief_guest_desc" placeholder="Name & Disignation of Chief Guest" />
                                  </div>
                               </div>
							 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="event_coordinator_name" ng-model="appoint_data.event_details.event_coordinator_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Event Coordinator"/>
                                           </div>
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="event_coordinator_mobile" ng-model="appoint_data.event_details.event_coordinator_mobile" type="text" class="form-control Preferredsty" id="" placeholder="Coordinator Mobile Number"/>
                                           </div>
                                           </div>
							 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="dais_sharing_no" ng-model="appoint_data.event_details.dais_sharing_no" type="text" class="form-control Preferredsty" id="" placeholder="No of Dignitaries Sharing Dias"/>
                                           </div>
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="dais_sharing_names" ng-model="appoint_data.event_details.dais_sharing_names" type="text" class="form-control Preferredsty" id="" placeholder="Details of Dignitaries sharing dais. (separated by comma)"/>
                                           </div>
                                           </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Document of Event</div>
                                           </div> 
                                           </div>
					         <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="event_desc_document" id="event_desc_document" onchange="return fileValidation('event_desc_document')" ng-model="appoint_data.event_details.event_desc_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Upload Necessary Documents"/>
                                           </div>
                                           </div>	
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="event_expected_audience" ng-model="appoint_data.event_details.event_expected_audience" type="text" class="form-control Preferredsty" id="" placeholder="Expected no of Audience"/>
                                           </div>
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
		                                <span class="red">*</span>
		                                <form:input path="event_audiance_type" class="form-control Preferredsty" ng-model="appoint_data.event_details.event_audiance_type" placeholder="Type of Audiance"/>
                                  </div>
                               </div>
								  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
							    <span class="red">*</span>
								<div class="row Preferredsty">
							    <div class="col-md-6">
                                           <form:input path="event_date" ng-model="appoint_data.event_details.event_date" type="date" min="${curr_date}" class="form-control Preferredsty" id="" placeholder="Date of Event"/>
							   </div>
							   <div class="col-md-6">
							   <form:input path="event_time" ng-model="appoint_data.event_details.event_time" type="time" class="form-control Preferredsty" id="" placeholder="Time"/>
                                           </div>
                                           </div>	
                                           </div>	
                                           </div>	
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="event_duration" ng-model="appoint_data.event_details.event_duration" type="text" class="form-control Preferredsty" id="" placeholder="Duration of Event (Hrs.)"/>
                                           </div>
                                           </div>
                                           </div>								   
                                <%-- <c:if test="${empty reciept_mode}">
									<div class="row">
										<div class="col-md-4 col-md-offset-4 form-group">
											<div class="btn btn-info">Generate OTP</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4 col-md-offset-4 form-group">
											<input type="text" class="form-control addlPreferredsty" id=""
												placeholder="Enter OTP">
										</div>
									</div>
								</c:if> --%>
					<div class="row">
						<div class="col-md-2 col-md-offset-4 form-group">
							<div>
								<img alt="captcha" class="img-thumbnail" src="data:image/png;base64,${captchaEncode}"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-md-offset-4 form-group">
							<span class="red">*</span>
							<form:input path="captcha" type="text" class="form-control Preferredsty"
								placeholder="Enter Captcha"/>
							<c:if test="${not empty captcha_math}">
								<span class="error">${captcha_math}</span>
							</c:if>	
						</div>
					</div>
					</div>
					<br><br>
						<div class="col-sm-3 col-md-offset-5">
							<c:if test="${empty view_appoint}">
								<security:authorize access="isAuthenticated()">
									<a href="${pageContext.request.contextPath}/rb_chief/new_appontment.do"><div class="btn btn-md btn-info">Reset</div></a>
								</security:authorize>
								<security:authorize  access="!isAuthenticated()">
									<a href="${pageContext.request.contextPath}/register_appontment.do"><div class="btn btn-md btn-info">Reset</div></a>
								</security:authorize>
								<input type="hidden"
							           name="${_csrf.parameterName}"
							           value="${_csrf.token}"/>
								<button id="appontment_submit" class="btn btn-md btn-info" type="submit">Submit</button>
							</c:if>
						</div>
					  <br><br>
					  <br><br>
					</div>
			</form:form>
			</c:if>
			<c:if test="${not empty reciept_mode}">
       		<form:form id="reg_appointment" action="${pageContext.request.contextPath}/register_appontment.do" method="POST" modelAttribute="reg_appointment" enctype="multipart/form-data" autocomplete="off">
			<div class="container-fluid">
                          <div id="" class="">
			  					<div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
								    	<span class="red">*</span>
                                 		 <form:select path="applicant_type" ng-model="appoint_data.applicant_type" ng-change="applicantTypeChange(appoint_data.applicant_type)" id="applicant_type" class="form-control Preferredsty" >
										 <option value="" disabled="disabled">Applicant Type</option>
										 <form:options items="${master_data.ApplicantType}" itemLabel="value" itemValue="id"/>
									 </form:select>
                                            </div>
                                           </div>
                                           
                                    <div class="row" ng-if="appoint_data.applicant_type == 4">
    									<div class="col-md-4 col-md-offset-4 form-group">
    									<span class="red">*</span>
                                    		<form:input path="applicant_type_name" ng-model="appoint_data.applicant_type_name" type="text" class="form-control Preferredsty" id="" placeholder="Please Specify Your Self."/>
                                    	</div>
                                    </div>
                                           
							   	 <div class="row">
					    		 <div class="col-md-4 col-md-offset-4 form-group">
                                  <span class="red">*</span>
                                  <form:select path="purpose_visit" ng-model="appoint_data.purpose_visit" class="form-control Preferredsty" id="selectorchangediv1">
									 <option value="" disabled="disabled">Purpose of Visit</option>
									 <form:options items="${master_data.PurposeVisit}" itemLabel="value" itemValue="id"/>
								 </form:select>
                                 </div>
                                 </div>
                                           
                                 <div class="row" ng-if="appoint_data.purpose_visit == 7">
									<div class="col-md-4 col-md-offset-4 form-group">
                                 		<span class="red">*</span>
                                 		<form:input path="purpose_visit_name" ng-model="appoint_data.purpose_visit_name" type="text" class="form-control Preferredsty" id="" placeholder="Other Purpose of Visit"/>
                                	</div>
                                 </div>
                                           
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="red">*</span>
                                    <form:input path="applicant_name" ng-model="appoint_data.applicant_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of the Applicant"/>
                                    </div>
                              </div>
                                           
                             <div class="select_org1" id="" data-ng-if="appoint_data.applicant_type == 2">
						   	<div class="row">
						    <div class="col-md-4 col-md-offset-4 form-group">
							<span class="white">*</span>
							<form:input path="political_party_name" ng-model="appoint_data.political_party_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Political Party" />
                                  </div>
                                  </div>
						 	<div class="row">
						    <div class="col-md-4 col-md-offset-4 form-group">
                                     <span class="white">*</span>
                                     <form:input path="party_designation" ng-model="appoint_data.party_designation" type="text" class="form-control Preferredsty" id="" placeholder="Designation in Party" />
                              </div>
                              </div>
                              </div>
                              <div class="select_org1" data-ng-if="appoint_data.applicant_type == 3">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="white">*</span>
                                    <form:input path="organisation_name" ng-model="appoint_data.organisation_name" type="text" class="form-control Preferredsty" id="" placeholder="Organisation Name" />
                                   </div>
                                 </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                   <span class="white">*</span>
                                   <form:input path="organisation_type" ng-model="appoint_data.organisation_type" type="text" class="form-control Preferredsty" id="" placeholder="Type of Organisation" />
                                   </div>
                                  </div>
                                  </div>											
								<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                 <span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                 <form:select path="gender" class="form-control Preferredsty" ng-model="appoint_data.gender">
									 <option value="" disabled="disabled">Gender</option>
									 <option value="Male">Male</option>
									 <option value="Female">Female</option>
									 <option value="Others">Others</option>
						   		</form:select>
                                </div>
                                </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                <span ng-if="appoint_data.applicant_type == null || appoint_data.applicant_type != 2" class="red">*</span>
                                <span ng-if="appoint_data.applicant_type == 2" class="white">*</span>
                                <form:select path="district" class="form-control Preferredsty" ng-model="appoint_data.district">
									 <option value="" disabled="disabled">District</option>
									 <form:options items="${master_data.District}" itemLabel="value" itemValue="id"/>
							   </form:select>
                                           </div>
                                           </div>
                              <div class="row" data-ng-if="appoint_data.district == 33">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span class="red">*</span>
                                	<form:input path="district_other" ng-model="appoint_data.district_name" class="form-control Preferredsty" placeholder="Enter your District"/>
                                 </div>
                                 </div>         
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                                	<form:textarea path="full_address" ng-model="appoint_data.full_address" class="form-control Preferredsty" placeholder="Full Address" rows="3"/>
                                 </div>
                                 </div>
                               <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                                	<form:input path="pincode" ng-model="appoint_data.pincode" class="form-control Preferredsty" placeholder="PIN Code"/>
                                 </div>
                                 </div>
                               <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <span class="white">*</span>
                                 <form:select path="identity_type" class="form-control Preferredsty" ng-model="appoint_data.identity_type">
									 <option value="" disabled="disabled">Type of Identity</option>
									 <option value="PAN">PAN</option>
									 <option value="Aadhaar">Aadhaar</option>
									 <option value="Voter Id">Voter Id</option>
									 <option value="Driving Licence">Driving Licence</option>
									 <option value="Passport">Passport</option>
						   		</form:select>
                                </div>
                                </div>
                              <div class="row">
								 <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                             		<form:input path="applicant_id_no" type="text" ng-model="appoint_data.applicant_id_no" class="form-control Preferredsty" placeholder="ID Proof No."/>
                              </div>
                              </div>
							<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                  <span class="red">*</span>
                                  <form:input path="mobile_no" type="text" ng-model="appoint_data.mobile_no" class="form-control Preferredsty" id="" placeholder="Mobile Number" />
                                 </div>
                                 </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                   <span class="red">&nbsp;</span>
                                   &nbsp;<form:input path="alternate_no" ng-model="appoint_data.alternate_no" type="text" class="form-control Preferredsty" id="" placeholder="Alternate Mobile Number"/>
                                   </div>
                                   </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
				    			<span class="red">*</span>
                                	<form:input path="email" ng-model="appoint_data.email" type="text" class="form-control Preferredsty" id="" placeholder="Email Address"/>
                                </div>
                                </div>
						       <div class="sl_msg">
						       <div data-ng-if="appoint_data.purpose_visit != 3">
						       <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div data-ng-if="appoint_data.purpose_visit == null" class="subhead1"> Preferred Dates</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 1" class="subhead1"> Preferred Dates for Submission</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 4 || appoint_data.purpose_visit == 7" class="subhead1"> Preferred Dates for Appointment</div>
                                           <div data-ng-if="appoint_data.purpose_visit == 6" class="subhead1"> Preferred Dates for Event</div>
                                           </div> 
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           1.<form:input path="pref_date_1" ng-model="appoint_data.pref_date_1" type="date" min="${curr_date}" class="form-control PreferredDatesty1" placeholder="Preferred Date-1"/>
                                           </div>
                                           </div>
							    <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           2.<form:input path="pref_date_2" ng-model="appoint_data.pref_date_2" type="date" min="${curr_date}" class="form-control PreferredDatesty1" placeholder="Preferred Date-2"/>
                                           </div>
                                           </div>
							    <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           3.<form:input path="pref_date_3" ng-model="appoint_data.pref_date_3" type="date" min="${curr_date}" class="form-control PreferredDatesty1" placeholder="Preferred Date-3" />
                                           </div>
                                           </div>
                                </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Upload copy of ID.Proof </div>
                                           </div> 
                                           </div>
                                <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
		                                <form:input path="visitor_document" ng-model="appoint_data.visitor_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control addlPreferredsty" id="visitor_document" onchange="return fileValidation('visitor_document')" data-toggle="tooltip" title="Note: Please Upload Copy of ID Proof."/>
	                                </div>
	                                
                                </div>
                                  <div data-ng-if="appoint_data.purpose_visit == 3">
                                 <div class="row">
                                 	<div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                                 	<form:select path="msg_sought_for" class="form-control Preferredsty" ng-model="appoint_data.msg_sought_for">
										 <option value="" disabled="disabled">Message Sought for</option>
										 <option value="event">Event</option>
										 <option value="organization">Organization</option>
										 <option value="celebration">Celebration</option>
						   			</form:select>
						   			</div>
						   			</div>
						   			<div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Date of Event/Celebration</div>
                                          </div> 
                                          </div>
								   <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
                                         <span class="white">*</span>
                                         <form:input path="pref_date_1" ng-model="appoint_data.pref_date_1" type="date" min="${curr_date}" class="form-control PreferredDatesty" id="" placeholder="Preferred Date-1"/>
                                         </div>
                                    </div>
                                 <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Upload the  Document of Organization/Event/Celebration.</div>
                                          </div> 
                                          </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                    <span class="white">*</span>
                                     <form:input path="org_evnt_celb_document" ng-model="appoint_data.org_evnt_celb_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" id="org_evnt_celb_document" onchange="return fileValidation('org_evnt_celb_document')" data-toggle="tooltip" title="Note: Please Upload Document of Organization/Event/Celebration.)"/>
                                 </div>
                                 </div>
                                           
                                 <div class="row">
								    <div class="col-md-4 col-md-offset-4 form-group">
	                                           <div class="subhead1"> Upload the Document of Draft Message in word format.</div>
                                          </div> 
                                          </div>
							     <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                  	<span class="white">*</span>
                                  	<form:input path="draft_document" ng-model="appoint_data.draft_document" type="file" accept="image/*, application/pdf, application/msword, text/plain" class="form-control Preferredsty" id="draft_document" onchange="return fileValidation('draft_document')" data-toggle="tooltip" title="Note: Please Upload Draft Message."/>
                                  </div>
                                  </div>
                                 </div>
                                 <div data-ng-if="appoint_data.purpose_visit == 7">
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
								    <span class="red">*</span>
									<form:textarea path="visit_description" ng-model="appoint_data.visit_description" class="form-control Preferredsty" placeholder="Brief Purpose of Visit" rows="3"/>
                                </div>
                                </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Documents, the Applicant Wish to Submit</div>
                                           </div> 
                                           </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="visit_support_document" id="visit_support_document" onchange="return fileValidation('visit_support_document')" ng-model="appoint_data.visit_support_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Please Upload  Support Document."/>
                                           </div>
                                           </div>
                                </div>
                                <div data-ng-if="appoint_data.purpose_visit == 1">
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
								    <span class="red">*</span>
									<form:textarea path="visit_description" ng-model="appoint_data.visit_description" class="form-control Preferredsty" placeholder="Brief Purpose of Visit" rows="3"/>
                                </div>
                                </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Representation, the Applicant Wish to Submit</div>
                                           </div> 
                                           </div>
                                 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="visit_support_document" id="visit_support_document" onchange="return fileValidation('visit_support_document')" ng-model="appoint_data.visit_support_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Please Upload  Support Document."/>
                                           </div>
                                           </div>
                                </div>
                                <div data-ng-if="appoint_data.purpose_visit != 3">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead"> Additional Visitor Details</div>
                                           </div> 
                                           </div>	
								<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_name" ng-model="appoint_data.addl_visitor_name" type="text" class="form-control addlPreferredsty" id="" placeholder="Name of the Additional Visitor" />
                                           </div> 
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <form:select path="addl_visitor_identity_type" class="form-control addlPreferredsty" ng-model="appoint_data.addl_visitor_identity_type" multiple="false">
									 <option value="">Type of Identity</option>
									 <option value="PAN">PAN</option>
									 <option value="Aadhaar">Aadhaar</option>
									 <option value="Voter Id">Voter Id</option>
									 <option value="Driving Licence">Driving Licence</option>
									 <option value="Passport">Passport</option>
						   		</form:select>
                                </div>
                                </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_id_number" ng-model="appoint_data.addl_visitor_id_number" type="text" class="form-control addlPreferredsty" id="" placeholder="Enter Any Photo ID proof Number" />
                                           </div> 
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_mobile" ng-model="appoint_data.addl_visitor_mobile" type="text" class="form-control addlPreferredsty" id="" placeholder="Mobile Number" />
                                           </div> 
                                           </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Upload copy of ID.Proof </div>
                                           </div> 
                                           </div>
                                <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <form:input path="addl_visitor_document" id="addl_visitor_document" onchange="return fileValidation('addl_visitor_document')" ng-model="appoint_data.addl_visitor_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control addlPreferredsty" data-toggle="tooltip" title="Note:Upload Photo ID Proof" />
                                           </div> 
                                           </div>
                                           <div class="row">
							   <div class="inc form-group">

                                           </div>
						       </div>
						       <c:if test="${empty view_appoint}">
						       <div class="row">
									<div class="col-md-4 col-md-offset-4 form-group">
										<span id="addl_error"></span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-4 col-md-offset-4 form-group">
										<button class="btn btn-info" type="button" id="append"
											name="append">+ Add Additional Visitor Details</button>
									</div>
								</div>
							  </c:if>
							  </div>
							 </div>
							    <div class="select_event" id="" data-ng-if="appoint_data.purpose_visit == 6">
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                	<span class="white">*</span>
                                	<form:input path="event_name" ng-model="appoint_data.event_details.event_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Event"/>
                                </div>
                                </div>
							  	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                                 	<form:textarea path="event_description" ng-model="appoint_data.event_details.event_description" class="form-control Preferredsty" id="" placeholder="Description" rows="3"/>
                                 </div>
                                 </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 	<span class="white">*</span>
                                 	<form:textarea path="event_location" ng-model="appoint_data.event_details.event_location" class="form-control Preferredsty" id="" placeholder="Event Venue Address" rows="3"/>
                                 </div>
                                 </div>
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                <span class="white">*</span>
                                <form:select path="event_type_invitation" class="form-control Preferredsty" ng-model="appoint_data.event_details.event_type_invitation">
									 <option value="" disabled="disabled">Type of Invitation</option>
									 <form:options items="${master_data.TypeInvitaion}" itemLabel="value" itemValue="id"/>
							   </form:select>
                                           </div>
                                           </div>
                               <div class="row" data-ng-if="appoint_data.event_details.event_type_invitation == 2">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                     <span class="white">*</span>
                                     <form:input path="event_chief_guest_desc" class="form-control Preferredsty" ng-model="appoint_data.event_details.chief_guest_desc" placeholder="Name & Disignation of Chief Guest" />
                                  </div>
                               </div>
							 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="white">*</span>
                                           <form:input path="event_coordinator_name" ng-model="appoint_data.event_details.event_coordinator_name" type="text" class="form-control Preferredsty" id="" placeholder="Name of Event Coordinator"/>
                                           </div>
                                           </div>
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="white">*</span>
                                           <form:input path="event_coordinator_mobile" ng-model="appoint_data.event_details.event_coordinator_mobile" type="text" class="form-control Preferredsty" id="" placeholder="Coordinator Mobile Number"/>
                                           </div>
                                           </div>
							 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="dais_sharing_no" ng-model="appoint_data.event_details.dais_sharing_no" type="text" class="form-control Preferredsty" id="" placeholder="No of Dignitaries Sharing Dias"/>
                                           </div>
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="dais_sharing_names" ng-model="appoint_data.event_details.dais_sharing_names" type="text" class="form-control Preferredsty" id="" placeholder="Details of Dignitaries sharing dais. (separated by comma)"/>
                                           </div>
                                           </div>
                              <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <div class="subhead1"> Please Upload the Document of Event</div>
                                           </div> 
                                           </div>
					         <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="white">*</span>
                                           <form:input path="event_desc_document" id="event_desc_document" onchange="return fileValidation('event_desc_document')" ng-model="appoint_data.event_details.event_desc_document" type="file" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" class="form-control Preferredsty" placeholder=""  data-toggle="tooltip" title="Note: Upload Necessary Documents"/>
                                           </div>
                                           </div>	
							   	<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="white">*</span>
                                           <form:input path="event_expected_audience" ng-model="appoint_data.event_details.event_expected_audience" type="text" class="form-control Preferredsty" id="" placeholder="Expected no of Audience"/>
                                           </div>
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
		                                <span class="white">*</span>
		                                <form:input path="event_audiance_type" class="form-control Preferredsty" ng-model="appoint_data.event_details.event_audiance_type" placeholder="Type of Audiance"/>
                                  </div>
                               </div>
								  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
							    <span class="white">*</span>
								<div class="row Preferredsty">
							    <div class="col-md-6">
                                           <form:input path="event_date" ng-model="appoint_data.event_details.event_date" type="date" min="${curr_date}" class="form-control Preferredsty" id="" placeholder="Date of Event"/>
							   </div>
							   <div class="col-md-6">
							   <form:input path="event_time" ng-model="appoint_data.event_details.event_time" type="time" class="form-control Preferredsty" id="" placeholder="Time"/>
                                           </div>
                                           </div>	
                                           </div>	
                                           </div>	
							  <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="white">*</span>
                                           <form:input path="event_duration" ng-model="appoint_data.event_details.event_duration" type="text" class="form-control Preferredsty" id="" placeholder="Duration of Event (Hrs.)"/>
                                           </div>
                                           </div>
                                           </div>								   
                                           		<div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                 <span class="red">*</span>
                                 <form:select path="receipt_mode" class="form-control Preferredsty" ng-model="appoint_data.receipt_mode">
									 <option value="" disabled="disabled">Mode of Receipt</option>
									 <option value="1">By Post</option>
									 <option value="2">By Email</option>
									 <option value="3">In Person</option>
									 <option value="4">By Call</option>
								 </form:select>
                                           </div>
                                           </div>
							   <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="receipt_by" type="text" ng-model="appoint_data.receipt_by" class="form-control Preferredsty" id="" placeholder="Received By"/>
                                           </div>
                                           </div>
					            <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                           <span class="red">*</span>
                                           <form:input path="receipt_date" type="date" ng-model="appoint_data.receipt_date" class="form-control Preferredsty" id="" placeholder="Received Date"/>
                                           </div>
                                           </div>
							 <div class="row">
							    <div class="col-md-4 col-md-offset-4 form-group">
                                          <span class="red">*</span>
                                          <form:textarea path="receipt_remarks" class="form-control Preferredsty" ng-model="appoint_data.receipt_remarks" placeholder="Remarks" rows="3"/>
                                           </div>
                                           </div>
                                <%-- <c:if test="${empty reciept_mode}">
									<div class="row">
										<div class="col-md-4 col-md-offset-4 form-group">
											<div class="btn btn-info">Generate OTP</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-4 col-md-offset-4 form-group">
											<input type="text" class="form-control addlPreferredsty" id=""
												placeholder="Enter OTP">
										</div>
									</div>
								</c:if> --%>
					<div class="row">
						<div class="col-md-2 col-md-offset-4 form-group">
							<div>
								<img alt="captcha" class="img-thumbnail" src="data:image/png;base64,${captchaEncode}"/>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-md-offset-4 form-group">
							<span class="red">*</span>
							<form:input path="captcha" type="text" class="form-control Preferredsty"
								placeholder="Enter Captcha"/>
							<c:if test="${not empty captcha_math}">
								<span class="error">${captcha_math}</span>
							</c:if>	
						</div>
					</div>
					</div>
					<br><br>
						<div class="col-sm-3 col-md-offset-5">
							<c:if test="${empty view_appoint}">
								<security:authorize access="isAuthenticated()">
									<a href="${pageContext.request.contextPath}/rb_chief/new_appontment.do"><div class="btn btn-md btn-info">Reset</div></a>
								</security:authorize>
								<security:authorize  access="!isAuthenticated()">
									<a href="${pageContext.request.contextPath}/register_appontment.do"><div class="btn btn-md btn-info">Reset</div></a>
								</security:authorize>
								<input type="hidden"
							           name="${_csrf.parameterName}"
							           value="${_csrf.token}"/>
								<button id="appontment_submit" class="btn btn-md btn-info" type="submit">Submit</button>
							</c:if>
						</div>
					  <br><br>
					  <br><br>
					</div>
			</form:form>
			</c:if>
			</div>
			</div>
			</div>
			</div>
			<c:if test="${empty view_appoint}">
				<div id="myModal-pop" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content" style="border: 6px solid #5155bd;">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<img src="${pageContext.request.contextPath}/img/headernew.png"
								style="width: 100%; background: #5155bd;">
							<h4 class="modal-title"
								style="text-align: center; color: #0b487b;">
								<br>
								<br>
								<p style="text-align: center;">
									To Seek Appointment with Hon'ble Governor <br>Please Fill
									The Appointment Form and press Submit to Adc.<br>
								</p>

							</h4>
						</div>
						<div class="modal-footer" style="padding: 2px !important;">
							<div class="" style="text-align: center;">
								<button type="button" class="btn btn-primary"
									data-dismiss="modal" aria-hidden="true">OK</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			</c:if>
			<div class="row footer">	
                    <div class="">
                        <div class="col-md-12">
                        <p>2020 © Copyright by National Informatics Center, Hyderabad</p>	
                           
                        </div>

                    </div>
                </div>
        </div>
        </div>
    </body>
      <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/pdfview.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/lan.js"></script>
  		<script src="${pageContext.request.contextPath}/vendor/js/easy-ticker.js" type="text/javascript"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/ticker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/app_code_3.js"></script>
<!-- 	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css"> -->
<script type="text/javascript">
$(document).ready(function() {
    $('[data-toggle="tooltip"]').tooltip();  
    document.onkeydown=function(e){return 123!=event.keyCode&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="I".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="J".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="U".charCodeAt(0))&&((!e.ctrlKey||e.keyCode!="U".charCodeAt(0))&&void 0))))};
    $("body").on("contextmenu",function(e){
    	alert('Sorry, this functionality is disabled!');
        return false;
     });
});
</script>
<c:if test="${pageContext.request.method eq 'GET'}">	
<script type="text/javascript">
  $(document).ready(function () {
      $("#myModal-pop").modal('show');
  });
</script>
</c:if>
</html>