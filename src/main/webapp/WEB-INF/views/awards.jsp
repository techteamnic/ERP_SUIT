<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html data-ng-app="rbts">
<head>
<style type="text/css">
.hiperlink {
  background-color: transparent;
  border: none;
  cursor: pointer;
  color: #5c72c1;
}
</style>
<title>Awards and Achievements</title>
<%-- <spring:url value="/resources/messjs/niper/awards.js" var="pagejs" /> --%>
<spring:url value="/appjs/awards.js" var="pagejs" />
<script type="text/javascript" src="${pagejs}"></script>
<script>
	$(document).ready(function() {
		$('#multi_pos_applied').modal('show');
		$('#table1').DataTable();
		$('#table2').DataTable();
	});
	var awards = ${copdetails};
	var achivements = ${copdetails2};
	getAwards();
	jQuery(document).ready( function () {
		var id = 1;
	        $("#append").click( function(e) {
	          e.preventDefault();
	        $(".inc").append('<div class="controls ">\
	        		<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Awards, Honors, Memberships</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="awards" id="awards'+id+'" placeholder="Awards, Honors, Memberships"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>Institute / Organization</b></label></div><div class="col-md-3 form-group"><input class="form-control datep" type="text" name="organization" id="organization'+id+'" placeholder="Institute / Organization"></div></div>\
					<br>\
					<div class="row col-md-12"><div class="col-md-offset-2 col-md-3 form-group"><label><b>If any other relevant information</b></label></div><div class="col-md-3 form-group"><input class="form-control" type="text" name="remarks" id="remarks'+id+'" placeholder="If any other relevant information"></div></div>\
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
</script>
</head>
<body data-ng-controller="AwardsPageController" data-ng-cloak>
	<div class="container-fluid">
		<div class="box form_content">
			<div class="title1">
				<b>Awards and Achievements</b>
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
					action="${pageContext.request.contextPath}/rb_chief/awards.do?${_csrf.parameterName}=${_csrf.token}"
					method="POST" modelAttribute="awardsattr" id="awardsId" enctype="multipart/form-data">
<label style= "color: red;background-color: yellow;"><b>Note:</b></label><label><b style= color:red>&nbsp;User Can Add Awards or Achievements Details One By One</b></label><br></br>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>Category</b></label>
						</div>
						<div class="col-md-3 form-group">
						<form:select class="form-control" id="awards" path="awards" data-ng-model="Obj.awards_db" multiple="false">
								<option value="">--Select--</option>
								<option value="Awards">Awards</option>
								<option value="Achievements">Achievements</option>
							</form:select>
							<%-- <form:input type="text" path="awards" id="awards"
								data-ng-model="Obj.awards_db" class="form-control "
								placeholder="Awards, Honors, Memberships" /> --%>
								<form:errors path="awards" class="server_error"></form:errors>
						</div>
					</div>
					<%-- <div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>Institute / Organization</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="organization" id="organization"
								data-ng-model="Obj.organization_db" class="form-control "
								placeholder="Institute / Organization" />
								<form:errors path="organization" class="server_error"></form:errors>
						</div>
					</div> --%>
					<div class="row col-md-12">
						<div class="col-md-offset-2 col-md-3 form-group">
							<label><b>If any other relevant information</b></label>
						</div>
						<div class="col-md-3 form-group">
							<form:input type="text" path="remarks" id="remarks"
								data-ng-model="Obj.remarks_db" class="form-control "
								placeholder="Ex: 1st Prize" />
								<form:errors path="remarks" class="server_error"></form:errors>
						</div>
					</div>
					<div class="row col-md-12">
					<div class="col-md-offset-2 col-md-3 form-group">
						<label><b>Upload Document</b></label>
					</div>
					<div class="col-md-3 form-group">
						<form:input type="file" accept=".pdf" class="form-control" id="awards_doc" path="awards_doc" data-ng-required="Obj.awards_doc_id_db == null" data-toggle="tooltip" title="Note: Please Upload Document"/>
						<form:errors path="awards_doc" class="server_error"/>
						<div style="font-size: 11px; color: red">File format to be uploaded (.pdf) and its maximum size is 5 MB</div>
					</div>
					<c:set var="awards_doc_id" value="{{Obj.awards_doc_id_db}}" />
						<c:if test="${not empty awards_doc_id}">
							<div class=" form-group" data-ng-if="Obj.awards_doc_id_db != null" >
							   <a href="getmongoPdfFile.do?docid=${awards_doc_id}&tablename=awards_doc" target="_blank">Click to View Uploaded Document</a>
							</div>
						</c:if>
				</div>
					<!-- <div class="row">
					    <div class="col-md-4 col-md-offset-4 form-group">
                              <button class="btn btn-info" type="button" id="append"> + Add Additional Awards and Honors</button>
                        </div> 
                    </div>
                    <div class="row">
				        <div class="inc form-group">
                         </div>
					 </div> -->

					<form:hidden path="id" value="{{Obj.id}}" data-ng-model="Obj.id" />

					<br>
					<br>
					<div>
						<form:hidden path="id" value="{{awards.id}}" />
						<form:hidden path="awards_doc_id" value="{{Obj.awards_doc_id_db}}" data-ng-if="Obj.awards_doc_id_db != null" />
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button type="submit" class="btn btn-md btn-primary col-md-offset-5" id="awardsBId">Submit</button>
						<!-- <button class="btn btn-md btn-info" data-ng-click="clearScreen(Obj)">Clear</button> -->
						<a class="btn btn-md btn-info" href="${pageContext.request.contextPath}/${userrole}/awards.do">Clear</a>
					</div>
					<br />
					<br />
					<br />
				</form:form>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="box form_content">
			<div class="table-responsive">
				<h4 class="title1">Awards Dashboard</h4>
				<table border="1" id="table2"
					class="table table-striped table-bordered" cellspacing="0"
					width="100%">
					<thead>
						<tr>
							<th>S.No</th>
							<th>Awards</th>
<!-- 							<th>Institute / Organization</th> -->
							<th>Other relevant information</th>
							<th>Document</th>
							<th>Edit</th>
							<!-- <th>Delete</th> -->
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="Obj in awards">
							<td>{{$index+1}}</td>
							<td>{{Obj.awards_db}}</td>
<!-- 							<td>{{Obj.organization_db}}</td> -->
							<td>{{Obj.remarks_db}}</td>
							<td>
								<div class=" form-group" data-ng-if="Obj.awards_doc_id_db != null" >
<!-- 								   <a href="getmongoPdfFile.do?docid={{Obj.awards_doc_id_db}}&tablename=awards_doc" target="_blank">Click to View</a> -->
								   <form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocumentAlt.do" target="_blank">
				                	<input type="hidden" name="file_name" value="awards_doc"/>
				                	<input type="hidden" name="id" value="{{Obj.awards_doc_id_db}}"/>
				                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				                	<input type="submit" class="hiperlink" value="Click to View" />
				                </form>
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
	<div class="container-fluid">
		<div class="box form_content">
			<div class="table-responsive">
				<h4 class="title1">Achievements Dashboard</h4>
				<table border="1" id="table1"
					class="table table-striped table-bordered" cellspacing="0"
					width="100%">
					<thead>
						<tr>
							<th>S.No</th>
							<th>Achievements</th>
<!-- 							<th>Institute / Organization</th> -->
							<th>Other relevant information</th>
							<th>Document</th>
							<th>Edit</th>
							<!-- <th>Delete</th> -->
						</tr>
					</thead>
					<tbody>
						<tr data-ng-repeat="Obj in achivements">
							<td>{{$index+1}}</td>
							<td>{{Obj.awards_db}}</td>
<!-- 							<td>{{Obj.organization_db}}</td> -->
							<td>{{Obj.remarks_db}}</td>
							<td>
								<div class=" form-group" data-ng-if="Obj.awards_doc_id_db != null" >
<!-- 								   <a href="getmongoPdfFile.do?docid={{Obj.awards_doc_id_db}}&tablename=awards_doc" target="_blank">Click to View</a> -->
								   <form method="POST" action="${pageContext.request.contextPath}/rb_chief/loadDocumentAlt.do" target="_blank">
				                	<input type="hidden" name="file_name" value="awards_doc"/>
				                	<input type="hidden" name="id" value="{{Obj.awards_doc_id_db}}"/>
				                	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<!-- 				                	<button type="submit" class="btn btn-info view-pdf"><i class="fa fa-file-pdf-o"></i></button> -->
				                	<input type="submit" class=" hiperlink" value="Click to View" />
				                </form>
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
