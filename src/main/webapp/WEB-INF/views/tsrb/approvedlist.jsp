<html data-ng-app="rbts">
<head>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<meta name="referrer" content="no-referrer">
<script type="text/javascript">
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
var approved_list = ${approved_list};
var app = angular.module("rbts", []);
app.controller('appointmentsListController', ['$scope', '$filter', function ($scope, $filter) {
	$scope.appoint_date = {};
	$scope.approved_list = approved_list;
	$(document).ready(function() {
	    $('#example').DataTable();
	});
	 $scope.getApprovedView = function(appoint_date) {
	    $.ajax({
	        method: "POST",
	        headers: {
	            "X-CSRF-TOKEN": $("meta[name='_csrf']").attr("content")
	        },
	        url: "appl_approved_view.do",
	        data: {
	        	approval_date: $filter('date')(appoint_date, "dd-MM-yyyy")
	        },
	        beforeSend: function(xhr) {
	            xhr.setRequestHeader(header, token);
	        },
	        success: function(data) {
	        	$scope.approved_apps = data;
	        	$scope.approval_date = appoint_date;
	        	$("#approved_view").modal('show');
	        	$scope.$apply();
	        }
	    });
	} 
}]);
</script>
<style type="text/css">
[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
  display: none !important;
}
</style>
</head>
<body data-ng-controller="appointmentsListController" data-ng-cloak>
		<br>
		<div class="container-fluid">
			<div class="row">
				<div class="gallery">
					<div class="panel">
						<div class="Searchsty">
							Approved Appointments
						</div>
						<br>
						<div class="container-fluid">
						    <div class="table table-responsive">
						        <table id="example" class="table table-striped table-bordered" style="width:100%">
									<thead>
										<tr bgcolor="">
											<th>S.No</th>
											<th>Date of Appointments</th>
											<th>View Details</th>
											<th>Download</th>

										</tr>
									</thead>
									<tbody ng-cloak>
									    <tr data-ng-if="approved_list.length == 0">
									    	<td colspan="4" align="center"><b>No Data Available.</b></td>
									    </tr> 
										<tr data-ng-if="approved_list.length > 0" data-ng-repeat="approved_item in approved_list">
											<td>{{$index+1}}</td>
											<td>{{approved_item.appoint_date | date : 'dd-MM-yyyy'}}</td>
											<td>
												<div data-placement="top" data-toggle="tooltip">
													<div class="btn btn-info" data-title="Edit" data-ng-click="getApprovedView(approved_item.appoint_date)">
														<i class="fa fa-sm fa-eye"></i>
													</div>
												</div>
											</td>
											<td>
												<form target="_blank" action="${pageContext.request.contextPath}/rb_chief/appl_approved_download.do" method="post">
													<input type="hidden" name="approval_date" value="{{approved_item.appoint_date | date : 'dd-MM-yyyy'}}">
													<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
													<input type="submit" class="btn btn-sm btn-md btn-info" value="Download"/>
												</form>
											</td>
										</tr>
									</tfoot>
								</table>
							</div>
							<div class="">
								<br>
								<br>
								<!-- <div class="col-sm-3 col-md-offset-6">
									<a href="home_adclogin.html"><div
											class="btn btn-md btn-info">Close</div></a>
								</div> -->
							</div>
							<br>
							<br> <br>
							<br>
						</div>

					</div>
				</div>
			</div>
		</div>
		
		<div class="modal fade" id="approved_view" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<p class="modal-title"><label style="color: red">Appointments Approved for {{approval_date | date : 'dd-MM-yyyy'}}.</label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					</p>
				</div>
				<div class="modal-body">
					<div class="table table-responsive">
	       				<table id="example" class="table table-striped table-bordered" style="width:100%">
							<thead>
								<tr>
									<th>S.No</th>
									<th>Application No</th>
									<th>Applicant Name</th>
									<th>ID Proof No</th>
								</tr>
							</thead>
							<tbody ng-cloak>
								<tr data-ng-repeat="approved_app in approved_apps">
									<td>{{$index+1}}</td>
									<td>{{approved_app.application_no}}</td>
									<td>{{approved_app.applicant_name}}</td>
									<td>{{approved_app.applicant_id_no}}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>