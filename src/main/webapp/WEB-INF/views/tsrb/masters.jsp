<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html data-ng-app="rbts">
<head>
<%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma", "no-cache");
  response.setHeader("Expires", "0");
  response.setDateHeader("Expires", -1);
%>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<meta name="referrer" content="no-referrer">
<script type="text/javascript">
$("select").change(function() {
  $(".selectstydis").prop("disabled", !(this.value === "2"))
})
</script>
<script type="text/javascript">
 var master_data = ${master_data};
 $(document).ready(function() {
   $('#example').DataTable();
   $.validator.addMethod("regex", function(value, element, regexp) {
       var check = false;
       return this.optional(element) || regexp.test(value);
   }, "Please check your input." );
   $("#masterform").validate({
	rules: {
		value: {
			required : true,
			minlength : 5,
			maxlength: 100,
			regex : /^([a-zA-Z\s])+$/i
		}
	}
   });
 });
  var app = angular.module("rbts", []);
	app.controller('masterController', ['$scope', function ($scope) {
		$scope.master_data = master_data;
		
		$scope.editMaster = function(mastObj) {
			$scope.masterInfo = mastObj;
		} 
		$scope.addMaster = function() {
			$scope.masterInfo = {};
		}
	}]);
</script>
</head>
<body data-ng-controller="masterController" data-ng-cloak>
<section class="content">
<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
<security:authorize access="hasAuthority('Admin')">
	<div class="title1"><b>${curr_master} Masters Dashboard </b></div>
		<br>
		<spring:hasBindErrors name="mastermodel">
		<div class="container">
		<br/>
		<div class="alert alert-danger alert-dismissible fade in">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Error! ${errors.allErrors[0].defaultMessage}</strong> 
			</div>
		</div>
		</spring:hasBindErrors>
		<br>
		<c:if test="${curr_master ne 'Roles'}">
			<div class="row">
			<div class="col-md-8 col-md-offset-2">
			<p data-placement="top" data-toggle="tooltip">
				<button class="btn btn-primary" data-ng-click="addMaster()" data-title="Edit"
					data-toggle="modal" data-target="#edit">
					Add ${curr_master}
				</button>
			</p>
		</c:if>
    <div class="">
    <div class="table table-responsive">
               <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr  bgcolor="">
                <th>#</th>
                <th>${curr_master}</th>
                <c:if test="${curr_master ne 'Roles'}">
                	<th>Action</th>
                </c:if>
            </tr>
        </thead>
        <tbody>
        	<tr ng-repeat="master in master_data">
        		<td>{{$index+1}}</td>
                <td>{{master.value}}</td>    
                <c:if test="${curr_master ne 'Roles'}">
	                <td>
					<i data-title="Edit" data-ng-click="editMaster(master)" data-target="#edit" data-toggle="modal" class="btn btn-info fa fa-edit" style="font-size:20px"></i> 
						&nbsp; &nbsp; &nbsp; 
					</td>
				</c:if>	
            </tr>
            <tr ng-if="master_data.length == 0">
            	<td colspan="3" align="center">No Data Found.</td>
            </tr>
        </tbody>
    </table>
        </div>
        </div>
		<br><br>
</security:authorize>
</div></div></div>
</section>

<div class="modal fade" id="edit" tabindex="-1" role="dialog"
	aria-labelledby="edit" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
				<h4 class="modal-title custom_align" id="Heading">Enter ${curr_master}</h4>
</div>
<form id="masterform" role="form" action="${pageContext.request.contextPath}/rb_exe/addMasterData.do" method="POST">
<div class="modal-body">
	<div class="form-group">
		<input class="form-control" name="value" placeholder="${curr_master}" ng-model="masterInfo.value">
	</div>
</div>
<div class="modal-footer ">
	<input type="hidden" name="mastr_name" value="${curr_master}">
	<input type="hidden" name="id" value="{{masterInfo.id}}">
	<input type="hidden" name="${_csrf.parameterName}" value="${not empty _CSRF.token ? _CSRF.token : _csrf.token}"/>
<button type="submit" class="btn btn-warning btn-lg" style="width: 100%;">
	<span class="glyphicon glyphicon-ok-sign"></span> Add ${curr_master}
</button>
</div>
</form>
</div>
</div></div>
</body>
</html>
