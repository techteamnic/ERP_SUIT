<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
%>
<header class="main-header">
   <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
		<li> 
			<security:authorize access="isAuthenticated()">
             	<a href="${pageContext.request.contextPath}/tsrb.do"><i class="fa fa-home"></i> &nbsp;Home</a>
            </security:authorize>
		</li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
             <i class="fa fa-user" aria-hidden="true"></i>&nbsp;&nbsp;<i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu">
              <li>
                <ul class="menu">
                  <li>
                    <a href="${pageContext.request.contextPath}/changePass.do">Change Password</a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/logout.do">Logout </a>
                  </li>
                </ul>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>