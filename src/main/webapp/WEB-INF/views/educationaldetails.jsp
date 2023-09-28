<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html data-ng-app="rbts">
<head>
<title>Educational Qualifications</title>
<spring:url value="/appjs/educationaldetails.js" var="pagejs" />
<script type="text/javascript" src="${pagejs}"></script>
<%-- <script src="<spring:url value="/applnjs/educationaldetails.js" />"></script> --%>

<style>
.redstar {
    color: red;
}
</style>

<script>
	$(document).ready(function() {
		$('#multi_pos_applied').modal('show');
		$('#table1').DataTable();
		/* $('#phd_date').datetimepicker({
			maxDate: 0
		}); */
		/* $('#phd_date').datetimepicker(); */
		/* $("#year_of_pass").datetimepicker({
		    format: "yyyy",
		    viewMode: "years", 
		}); */
		/* $("select").change(function(){
	        $(this).find("option:selected").each(function(){
	            var optionValue = $(this).attr("value");
	            if(optionValue){
	                $(".box").not("." + optionValue).hide();
	                $("." + optionValue).show();
	            } else{
	                $(".box").hide();
	            }
	        });
	    }).change(); */
// 		var condition = true;
// 		$('#specialization').toggle(condition)
       /*  var percentage = $('#percentage').val();
		$('#outof').keyup(function(){
			  if ($(this).val() > percentage){
			    alert("Max always greater then perecentage");
			    $(this).val('');
			  }
			}); */
	});
	var degreeList = ${degreelist};
	var educationaldetails = ${copdetails};
	getEducationaldetails();
	<%
	  Integer category_id = (Integer) session.getAttribute("category_id");
	%>
	
	jQuery(document).ready( function () {
		var id = 1;
		
	        $("#append").click( function(e) {
	          e.preventDefault();
	        $(".inc").append('<div class="controls ">\
	        		<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Degree/Diploma</b></label></div><div class="col-md-3 form-group"><select class="form-control" id="degree" name="degree" ><option value="">--Select--</option><option value="1"> Class X or Equivalent</option><option value="2">Class XII or Equivalent</option><option value="3">B. Pharm </option><option value="4">B.Sc. </option><option value="5">B.Tech </option><option value="6">B.A.  </option><option value="7">B.Com  </option><option value="8">M. Pharm </option><option value="9">M.Sc. </option><option value="10">M.S. </option><option value="11">M.Tech </option><option value="12">MBA </option><option value="13">PhD </option><option value="14">Others </option></select></div></div>\
					<br>\
					<div class="row col-md-12" data-ng-if="Obj.degree_db != 1"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Specialization</b></label></div><div class="col-md-3 form-group"><input class="form-control datep" type="text" name="specialization" id="specialization'+id+'" placeholder="Specialization"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Board/University</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="board" id="board'+id+'" placeholder="Board/University"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>School/Institute/College (with Location)</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="institute" id="institute'+id+'" placeholder="School/Institute/College (with Location)"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Percentage/ CPI/ CGPA </b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="percentage" id="percentage'+id+'" placeholder="Percentage/ CPI/ CGPA "></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Maximum Percentage/ CPI/ CGPA</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="outof" id="outof'+id+'" placeholder="Maximum Percentage/ CPI/ CGPA"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Year of Pass</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="year_of_pass" id="year_of_pass'+id+'" placeholder="Year of Pass"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Division</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="division" id="division'+id+'" placeholder="Division"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Upload Document</b></label></div><div class="col-md-3 form-group"><input type="file" accept=".pdf" class="form-control" id="educational_doc'+id+'" name="educational_doc" data-toggle="tooltip" title="Note: Please Upload Document"/></div></div>\
					<br>\
					<a href="#" class="col-md-offset-5 col-md-1 form-group remove_this btn btn-danger">Remove</a>\
					<br>\
					<br>\
	            </div>');
	        id++;
	        return false;
	        });

	    jQuery(document).on('click', '.remove_this', function(){
	        jQuery(this).parent().remove();
	        return false;
	        });
	  });
	/* function handleChange(input) {
		  var fistInput = parseInt(document.getElementById("percentage").value);
		  if (input.value < 0) input.value = 0;
		  if (input.value < fistInput) {
	    	alert("Please enter greater than > "+fistInput)
	    	input.value = '';
	    }
	  } */
</script>
</head>
<body data-ng-controller="EducationaldetailsPageController" data-ng-cloak>
	<div class="container-fluid">
		<div class="box form_content">
			<div class="title1">
				<b>Educational Qualifications: Starting from Class X or Equivalent:</b>
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
				<form:form
					action="${pageContext.request.contextPath}/rb_chief/educationalDetails.do?${_csrf.parameterName}=${_csrf.token}"
					method="POST" modelAttribute="educationalattr"
					id="educationaldetailsId" enctype="multipart/form-data">
					<label style= "color: red;background-color: yellow;"><b>Note:</b></label><label><b style= color:red>&nbsp;User Can Add Educational Details One By One</b></label>
					<br></br>
					<c:if test="${category_id == 3}">
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>Student Name</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:select class="form-control" path="student_id" id="student_id" data-ng-model="Obj.student_id">
								<form:option value="">--Select--</form:option>
<%-- 								<form:options items="${instStudentList}" itemValue="id" itemLabel="cand_name" /> --%>
							</form:select>
							<form:errors path="student_id" class="server_error"></form:errors>
						</div>
					</div>
					</c:if>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Certificates (Degree/Diploma)</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:select path="degree" ng-model="Obj.degree_db" id="degree" class="form-control" multiple="false">
								<option value="">--Select--</option>
								<option data-ng-selected="{{Obj.degree_db == d.degree_id}}" data-ng-repeat="d in degreeList" value="{{d.degree_id}}">{{d.degree_name}}</option>
							</form:select>
							<form:errors path="degree" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12" data-ng-if="Obj.degree_db == 8">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Enter Other Degree/Diploma</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="other_degree" id="other_degree"
								data-ng-model="Obj.other_degree_db" class="form-control "
								placeholder="Enter Other Degree/Diploma" />
							<form:errors path="other_degree" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12" data-ng-if="Obj.degree_db != 1">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Subjects/Specialization</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="specialization" id="specialization"
								data-ng-model="Obj.specialization_db" class="form-control "
								placeholder="Subjects" />
							<form:errors path="specialization" class="server_error"/>
							<%-- <form:hidden path="specialization" data-ng-model="Obj.specialization_db" data-ng-if="Obj.degree_db == 1"/> --%>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Board/University</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="board" id="board"
								data-ng-model="Obj.board_db" class="form-control "
								placeholder="Board/University" />
							<form:errors path="board" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;School/Institute/College </b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="institute" id="institute"
								data-ng-model="Obj.institute_db" class="form-control "
								placeholder="School/Institute/College" />
							<form:errors path="institute" class="server_error"/>
						</div>
					</div>
					<%-- <div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>&nbsp;Maximum Percentage/CGPA</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="outof" id="outof"
								data-ng-model="Obj.outof_db" class="form-control "
								placeholder="Maximum Percentage/CGPA" min="0"/>
							<form:errors path="outof" class="server_error"/>
						</div>
					</div> --%>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>&nbsp;&nbsp;Percentage/CGPA </b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="percentage" id="percentage"
								data-ng-model="Obj.percentage_db" class="form-control "
								placeholder="(Optional)" />
							<form:errors path="percentage" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b><sup class="redstar">*</sup>&nbsp;Year of Pass</b></label>
						</div>
						<div class="col-md-3 form-group">
							<jsp:useBean id="now" class="java.util.Date" />
							<fmt:formatDate var="year" value="${now}" pattern="yyyy" />
							<form:select type="text" path="year_of_pass" id="year_of_pass" autocomplete="off"
								data-ng-model="Obj.year_of_pass_db" class="form-control " maxlength="4"
								placeholder="Year of Pass" multiple="false">
								<form:option value="">---select---</form:option>
								<c:forEach begin="1947" end="${year}" step="1" var="yr">
									<form:option value="${yr}">${yr}</form:option>
								</c:forEach>
							</form:select>
							<form:errors path="year_of_pass" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>&nbsp;&nbsp;Division</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="division" id="division"
								data-ng-model="Obj.division_db" class="form-control "
								placeholder="(Optional)" />
							<form:errors path="division" class="server_error"/>
						</div>
					</div>
					<div class="row col-md-12">
					<div class="col-md-offset-2 col-md-3 form-group">
						<label><b><sup class="redstar">*</sup>&nbsp;Upload Document/Certificate</b></label>
					</div>
					<div class="col-md-3 form-group">
						<form:input type="file" accept=".pdf" class="form-control" id="educational_doc" path="educational_doc" data-ng-required="Obj.educational_doc_id_db == null" data-toggle="tooltip" title="Note: Please Upload Document"/>
						<form:errors path="educational_doc" class="server_error"/>
						<div style="font-size: 11px; color: red">File format to be uploaded (.pdf) and its maximum size is 5 MB</div>
					</div>
					<c:set var="educational_doc_id" value="{{Obj.educational_doc_id_db}}" />
						<c:if test="${not empty educational_doc_id}">
							<div class=" form-group" data-ng-if="Obj.educational_doc_id_db != null" >
							   <a href="getmongoPdfFile.do?docid=${educational_doc_id}&tablename=educational_info" target="_blank">Click to View Uploaded Document</a>
							</div>
						</c:if>
				</div>
					<!-- <div class="row">
					    <div class="col-md-4 col-md-offset-4 form-group">
                              <button class="btn btn-info" type="button" id="append"> + Add Additional Educational Details</button>
                        </div> 
                    </div>
                    <div class="row">
				        <div class="inc form-group">
                         </div>
					 </div> -->

					<form:hidden path="id" value="{{Obj.id}}" data-ng-if="Obj.id != null"/>
					<form:hidden path="educational_doc_id" value="{{Obj.educational_doc_id_db}}" data-ng-if="Obj.educational_doc_id_db != null" />
					<br>
					<br>
					<div>
<%-- 				<form:hidden path="id" value="{{educationaldetails.id}}" /> --%>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" class="btn btn-md btn-primary col-md-offset-5" id="educationaldetailsBId">Submit</button>
					<!-- <button class="btn btn-md btn-info "
						data-ng-click="clearScreen(Obj)">Clear</button> -->
					<a class="btn btn-md btn-info" href="${pageContext.request.contextPath}/${userrole}/educationalDetails.do">Clear</a>
					</div>
					<br />
					<br />
					<br />
				</form:form>
			</div>
		</div>
	</div>
<!-- 	{{educationaldetails}} -->
	<div class="container-fluid">
		<div class="box form_content">
			<div class="table-responsive">
				<h4 class="title1">Educational Qualification Details Dashboard</h4>
				<table border="1" id="table1"
					class="table table-striped table-bordered" cellspacing="0"
					width="100%">
					<thead>
						<tr>
							<th>S.No</th>
							<c:if test="${category_id == 3}">
							</c:if>
							<th>Student Name</th>
							<th>Degree/Diploma</th>
							<th>Subjects</th>
							<th>Board/University</th>
							<th>School/College</th>
<!-- 							<th>Percentage/CGPA </th> -->
							<!-- <th>Max Percentage/CGPA</th> -->
							<th>Year of Pass</th>
<!-- 							<th>Division</th> -->
							<th>Document</th>
							<th>Edit</th>
							<!-- <th>Delete</th> -->
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="Obj in educationaldetails">
							<td>{{$index+1}}</td>
							<td>{{Obj.student_name}}</td>
							<td>{{Obj.degree_name}}</td>
							<td>{{Obj.specialization_db}}</td>
							<td>{{Obj.board_db}}</td>
							<td>{{Obj.institute_db}}</td>
<!-- 							<td>{{Obj.percentage_db}}</td> -->
							<!-- <td>{{Obj.outof_db}}</td> -->
							<td>{{Obj.year_of_pass_db}}</td>
<!-- 							<td>{{Obj.division_db}}</td> -->
							<td>
								<!-- <div class=" form-group" data-ng-if="Obj.educational_doc_id_db != null" >
								   <a href="getmongoPdfFile.do?docid={{Obj.educational_doc_id_db}}&tablename=educational_info" target="_blank">Click to View</a>
								</div>
								 -->
								
								<form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocument.do" target="_blank">
				                	<input type="hidden" name="file_name" value="4"/>
				                	<input type="hidden" name="id" value="{{Obj.educational_doc_id_db}}"/>
				                	<input type="hidden"
								           name="${_csrf.parameterName}"
								           value="${_csrf.token}"/>
				                	<button type="submit" class="btn btn-info view-pdf">
				                		<i class="fa fa-file-pdf-o"></i>
				                	</button>
				                </form>
								
							</td>
							<td ng-if="Obj.degree_db == 13">
								<div class=" form-group" data-ng-if="Obj.phd_orig_degree_doc_id_db != null" >
								   O.D. <br /><a href="getmongoPdfFile.do?docid={{Obj.phd_orig_degree_doc_id_db}}&tablename=educational_info_phd_orig_degree" target="_blank">Click to View</a>
								</div>
								<div class=" form-group" data-ng-if="Obj.phd_prov_degree_doc_id_db != null && Obj.phd_prov_degree_doc_id_db.length > 0" >
								   P.D. <br /> <a href="getmongoPdfFile.do?docid={{Obj.phd_prov_degree_doc_id_db}}&tablename=educational_info_phd_prov_degree" target="_blank">Click to View</a>
								</div>
							</td>
							<td><a role="button" data-ng-click="editCategory(Obj)"
								class="btn btn-primary"><i class="fa fa-edit"></i></a></td>
							<!-- <td><a role="button" data-toggle="modal"
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
