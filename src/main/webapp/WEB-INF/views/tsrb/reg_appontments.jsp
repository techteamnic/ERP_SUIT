<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<html data-ng-app="rbts">
<head>
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
<meta name="referrer" content="no-referrer">
<!-- <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://cdn.datatables.net/; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://cdn.datatables.net/; font-src 'self'; frame-src; object-src "> -->
<style type="text/css">
[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
  display: none !important;
}
.center {
  text-align: center;
}
.modal-vertical-centered {
transform: translate(0, 50%) !important;
-ms-transform: translate(0, 50%) !important; /* IE 9 */
-webkit-transform: translate(0, 50%) !important; /* Safari and Chrome */
}

/* @media screen {
  #printSection {
      display: none;
  }
}

@media print {
  body * {
    visibility:hidden;
  }
  #printSection, #printSection * {
    visibility:visible;
  }
  #printSection {
    position:absolute;
    left:0;
    top:0;
  }
} */

body, #main-container {
  height: auto;
}
</style>
<script> 
function printDiv() { 
//     var divContents = document.getElementById("printThis").innerHTML; 
    /* var a = window.open(); 
    a.document.write('<html>'); 
    a.document.write('<body>'); 
    a.document.write(divContents); 
    a.document.write('</body></html>'); 
    a.document.close(); 
    a.print();  */
//     var restorepage = $('body').html();
    var printcontent = $('#printThis').clone();
    $('body').empty().html(printcontent);
    window.print();
//     $('body').html(restorepage);
    setInterval(function() {
    	location.reload();
      }, 1000);
} 
</script>
<script type="text/javascript">
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var appontments = ${appontments};
var app = angular.module("rbts", []);
app.controller('appointmentsController', ['$scope','$filter', function ($scope,$filter) {
	$scope.appontments = appontments;
	$(document).ready(function() {
	    $.validator.addMethod("regex", 
 		   function(value, element, regexp) {
 		       var check = false;
 		       return this.optional(element) || regexp.test(value);
 		   },
 		   "Please check your input."
 		);
	    $.validator.addMethod('filesize', function(value, element, param) {
    	    return this.optional(element) || (element.files[0].size <= param) 
    	});
	    $('.appoint_msg_form').each(function (index) {
		    $(this).validate({
				rules : {
					appoint_file : {
						required : true,
						filesize: 2097152
					}
				},
				messages : {
					appoint_file : {
						required : "Final Document is required.",
						filesize : "Final Document size should be less than 2MB."
					}
				}
		    });
	    });
	    
	    $('.appoint_time').datetimepicker({
    		datepicker: false,
    		ampm: true,
    		step: 10,
    		format:	'H:i A'
    	});
	    $('#example').DataTable();
	});
	
	$scope.chooseDate = function(){
		$('.appoint_time').datetimepicker({
    		datepicker: false,
    		ampm: true,
    		step: 10,
    		format:	'H:i A'
    	});
	}
	
	$scope.application_status = function(appointment){
		$scope.error = [];
		if(appointment.appl_status == null && appointment.appl_forward_to == null)
        	$scope.error.push('Either of one (Action / Forward To) is Required.');
        else if (appointment.appl_status != null && appointment.appl_status != ""){
        	if(appointment.appl_forward_to != null && appointment.appl_forward_to != ""){
        		$scope.error.push('One of Two (Action / Forward To) is Required.');
        	}
       	}
		
		if(appointment.appl_status != null && appointment.appl_status == "" && appointment.appl_forward_to != null && appointment.appl_forward_to == ""){
			$scope.error.push('Either of one (Action / Forward To) is Required.');
		}
		
        
        if(appointment.appl_status_remark == null)
        	$scope.error.push('Notes is Required.');
        else{
        	var notes = appointment.appl_status_remark;
        	var regex = /^([0-9a-zA-Z,. ])+$/;
        	if(!notes.match(regex))
       			$scope.error.push('Notes is invalid.');
        }

        if($scope.error.length > 0) {
        	$scope.dispErrors= $scope.error;
        	$("#error_model").modal('show');
        }else {
        	$.ajax({
    	        method: "POST",
    	        headers: {
    	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
    	        },
    	        url: "application_status.do",
    	        data: {
    	        	visit_id: appointment.visit_id,
    	        	appl_status: appointment.appl_status,
    	        	appl_forward_to: appointment.appl_forward_to,
    	        	appl_status_remark: appointment.appl_status_remark
    	        },
    	        beforeSend: function(xhr) {
    	        	$("#wait_modal").modal('show');
    	            xhr.setRequestHeader(header, token);
    	        },
    	        success: function(data) {
    	        	$("#wait_modal").modal('hide');
    	        	location.reload();
    	        },
    	        error: function(data){
    	        	if(data.responseJSON.message != null){
   	        		$("#wait_modal").modal('hide');	
   	        		alert(data.responseJSON.message);
    	          }
    	        }
    	    });
        } 
	}
	
	$scope.appointment_status = function(appointment){
		$scope.error = [];
		if(appointment.appoint_date == null)
        	$scope.error.push('Appointment Date is Required.');
		else 
			appointment.appoint_date = $filter('date')(appointment.appoint_date, "dd-MM-yyyy");
		
		if(appointment.appoint_time == null)
			$scope.error.push('Appointment Time is Required.');
		else 
			appointment.appoint_time = $filter('date')(appointment.appoint_time, "h:mm a");
		
        if(appointment.appl_appv_status_remark == null)
        	$scope.error.push('Notes is Required.');
        else{
        	var notes = appointment.appl_appv_status_remark;
        	var regex = /^([0-9a-zA-Z,. ])+$/;
        	if(!notes.match(regex))
        		$scope.error.push('Notes is invalid.');
        }
        
        if($scope.error.length > 0) {
        	$scope.dispErrors= $scope.error;
        	$("#error_model").modal('show');
        }else {
        	$.ajax({
    	        method: "POST",
    	        headers: {
    	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
    	        },
    	        url: "appointment_status.do",
    	        data: {
    	        	visit_id: appointment.visit_id,
    	        	appoint_date: appointment.appoint_date,
    	        	appoint_time: appointment.appoint_time,
    	        	letter_sent: appointment.letter_sent,
    	        	appl_appv_status_remark: appointment.appl_appv_status_remark
    	        },
    	        beforeSend: function(xhr) {
    	        	$("#wait_modal").modal('show');
    	            xhr.setRequestHeader(header, token);
    	        },
    	        success: function(data) {
    	        	$("#wait_modal").modal('hide');
    	        	if(data == 'CONFLICT')
    	        		$("#conflict").modal('show');
    	        	else
    	        		location.reload();
    	        },
    	        error: function(data){
    	        	if(data.responseJSON.message != null)
    	        		alert(data.responseJSON.message);
    	        }
    	    });
        } 
	}
	
	$scope.getApplicationData = function(id) {
	    $.ajax({
	        method: "POST",
	        headers: {
	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
	        },
	        url: "view_appointment.do",
	        data: {
	        	visitor_id: id
	        },
	        beforeSend: function(xhr) {
	            xhr.setRequestHeader(header, token);
	        },
	        success: function(data) {
	        	$scope.appoint_data = data;
	        	$("#application_view").modal('show');
	        	$scope.$apply();
	        },
	        error: function(data){
	        	if(data.responseJSON.message != null)
	        		alert(data.responseJSON.message);
	        	else 
	        		location.reload();
	        },
	    });
	}
	
	$scope.getSupportDocument = function(supp_doc_id) {
	    $.ajax({
	        method: "POST",
	        headers: {
	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
	        },
	        url: "supportDocument.do",
	        data: {
	        	supp_doc_id: supp_doc_id
	        },
	        beforeSend: function(xhr) {
	            xhr.setRequestHeader(header, token);
	        },
	        success: function(data) {
	        	$scope.supportdoc = 'data:application/pdf;base64,' + data;
	        	console.log($scope.supportdoc);
	        	$scope.$apply();
                $('#pdfdata').attr({
                    href: $scope.supportdoc
                })
	        }
	    });
	}
	
	$scope.changeDashBoard = function(appl_status, purpose_visit) {
		$scope.month = "";
	    $.ajax({
	        method: "GET",
	        headers: {
	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
	        },
	        url: "changeDashBoardAppoint.do",
	        data: {
	        	appl_status: appl_status,
	        	purpose_visit: purpose_visit
	        },
	        beforeSend: function(xhr) {
	        	$("#wait_modal").modal('show');
	            xhr.setRequestHeader(header, token);
	        },
	        success: function(data) {
        		$scope.appontments = data;
 	        	$scope.$apply();
	        },
	        error: function(data){
	        	if(data.responseJSON.message != null)
	        		alert(data.responseJSON.message);
	        	else
	        	    location.reload();
	        },
	        complete:function(data){
        		$("#wait_modal").modal('hide');
           }
	    });
	}
	
	$scope.changeDashBoardByMonth = function(appl_status, month) {
		$scope.purpose_visit = "";
	    $.ajax({
	        method: "GET",
	        headers: {
	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
	        },
	        url: "changeDashBoardByMonth.do",
	        data: {
	        	appl_status: appl_status,
	        	month: month
	        },
	        beforeSend: function(xhr) {
	        	$("#wait_modal").modal('show');
	            xhr.setRequestHeader(header, token);
	        },
	        success: function(data) {
        		$scope.appontments = data;
 	        	$scope.$apply();
	        },
	        error: function(data){
	        	if(data.responseJSON.message != null)
	        		alert(data.responseJSON.message);
	        	else
	        	    location.reload();
	        },
	        complete:function(data){
        		$("#wait_modal").modal('hide');
           }
	    });
	}
}]);
</script>
</head>
<body data-ng-controller="appointmentsController">
<security:authorize access="hasAuthority('Adc')">
<section class="content">
<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
<div class="title1"><b> ${type_dashboard} </b></div>
	<br>
    <div class="container-fluid">
    <c:if test="${not empty msg_status}">
		<div class="container">
		<br/>
		<div class="alert alert-success alert-dismissible fade in" style="width: 968px;">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>${msg_status}</strong> 
			</div>
		</div>
	</c:if>
	<br>
	<c:if test="${empty purpose_filter}">
		<div class="row">
			<div class="col-md-2 form-group">
			<b>Filter By:</b>
			</div>
			<div class="col-md-3 form-group">
				<select name="month" ng-model="month"
					class="form-control Preferredsty" id="month_dash" ng-change="changeDashBoardByMonth(${appl_status}, month)">
					<option value="" disabled="disabled">Select Month</option>
					<c:if test="${not empty months}">
						<c:forEach items="${months}" var="month">
							<option value="${month.month_id}">${month.month_val}</option>
						</c:forEach>
					</c:if>
				</select>
			</div>
		</div>
		<%-- <c:choose>
			<c:when test="${not empty purpose_visit and purpose_visit eq 3}">
			</c:when>
			<c:otherwise>
			 <div class="row">
				<div class="col-md-2 form-group">
				<b>Filter By:</b>
				</div>
				<div class="col-md-3 form-group">
					<select name="month" ng-model="month"
						class="form-control Preferredsty" id="month_dash" ng-change="changeDashBoardByMonth(${appl_status}, month)">
						<option value="" disabled="disabled">Select Month</option>
						<c:if test="${not empty months}">
							<c:forEach items="${months}" var="month">
								<option value="${month.month_id}">${month.month_val}</option>
							</c:forEach>
						</c:if>
					</select>
				</div>
				</div>
			</c:otherwise>
		</c:choose> --%>
		</c:if>
		<c:if test="${not empty purpose_filter and purpose_filter}">
		<div class="row">
		  <div class="col-md-2 form-group">
			<b>Filter By:</b>
			</div>
			<div class="col-md-3 form-group">
				<select name="purpose_visit" ng-model="purpose_visit"
					class="form-control Preferredsty" id="purpose_visit" ng-change="changeDashBoard(${appl_status}, purpose_visit)">
					<option value="" disabled="disabled">Filter By Purpose of Visit</option>
					<option value="1">Submit Representation</option>
					<option value="3">Request for Message</option>
					<option value="4">Courtesy Call</option>
					<option value="6">Invitation to Event</option>
					<option value="7">Others</option>
				</select>
			</div>
			<div class="col-md-2 form-group">
			<b>(OR)</b>
			</div>
			<div class="col-md-3 form-group">
				<select name="month" ng-model="month"
					class="form-control Preferredsty" id="month_dash" ng-change="changeDashBoardByMonth(${appl_status}, month)">
					<option value="" disabled="disabled">Select Month</option>
					<c:if test="${not empty months}">
						<c:forEach items="${months}" var="month">
							<option value="${month.month_id}">${month.month_val}</option>
						</c:forEach>
					</c:if>
				</select>
			</div>
		</div>
		</c:if>
	<br>
	<div class="table table-responsive">
       <table id="example" class="table table-striped table-bordered" style="width:100%">
       <thead>
           <tr bgcolor="">
            <th>S.No1</th>
			<th>Name</th>
			<th>Registration No.</th>
			<th>Applicant Type</th>
               <th>Purpose of Visit</th>
               <c:choose>
               		<c:when test="${not empty purpose_visit and purpose_visit eq 3}">
               			<th colspan=3>View Details</th>
               		</c:when>
               		<c:otherwise>
		                <th colspan=2>View Details</th>
               		</c:otherwise>
               	</c:choose>
               <th>Registration Date</th>
               <c:if test="${type_dashboard eq 'List of Appointments' or type_dashboard eq 'Pending Appointments'}">
               	<th>Action</th>
                <th>Forward to</th>
				<th>Notes</th>
                <th>Submit</th>
               </c:if>
               <c:if test="${type_dashboard eq 'Accepted Appointments'}">
               	<th>Application Preferred Dates</th>
               	<th>Status</th>
               	<c:choose>
               		<c:when test="${not empty purpose_visit and purpose_visit eq 3}">
               			<th>Generate Letter</th>
						<th>Notes</th>
               			<th>final document / Submit</th>
               		</c:when>
               		<c:otherwise>
		                <th colspan=2>Appointment Date & Time</th>
		                <th>Generate Letter</th>
						<th>Notes</th>
		                <th>Submit</th>
               		</c:otherwise>
               	</c:choose>
               </c:if>
               <c:if test="${type_dashboard eq 'Closed Appointments'}">
               	<th>Closed Date</th>
               </c:if>
           </tr>
       </thead>
       <tbody ng-cloak>
      		<tr data-ng-if="appontments.length == 0">
      			<td colspan="13" align="center"><b>No Data Available.</b></td>
      		</tr>
           <tr data-ng-if="appontments.length > 0" data-ng-repeat="appontment in appontments" id="appointment_status{{$index+1}}">
          		<td>{{$index+1}}</td>
			<td>{{appontment.applicant_name}}</td>
			<td><b>{{appontment.application_no}}</b></td>
               <td>{{appontment.applicant_type}}</td>
               <td>{{appontment.purpose_visit}}</td>                             
              	<td>
			<div data-placement="top" data-toggle="tooltip" title="Edit">
				<div class="btn btn-info" data-title="Edit" data-ng-click="getApplicationData(appontment.visit_id)">
					<i class="fa fa-sm fa-eye"></i>
				</div>
			</div>
			</td>
			<c:choose>
               		<c:when test="${not empty purpose_visit and purpose_visit eq 3}">
               			<td ng-if="appontment.purpose_visit == 'Request for Message'">
                <form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
                	<input type="hidden" name="file_name" value="2"/>
                	<input type="hidden" name="id" value="{{appontment.message_doc_id}}"/>
                	<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
                	<button type="submit" class="btn btn-info view-pdf">
                		<i class="fa fa-file-pdf-o"></i>
                	</button>
                </form>
               </td>
               <td ng-if="appontment.purpose_visit == 'Request for Message'">
                <form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
                	<input type="hidden" name="file_name" value="3"/>
                	<input type="hidden" name="id" value="{{appontment.org_evnt_celb_doc_id}}"/>
                	<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
                	<button type="submit" class="btn btn-info view-pdf">
                		<i class="fa fa-file-pdf-o"></i>
                	</button>
                </form>
               </td>
               		</c:when>
               		<c:otherwise>
               			<td ng-if="appontment.purpose_visit == 'Request for Message'">
                <form ng-if="appontment.message_doc_id != null" method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
                	<input type="hidden" name="file_name" value="2"/>
                	<input type="hidden" name="id" value="{{appontment.message_doc_id}}"/>
                	<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
                	<button type="submit" class="btn btn-info view-pdf">
                		<i class="fa fa-file-pdf-o"></i>
                	</button>
                </form>
                <form ng-if="appontment.org_evnt_celb_doc_id != null" method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
                	<input type="hidden" name="file_name" value="3"/>
                	<input type="hidden" name="id" value="{{appontment.org_evnt_celb_doc_id}}"/>
                	<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
                	<button type="submit" class="btn btn-info view-pdf">
                		<i class="fa fa-file-pdf-o"></i>
                	</button>
                </form>
               </td>
		                <td ng-if="appontment.purpose_visit != 'Request for Message'">
                <form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
                	<input type="hidden" name="file_name" value="1"/>
                	<input type="hidden" name="id" value="{{appontment.support_doc_id}}"/>
                	<input type="hidden"
				           name="${_csrf.parameterName}"
				           value="${_csrf.token}"/>
                	<button type="submit" class="btn btn-info view-pdf">
                		<i class="fa fa-file-pdf-o"></i>
                	</button>
                </form>
               </td>
               		</c:otherwise>
               	</c:choose>
               <td>{{appontment.reg_date | date : 'dd-MM-yyyy'}}</td>
			<c:if test="${type_dashboard eq 'List of Appointments'}">
			<td><select name="appl_status" class="form-control" data-ng-model="appontment.appl_status">
					<option value="">--Select--</option>
					<option value="1">Approved</option>
					<option value="2">Rejected</option>
					<option value="3">Pending</option>
			</select></td>
			<td><select name="appl_forward_to" data-ng-model="appontment.appl_forward_to" class="form-control selectstydis selsty">
					<option value="">--Select--</option>
					<option value="1">Secretary to Governor</option>
			</select></td>
			<td><textarea class="form-control" name="appl_status_remark" data-ng-model="appontment.appl_status_remark" rows="4" cols="30"></textarea></td>
			<td>
				<button class="btn btn-md btn-info" type="button" id="{{$index+1}}" data-ng-click="application_status(appontment)">Submit</button>
			</td>
			</c:if>
			<c:if test="${type_dashboard eq 'Pending Appointments'}">
			<td><select name="appl_status" class="form-control" data-ng-model="appontment.appl_status">
					<option value="">--Select--</option>
					<option value="1">Approved</option>
					<option value="2">Rejected</option>
			</select></td>
			<td><select name="appl_forward_to" data-ng-model="appontment.appl_forward_to" class="form-control selectstydis selsty">
					<option value="">--Select--</option>
					<option value="1">Secretary to Governor</option>
			</select></td>
			<td><textarea class="form-control" name="appl_status_remark" data-ng-model="appontment.appl_status_remark" rows="4" cols="30"></textarea></td>
			<td>
				<button class="btn btn-md btn-info" type="button" id="{{$index+1}}" data-ng-click="application_status(appontment)">Submit</button>
			</td>
			</c:if>
			<c:if test="${type_dashboard eq 'Accepted Appointments'}">
			 <td>
			 	 {{appontment.pref_date_1 | date : 'dd-MM-yyyy'}}</br>
			 	 {{appontment.pref_date_2 | date : 'dd-MM-yyyy'}}</br>
			 	 {{appontment.pref_date_3 | date : 'dd-MM-yyyy'}}
			 </td>
			 <td><div style="color:green"><b>APPROVED</b></div></td>
			 <c:choose>
               		<c:when test="${not empty purpose_visit and purpose_visit eq 3}">
               			<td><input type="checkbox" name="letter_sent" data-ng-model="appontment.letter_sent"></td>
			 			<td><textarea class="form-control" name="appl_appv_status_remark" data-ng-model="appontment.appl_appv_status_remark" rows="2" cols="20"></textarea></td>
						<td>
							<form id="appoint_msg{{$index+1}}" class="appoint_msg_form" action="${pageContext.request.contextPath}/rb_chief/appoint_message.do" method="POST" enctype="multipart/form-data" autocomplete="off">
								<input type="file" name="appoint_file" class="form-control" style="width: 200;" accept="image/*, application/pdf, .doc,.docx,.xml,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document">
								<input type="hidden" name="visit_id" value="{{appontment.visit_id}}">
								<input type="hidden" name="letter_sent" value="{{appontment.letter_sent}}">
								<input type="hidden" name="appl_appv_status_remark" value="{{appontment.appl_appv_status_remark}}">
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
								<button style="margin-top: 10px; margin-left: 60px;" class="btn btn-md btn-info" type="submit">Submit</button>
							</form>
						</td>
             		</c:when>
               		<c:otherwise>
		                <td><input ng-if="appontment.purpose_visit != 'Request for Message'" type="date" name="appoint_date" min="${curr_date}" data-ng-model="appontment.appoint_date" class="selsty form-control"></td> 
			 			<td><input ng-if="appontment.purpose_visit != 'Request for Message'" readonly="readonly" type="text" name="appoint_time" data-ng-model="appontment.appoint_time" class="selsty form-control appoint_time" ng-click="chooseDate()"></td>
          				<td><input ng-if="appontment.purpose_visit != 'Request for Message'" type="checkbox" name="letter_sent" data-ng-model="appontment.letter_sent"></td>
			 			<td><textarea ng-if="appontment.purpose_visit != 'Request for Message'" class="form-control" name="appl_appv_status_remark" data-ng-model="appontment.appl_appv_status_remark" rows="4" cols="30"></textarea></td>
						<td>
							<button ng-if="appontment.purpose_visit != 'Request for Message'" class="btn btn-md btn-info" type="button" data-ng-click="appointment_status(appontment)">Submit</button>
						</td>
               		</c:otherwise>
               	</c:choose>
			</c:if>
			<c:if test="${type_dashboard eq 'Closed Appointments'}">
               	<td>{{appontment.appoint_date | date : 'dd-MM-yyyy'}}</td>
            </c:if>
		</tr>
   </table>
       </div>
        </div>
		<br><br>
</div>	
</div>
<div>
</div>	
</div>
</section>
</security:authorize>
<security:authorize access="hasAuthority('Secretary')">
<section class="content">
<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
<div class="title1"><b> ${type_dashboard} </b></div>
	<br>
    <div class="container-fluid">
    <c:if test="${not empty msg_status}">
		<div class="container">
		<br/>
		<div class="alert alert-success alert-dismissible fade in" style="width: 968px;">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>${msg_status}</strong> 
			</div>
		</div>
	</c:if>
	<br>
	<br>
	<div class="table table-responsive">
       <table id="example" class="table table-striped table-bordered" style="width:100%">
       <thead>
           <tr>
            <th>S.No</th>
			<th>Name</th>
			<th>Registration No.</th>
			<th>Applicant Type</th>
            <th>Purpose of Visit</th>
            <th colspan=2>View Details</th>
            <th>Registration Date</th>
           </tr>
       </thead>
       <tbody ng-cloak>
      		<tr data-ng-if="appontments.length == 0">
      			<td colspan="13" align="center"><b>No Data Available.</b></td>
      		</tr>
           <tr data-ng-if="appontments.length > 0" data-ng-repeat="appontment in appontments" id="appointment_status{{$index+1}}">
          		<td>{{$index+1}}</td>
			<td>{{appontment.applicant_name}}</td>
			<td><b>{{appontment.application_no}}</b></td>
               <td>{{appontment.applicant_type}}</td>
               <td>{{appontment.purpose_visit}}</td>                             
              	<td>
			<div data-placement="top" data-toggle="tooltip" title="Edit">
				<div class="btn btn-info" data-title="Edit" data-ng-click="getApplicationData(appontment.visit_id)">
					<i class="fa fa-sm fa-eye"></i>
				</div>
			</div>
			</td>
            <td>
             <form method="POST" action="${pageContext.request.contextPath}/rb_secr/loadDocument.do" target="_blank">
             	<input type="hidden" name="file_name" value="1"/>
             	<input type="hidden" name="id" value="{{appontment.support_doc_id}}"/>
             	<input type="hidden"
	           name="${_csrf.parameterName}"
	           value="${_csrf.token}"/>
             	<button type="submit" class="btn btn-info view-pdf">
             		<i class="fa fa-file-pdf-o"></i>
             	</button>
             </form>
            </td>
            <td>{{appontment.reg_date | date : 'dd-MM-yyyy'}}</td>
		</tr>
   </table>
     </div>
      </div>
<br><br>
</div>	
</div>
<div>
</div>	
</div>
</section>
</security:authorize>
<div id="printData">
    <div class="modal fade" id="application_view" tabindex="-1" role="dialog"
				aria-labelledby="edit" aria-hidden="true">
				<div class="modal-dialog">
				<button type="button" value="Print" class="btn btn-info" onclick="printDiv()">
             		<i class="fa fa-print"></i>
             	</button>
					<div class="modal-content" id="printThis">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							</button>
							<h4 class="modal-title custom_align" id="Heading">Details For Application : <b>{{appoint_data.application_no}}</b></h4>
						</div>
			<div class="modal-body">
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Applicant Type</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.applicant_type_mst}}</label>
							</div>
						</div>
						<div class="row" ng-if="appoint_data.applicant_type == 4">
							<div class="form-group">
								<label class="col-md-6 plainkey">Applicant Type</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.applicant_type_name}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Purpose of Visit</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.purpose_visit_mst}}</label>
							</div>
						</div>
                        <div class="row" ng-if="appoint_data.purpose_visit == 7">
							<div class="form-group">
								<label class="col-md-6 plainkey">Purpose of Visit</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.purpose_visit_name}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Name of the Applicant</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.applicant_name}}</label>
							</div>
						</div>
						<div data-ng-if="appoint_data.applicant_type == 2">
	                        <div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Name of Political Party</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.political_party_name}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Designation in Party</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.party_designation}}</label>
								</div>
							</div>
						</div>
						<div data-ng-if="appoint_data.applicant_type == 3">
	                        <div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Organization Name</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.organisation_name}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Type of Organization</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.organisation_type}}</label>
								</div>
							</div>
						</div>                   
                        <div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Gender</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.gender}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">District</label> 
								<label class="col-md-6 plainvalue" data-ng-if="appoint_data.district != 33">
									{{appoint_data.district_mst}}
								</label>
								<label class="col-md-6 plainvalue" data-ng-if="appoint_data.district == 33">
									{{appoint_data.district_other}}
								</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Full Address</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.full_address}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">PIN Code</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.pincode}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Type of Identity</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.identity_type}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">ID Proof No.</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.applicant_id_no}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Mobile Number</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.mobile_no}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Alternate Mobile Number</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.alternate_no}}</label>
							</div>
						</div>
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Email Address</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.email}}</label>
							</div>
						</div>
						<div data-ng-if="appoint_data.purpose_visit != 3">
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 subhead1" data-ng-if="appoint_data.purpose_visit == null" class="subhead1"> Preferred Dates </label>
									<label class="col-md-6 subhead1" data-ng-if="appoint_data.purpose_visit == 1" class="subhead1"> Preferred Dates for Submission </label>
									<label class="col-md-6 subhead1" data-ng-if="appoint_data.purpose_visit == 4 || appoint_data.purpose_visit == 7" class="subhead1"> Preferred Dates for Appointment </label>
									<label class="col-md-6 subhead1" data-ng-if="appoint_data.purpose_visit == 6" class="subhead1"> Preferred Dates for Event </label> 
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Preferred Date-1</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.pref_date_1}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Preferred Date-2</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.pref_date_2}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Preferred Date-3</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.pref_date_3}}</label>
								</div>
							</div>
						</div>                   
						<div class="row">
							<div class="form-group">
								<label class="col-md-6 plainkey">Upload copy of ID.Proof</label> 
								<label class="col-md-6 plainvalue">{{appoint_data.visitor_document}}</label>
							</div>
						</div>
						<div data-ng-if="appoint_data.purpose_visit == 3">
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Message Sought for</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.message_details.msg_sought_for}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Date of Event/Celebration</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.pref_date_1}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Org/Event/Cel Doc</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.visitor_document}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Draft Message</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.draft_document}}</label>
								</div>
							</div>
						</div>        
                        <div data-ng-if="appoint_data.purpose_visit == 1 || appoint_data.purpose_visit == 4 || appoint_data.purpose_visit == 6 || appoint_data.purpose_visit == 7">
                        	<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Brief Purpose of Visit</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.visit_description}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Applicant Wish Doc's</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.visit_support_document}}</label>
								</div>
							</div>
                        </div>        
                        <div data-ng-if="appoint_data.purpose_visit != 3">
                       		<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">No. Additional Visitors</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.add_visitors.length}}</label>
								</div>
							</div>
                        	<div data-ng-repeat="visitor in appoint_data.add_visitors">
                        		<div class="row">
									<div class="form-group">
										<label class="col-md-6 plainkey">Name of the Additional Visitor</label> 
										<label class="col-md-6 plainvalue">{{visitor.addl_visitor_name}}</label>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="col-md-6 plainkey">Type of Identity</label> 
										<label class="col-md-6 plainvalue">{{visitor.addl_visitor_identity_type}}</label>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="col-md-6 plainkey">ID proof Number</label> 
										<label class="col-md-6 plainvalue">{{visitor.addl_visitor_id_number}}</label>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="col-md-6 plainkey">Mobile Number</label> 
										<label class="col-md-6 plainvalue">{{visitor.addl_visitor_mobile}}</label>
									</div>
								</div>
								<div class="row">
									<div class="form-group">
										<label class="col-md-6 plainkey">ID Proof</label> 
										<label class="col-md-6 plainvalue">{{visitor.addl_visitor_document}}</label>
									</div>
								</div>
                        	</div>
                        </div>
                        <div data-ng-if="appoint_data.purpose_visit == 6">
                        	<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Event Name</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_name}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Event Description</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_description}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Event Venue Address</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_location}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Type of Invitation</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_type_mst}}</label>
								</div>
							</div>
							<div class="row" data-ng-if="appoint_data.event_details.event_type_invitation == 2">
								<div class="form-group">
									<label class="col-md-6 plainkey">Name & Disignation of Chief Guest</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_chief_guest_desc}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Name of Event Coordinator</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_coordinator_name}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Coordinator Mobile Number</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_coordinator_mobile}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">No. Sharing Dias</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.dais_sharing_no}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Personality Sharing the Dais</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.dais_sharing_names}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Event Document</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_desc_document}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Expected no of Audience</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_expected_audience}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Type of Audiance</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_audiance_type}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Date of Event</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_date}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Time of Event</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_time}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Duration of Event (Hrs.)</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.event_details.event_duration}}</label>
								</div>
							</div>
                        </div>
                        <div data-ng-if="appoint_data.receipt_mode != 0">
							<div class="row">
		 						<div class="col-md-4 col-md-offset-4 form-group">
		                       		<div class="subhead"> Submitted By Adc </div>
		                       </div> 
	                       </div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Mode of Receipt</label> 
									<label class="col-md-6 plainvalue" data-ng-if="appoint_data.receipt_mode == 1">By Post</label>
									<label class="col-md-6 plainvalue" data-ng-if="appoint_data.receipt_mode == 2">By Email</label>
									<label class="col-md-6 plainvalue" data-ng-if="appoint_data.receipt_mode == 3">In Person</label>
									<label class="col-md-6 plainvalue" data-ng-if="appoint_data.receipt_mode == 5">By Call</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Received By</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.receipt_by}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Received Date</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.receipt_date}}</label>
								</div>
							</div>
							<div class="row">
								<div class="form-group">
									<label class="col-md-6 plainkey">Receipt Remarks</label> 
									<label class="col-md-6 plainvalue">{{appoint_data.receipt_remarks}}</label>
								</div>
							</div>
							</div>                 
                    <!-- <button data-ng-click="printHtmlForm()">Print</button>  -->                      
			</div>
		</div>
		</div>
	</div>
	</div>
	<div class="modal fade" id="error_model" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<p class="modal-title"><label style="color: red">Fields Required.</label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</p>
				</div>
				<div class="modal-body">
						<p class="text-info" data-ng-repeat="err in dispErrors">
						<strong>{{err}}</strong>
						</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="conflict" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<p class="modal-title"><label style="color: red"><strong> Choose Time. </strong></label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</p>
				</div>
				<div class="modal-body">
						<p class="text-info">
						<strong>Appointment already exists at the given time. please choose another time.</strong>
						</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="wait_modal" tabindex="-1" role="dialog"
		aria-labelledby="WaitModalLabel" aria-hidden="true" data-backdrop="false">
		<div class="modal-dialog modal-vertical-centered" style="width: 200px; height: 200px">
			<div class="modal-body center">
				<img alt="Wait for Response" src="${pageContext.request.contextPath}/img/loader_wait.gif"/>
			</div>
		</div>
	</div>
</body>
</html>
