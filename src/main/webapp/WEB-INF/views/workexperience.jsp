<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<html data-ng-app="rbts">
<head>
<title>Work Experience</title>
<spring:url value="/appjs/workexperience.js" var="pagejs" />
<script type="text/javascript" src="${pagejs}"></script>
<style>
.redstar {
    color: red;
}
</style>
<%-- <security:authorize access="hasAuthority('Applicant')"> --%>
    <script>
	   
// 		var nonfacworkexp = [];
    </script>
<%-- </security:authorize> --%>
<script>
	$(document).ready(function() {
		$('#multi_pos_applied').modal('show');
		$('#table1').DataTable();
		$('#table2').DataTable();
		$('#joining_date').datetimepicker({
			maxDate:0,
			timepicker: false,
			format: 'd-m-Y'
		});
		$('#leaving_date').datetimepicker();
		$('#joining_date').change(function(){
			$('#leaving_date').datetimepicker({
// 				minDate: $('#joining_date').val(),
				maxDate:0,
				timepicker: false,
				format: 'd-m-Y'
			});
		});
	});
	
	var workexperience = ${copdetails};
	getWorkexperience();
	jQuery(document).ready( function () {
		var id = 1;
	        $("#append").click( function(e) {
	          e.preventDefault();
	        $(".inc").append('<div class="controls ">\
	        		<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Work Experience</b></label></div><div class="col-md-3 form-group"><select class="form-control" id="work_exp" name="work_exp" ><option value="">--Select--</option><option value="After PG">After PG</option><option value="After Ph.D">After Ph.D</option></select></div></div>\
					<br>\
	        		<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Designation</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="designation" id="designation'+id+'" placeholder="Designation"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Organization</b></label></div><div class="col-md-3 form-group"><input class="form-control datep" type="text" name="organization" id="organization'+id+'" placeholder="Organization"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Nature of work</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="work_nature" id="work_nature'+id+'" placeholder="Nature of work"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Date of Joining</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="joining_date" id="joining_date'+id+'" placeholder="Date of Joining"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Date of Leaving</b></label></div><div class="col-md-3 form-group"><input class="form-control calculateMonths" type="text" name="leaving_date" id="leaving_date'+id+'" placeholder="Date of Leaving"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Total Months</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="total_months" readonly="true" id="total_months'+id+'" placeholder="Total Months"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Pay Scale/ Pay per Annum in INR</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="annual_package" id="annual_package'+id+'" placeholder="Pay Scale/ Pay per Annum in INR"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Upload Document</b></label></div><div class="col-md-3 form-group"><input type="file" accept=".pdf" class="form-control" id="exp_doc'+id+'" name="exp_doc" data-toggle="tooltip" title="Note: Please Upload Document"/></div></div>\
					<br>\
					<a href="#" class="col-md-offset-5 col-md-1 form-group remove_this btn btn-danger">Remove</a>\
					<br>\
					<br>\
	            </div>');
	        $("#".concat("joining_date".concat(id))).datetimepicker({
				maxDate:0
			});
			$("#".concat("leaving_date".concat(id))).datetimepicker();
			$("#".concat("joining_date".concat(id))).change(function(){
				$("#".concat("leaving_date".concat(id))).datetimepicker({
					minDate: $("#".concat("joining_date".concat(id))).val()
				});
			});
			$('.calculateMonths').change(function(event) {
				var changeid = event.target.id.substr(12);
				var d1 = $("#".concat("joining_date".concat(changeid))).val();
				if(d1 == null || 0 === d1.length){
					$("#".concat("leaving_date".concat(changeid))).val('');
					$("#joining_date_error").remove();
					$("#".concat("joining_date".concat(changeid))).after('<p id="joining_date_error">Please Select Date of Joining.</p>')
					return false;
				}
				if(parseInt(changeid) >= 1){
					$("#joining_date_error").remove();
					var d2 = $("#".concat("leaving_date".concat(changeid))).val();
					var res1 = d1.split("-");
					var res2 = d2.split("-");
					var date1 = new Date(res1[2],parseInt(res1[1]-1),parseInt(res1[0]));
					var date2 = new Date(res2[2],parseInt(res2[1]-1),parseInt(res2[0]));
					var timeDiff = Math.abs(date2.getTime() - date1.getTime());
					var diffMonths = Math.ceil(timeDiff / (1000 * 3600 * 24 * 30)); 
					$("#".concat("total_months".concat(changeid))).val(parseInt(diffMonths));
				}
				return false;
			});
			id++;
	        return false;
	        });

	    jQuery(document).on('click', '.remove_this', function(){
	        jQuery(this).parent().remove();
	        return false;
	        });
	  });
	
// 	calculateAge('1987-04-05');
	function calculateAge(date){
		var now = new Date();
		var date = new Date(date);
		var current_year = now.getFullYear();
		var curent_day = now.getDate();
		alert("curent_day: "+curent_day);
		alert("current_year: "+current_year);
		
		var year_diff = current_year - date.getFullYear();
		alert("difference: "+year_diff);
	}
	
	function expCalc() {
		  var joining_date = document.getElementById("joining_date").value;
	       
		  var jdate = joining_date.toString();
	       console.log("mdate "+jdate);
	        var yearThen_j = parseInt(jdate.substring(6,10), 10);
	        console.log("yearThen : "+yearThen_j);
	        var monthThen_j = parseInt(jdate.substring(3,5), 10);
	        console.log("monthThen : "+monthThen_j);
	        var dayThen_j = parseInt(jdate.substring(0,2), 10);
	        console.log("dayThen : "+dayThen_j);
	        
	        var leaving_date = document.getElementById("leaving_date").value;
		       
			  var ldate = leaving_date.toString();
		       console.log("mdate "+ldate);
		        var yearThen_l = parseInt(ldate.substring(6,10), 10);
		        console.log("yearThen : "+yearThen_j);
		        var monthThen_l = parseInt(ldate.substring(3,5), 10);
		        console.log("monthThen : "+monthThen_j);
		        var dayThen_l = parseInt(ldate.substring(0,2), 10);
		        console.log("dayThen : "+dayThen_j);
	        
	        var join_date = new Date(yearThen_j, monthThen_j-1, dayThen_j);
	        console.log("birthday : "+join_date);
		        
	        var leave_date = new Date(yearThen_l, monthThen_l-1, dayThen_l);
	        console.log("today : "+leave_date);
	        
	        
//	       alert(today.valueOf() + " " + birthday.valueOf());
	        var differenceInMilisecond = leave_date.valueOf() - join_date.valueOf();
	        console.log("differenceInMilisecond : "+differenceInMilisecond);
	        
	        var year_age = Math.floor(differenceInMilisecond / 31536000000);
	        var day_age = Math.floor((differenceInMilisecond % 31536000000) / 86400000);
	        
	        /* if ((today.getMonth() == birthday.getMonth()) && (today.getDate() == birthday.getDate())) {
	            alert("Happy B'day!!!");
	        } */
	        
	        var month_age = Math.floor(day_age/30);
	        
	        day_age = day_age % 30;
	        
	        var tMnt= (month_age + (year_age*12));
	        var tDays =(tMnt*30) + day_age;
	        
	        if (isNaN(year_age) || isNaN(month_age) || isNaN(day_age)) {
	            document.getElementById("duration").innerHTML = ("Invalid date - Please try again!");
	        }
	        else {
	            document.getElementById("total_exp").value = year_age + " years " + month_age + " months " + day_age + " days";
	        }
	}
</script>
</head>
<body data-ng-controller="WorkexperiencePageController" data-ng-cloak>
	<div class="container-fluid">
		<div class="box form_content">
			<div class="title1">
				<b>Work Experience (Most Recent first)</b>
			</div>
			<br />
			<c:if test="${not empty message}">
				<div style="width: 500px;" class="container">
					<c:if test="${message eq 'success'}">
						<div class="alert alert-success alert-dismissible fade in">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Details Saved Successfully.</strong>
						</div>
					</c:if>
					<c:if test="${message eq 'inserterror'}">
						<div class="alert alert-danger alert-dismissible fade in">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>User Already Exist (or) Insert Failed.</strong>
						</div>
					</c:if>
					<c:if test="${message eq 'valerror'}">
						<div class="alert alert-danger alert-dismissible fade in">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							<strong>Check Your Inputs and Try Again.</strong>
						</div>
					</c:if>
				</div>
			</c:if>
			<br />
			<div class="container-fluid">
				<form:form action="${pageContext.request.contextPath}/rb_chief/WorkExperience.do?${_csrf.parameterName}=${_csrf.token}"
					method="POST" modelAttribute="workexpattr" id="workexperienceId" enctype="multipart/form-data">
<label style= "color: red;background-color: yellow;"><b>Note:</b></label><label><b style= color:red>&nbsp;User Can Add Work Experience Details One By One</b></label>
<br></br>
					<%-- <c:if test="${not empty role_id && role_id eq '2'}">
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Work Experience</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:select class="form-control" id="work_exp" path="work_exp" data-ng-model="Obj.work_exp_db" multiple="false">
								<option value="">--Select--</option>
								<option value="After PG">After PG</option>
								<option value="After Ph.D">After Ph.D</option>
							</form:select>
							<form:errors path="work_exp" class="server_error"/>
						</div>
					</div>
					</c:if> --%>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Designation</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="designation" id="designation"
								data-ng-model="Obj.designation_db" class="form-control "
								placeholder="Designation" />
							<form:errors path="designation" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Organization / Institution</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="organization" id="organization"
								data-ng-model="Obj.organization_db" class="form-control "
								placeholder="Organization" />
							<form:errors path="organization" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Nature of work</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="work_nature" id="work_nature"
								data-ng-model="Obj.work_nature_db" class="form-control "
								placeholder="Nature of work" />
							<form:errors path="work_nature" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Date of Joining</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="joining_date" id="joining_date" readonly="true"
								data-ng-model="Obj.joining_date_db" class="form-control "
								placeholder="Date of Joining" autocomplete="off" />
							<form:errors path="joining_date" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Date of Leaving</b></label><br>
							<span style= color:red;> (If you are currently working on the same designation please select today's date)</span>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="leaving_date" id="leaving_date" readonly="true"
								data-ng-model="Obj.leaving_date_db" class="form-control "
								placeholder="Date of Leaving" autocomplete="off" onchange="expCalc()" />
							<form:errors path="leaving_date" class="server_error"/>
						</div>
<!-- 						data-ng-change="calculateAge(Obj.joining_date_db, Obj.leaving_date_db)" -->
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Total Duration</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="total_exp" id="total_exp"
								data-ng-model="Obj.total_exp_db" class="form-control"
								placeholder="Duration" readonly="true"/>
							<form:errors path="total_exp" class="server_error"/>
						</div>
					</div>
					<%-- <div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>&nbsp;Remarks</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="annual_package" id="annual_package"
								data-ng-model="Obj.annual_package_db" class="form-control "
								placeholder="(Optional)" />
							<form:errors path="annual_package" class="server_error"/>
						</div>
					</div> --%>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Upload Document</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="file" accept=".pdf" class="form-control" id="exp_doc" path="exp_doc" data-ng-required="Obj.exp_doc_id_db == null" data-toggle="tooltip" title="Note: Please Upload Document"/>
							<form:errors path="exp_doc" class="server_error"/>
						<div style="font-size: 11px; color: red">File format to be uploaded (.pdf) and its maximum size is 5 MB</div>
						</div>
						<form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocumentAlt.do" target="_blank">
				                	<input type="hidden" name="file_name" value="exp_doc"/>
				                	<input type="hidden" name="id" value="{{Obj.exp_doc_id_db}}"/>
				                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				                	<button type="submit" class="btn btn-info view-pdf"><i class="fa fa-file-pdf-o"></i></button>
				                </form>
						<c:set var="exp_doc_id" value="{{Obj.exp_doc_id_db}}" />
							<c:if test="${not empty exp_doc_id}">
								<div class=" form-group" data-ng-if="Obj.exp_doc_id_db != null" >
<%-- 								   <a href="getmongoPdfFile.do?docid=${exp_doc_id}&tablename=exp_doc" target="_blank">Click to View Uploaded Document</a> --%>
								   
								</div>
							</c:if>
					</div>
					<!-- <div class="row">
					    <div class="col-md-4 col-md-offset-4 form-group">
                              <button class="btn btn-info" type="button" id="append"> + Add Additional Work Experience</button>
                        </div> 
                    </div>
                    <div class="row">
				        <div class="inc form-group">
                         </div>
					 </div> -->

					<form:hidden path="id" value="{{Obj.id}}" data-ng-model="Obj.id" data-ng-if="Obj.id != null"/>
					<form:hidden path="exp_doc_id" value="{{Obj.exp_doc_id_db}}" data-ng-if="Obj.exp_doc_id_db != null"/>

					<br>
					<br>
					<div>
<%-- 				<form:hidden path="id" value="{{workexperience.id}}" /> --%>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" class="btn btn-md btn-primary col-md-offset-5" id="workexperienceBId">Submit</button>
					<a class="btn btn-md btn-info" href="${pageContext.request.contextPath}/${userrole}/WorkExperience.do">Clear</a>
					</div>
					<br />
					<br />
					<br />
				</form:form>
			</div>
		</div>
	</div>
	
<%-- 	<c:if test="${not empty role_id && role_id eq '4'}"> --%>
	<div class="container-fluid">
		<div class="box form_content">
<!-- 		{{workexperience}} -->
			<div class="table-responsive">
				<h4 class="title1">Work Experience Dashboard</h4>
				<table border="1" id="table1"
					class="table table-striped table-bordered" cellspacing="0"
					width="100%">
					<thead>
						<tr>
							<th>S.No</th>
							<th>Total</th>
							<th>Designation</th>
							<th>Organization</th>
							<th>Nature of work</th>
							<th>Date of Joining</th>
							<th>Date of Leaving</th>
							<th>Experience</th>
							<th>Document</th>
							<th>Edit</th>
<!-- 							<th>Delete</th> -->
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="Obj in workexperience">
							<td>{{$index+1}}</td>
							<td>{{Obj.work_exp_db}}</td>
							<td>{{Obj.designation_db}}</td>
							<td>{{Obj.organization_db}}</td>
							<td>{{Obj.work_nature_db}}</td>
							<td>{{Obj.joining_date_db}}</td>
							<td>{{Obj.leaving_date_db}}</td>
							<td>{{Obj.total_exp_db}}</td>
							<td>
								<%-- <c:set var="exp_doc_id" value="{{Obj.exp_doc_id_db}}" />
								<c:if test="${not empty exp_doc_id}">
									<div class=" form-group" data-ng-if="Obj.exp_doc_id_db != null" >
									   <a href="getmongoPdfFile.do?docid=${exp_doc_id}&tablename=exp_doc" target="_blank">Click to View</a>
									</div>
								</c:if> --%>
								
								
								<form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocumentAlt.do" target="_blank">
				                	<input type="hidden" name="file_name" value="exp_doc"/>
				                	<input type="hidden" name="id" value="{{Obj.exp_doc_id_db}}"/>
				                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				                	<button type="submit" class="btn btn-info view-pdf"><i class="fa fa-file-pdf-o"></i></button>
				                </form>
							</td>
							<td><a ng-if="Obj.joining_date_db != null" role="button" data-ng-click="editCategory(Obj)"
								class="btn btn-primary"><i class="fa fa-edit"></i></a></td>
							<!-- <td><a ng-if="Obj.joining_date_db != null" role="button" data-toggle="modal"
								data-target="#confirm_delete"
								data-ng-click="deleteScreenAlert(Obj)" class="btn btn-danger">
									<i class="fa fa-trash"></i>
							</a></td> -->
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
<%-- 	</c:if> --%>
	
	<hr>
	<div id="confirm_delete" class="modal fade" role="dialog">
		<button type="button" class="btn btn-default" data-dismiss="modal"
			style="display: none;"></button>
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content" style="height: 280px; overflow-y: hidden">
				<div style="margin-left: 250px; margin-top: 20px;">
					<img src="${Iconpng}">
				</div>
				<div class="modal-body" style="text-align: center;">
					<p style="display: block; font-size: 16px;" class="ng-binding">Are
						You Sure you want to delete?</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal" data-ng-click="clearScreen(Obj)">No</button>
					<button data-ng-click="deleteScreen(Obj)" class="btn btn-primary">&nbsp;
						Yes &nbsp;</button>
					<h6 style="color: red; float: left;">Note : All information
						will be deleted and can't be undone</h6>
				</div>
				<br>
			</div>
		</div>
	</div>
<c:if test="${not empty pos_applied and pos_applied gt 0}">
	<div class="modal fade" id="multi_pos_applied" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	      <div class="modal-body">
	         <b style="color:red"> If you add/update the information, This information will be reflected in all your applications. </b> 
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
</c:if>
</body>
</html>
