<html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<meta name="referrer" content="no-referrer">
</head>
<body>
<security:authorize access="hasAuthority('Adc')">
<section class="content">
<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
<div class="title1"><b>   Dashboard and Reports  </b></div>
		<br><br>

    <div class="container-fluid">
        <div class="col-md-11">
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-sitemap fa-3x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">${appl_stats.appl_action}</div>
										<div>Applications for Action</div>
									</div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_registered.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-green">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-male fa-3x"></i>
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">${appl_stats.appl_accepted}</div>
										<div>Applications Accepted</div>
									</div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_accepted.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-red">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-users fa-3x"></i>
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">${appl_stats.appl_regretted}</div>
										<div>Applications Regretted</div>
									</div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_rejected.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-yellow">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-university fa-3x"></i>
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">${appl_stats.appl_pending}</div>
										<div>Applications Pending</div>
									</div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_pending.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-blue">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-check-square-o fa-3x"></i>
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">${appl_stats.appl_approved}</div>
										<div>Approved Appointment List</div>
									</div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_approved.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-sky">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-2">
										<i class="fa fa-list-ol fa-3x"></i>
									</div>
									<div class="col-xs-10 text-right">
										<div class="huge">${appl_stats.appl_closed}</div>
                                       Appointments Closed
									   </div>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/rb_chief/appl_closed.do">
								<div class="panel-footer">
									<span class="pull-left">View Details</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
            </div>
        </div>
        </div>	
</div>
</div>	
</section>
</security:authorize>
<security:authorize access="hasAuthority('Admin')">
<section class="content">
<div class="container-fluid">
<div class="col-md-12">
<div class="box form_content">
	<div class="title1"><b> Masters Dashboard </b></div>
		<br><br>
		<div class="list-group">
			<c:if test="${not empty masters}">
				<c:forEach items="${masters}" var="master">
					<form action="${pageContext.request.contextPath}/rb_exe/masterData.do" method="post">
						<input type="hidden" name="type" value="${master}"/>
						<input type="hidden"
					           name="${_csrf.parameterName}"
					           value="${not empty _CSRF.token ? _CSRF.token : _csrf.token}"/>
						<input type="submit" class="list-group-item list-group-item-action" value="${master}" style="width: 100%"/>
					</form>
				</c:forEach>
			</c:if>
		</div>
		</div>	
</div>
</div>	
</section>
</security:authorize>
</body>
</html>
