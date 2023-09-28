<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<section class="sidebar">
   <security:authorize access="hasAuthority('User')">
   		<ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/user/adc_forwarded.do"><i class="fa fa-edit"></i> Adc Forwarded Applications </a></li>
	    </ul>
   </security:authorize>
   <security:authorize access="hasAuthority('Adc')">
        <ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/rb_chief/new_appontment.do"><i class="fa fa-edit"></i> New Entry </a></li>
	    </ul>
    	<ul class="sidebar-menu">
		  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>User Details</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		    <li><a href="${pageContext.request.contextPath}/rb_chief/educationalDetails.do"><i class="fa fa-caret-right"></i> Education Details </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/WorkExperience.do"><i class="fa fa-caret-right"></i> Work Experience </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/awards.do"><i class="fa fa-caret-right"></i> Awards </a></li>	
          </ul>
        </li>
       </ul>
       <ul class="sidebar-menu">
		  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Applications for Action</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		    <li><a href="${pageContext.request.contextPath}/rb_chief/WorkExperience.do"><i class="fa fa-caret-right"></i> Work Experience-- </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/representation_registered.do"><i class="fa fa-caret-right"></i> Submit Representation </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/message_registered.do"><i class="fa fa-caret-right"></i> Request for Message </a></li>			
		    <li><a href="${pageContext.request.contextPath}/rb_chief/courtesy_registered.do"><i class="fa fa-caret-right"></i> Courtesy Call </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/event_registered.do"><i class="fa fa-caret-right"></i> Invitation to Event </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/others_registered.do"><i class="fa fa-caret-right"></i> Others </a></li>
          </ul>
        </li>
       </ul>
       <ul class="sidebar-menu">
		  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Applications Accepted</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		    <li><a href="${pageContext.request.contextPath}/rb_chief/representation_accepted.do"><i class="fa fa-caret-right"></i> Submit Representation </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/message_accepted.do"><i class="fa fa-caret-right"></i> Request for Message </a></li>			
		    <li><a href="${pageContext.request.contextPath}/rb_chief/courtesy_accepted.do"><i class="fa fa-caret-right"></i> Courtesy Call </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/event_accepted.do"><i class="fa fa-caret-right"></i> Invitation to Event </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/others_accepted.do"><i class="fa fa-caret-right"></i> Others </a></li>
          </ul>
        </li>
       </ul>
       <ul class="sidebar-menu">
		  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Applications Regretted</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		    <li><a href="${pageContext.request.contextPath}/rb_chief/representation_regretted.do"><i class="fa fa-caret-right"></i> Submit Representation </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/message_regretted.do"><i class="fa fa-caret-right"></i> Request for Message </a></li>			
		    <li><a href="${pageContext.request.contextPath}/rb_chief/courtesy_regretted.do"><i class="fa fa-caret-right"></i> Courtesy Call </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/event_regretted.do"><i class="fa fa-caret-right"></i> Invitation to Event </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/others_regretted.do"><i class="fa fa-caret-right"></i> Others </a></li>
          </ul>
        </li>
       </ul>
       <ul class="sidebar-menu">
		  <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Applications Pending</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		    <li><a href="${pageContext.request.contextPath}/rb_chief/representation_pending.do"><i class="fa fa-caret-right"></i> Submit Representation </a></li>	
		    <li><a href="${pageContext.request.contextPath}/rb_chief/message_pending.do"><i class="fa fa-caret-right"></i> Request for Message </a></li>			
		    <li><a href="${pageContext.request.contextPath}/rb_chief/courtesy_pending.do"><i class="fa fa-caret-right"></i> Courtesy Call </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/event_pending.do"><i class="fa fa-caret-right"></i> Invitation to Event </a></li>
		    <li><a href="${pageContext.request.contextPath}/rb_chief/others_pending.do"><i class="fa fa-caret-right"></i> Others </a></li>
          </ul>
        </li>
       </ul>
       <ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/rb_chief/appl_approved.do"><i class="fa fa-edit"></i> Appointments Approved </a></li>
       </ul>
       <ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/rb_chief/appl_closed.do"><i class="fa fa-edit"></i> Applications Closed </a></li>
       </ul>
      
      </security:authorize>
   <security:authorize access="hasAuthority('Secretary')">
   		<ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/rb_secr/adc_forwarded.do"><i class="fa fa-edit"></i> Adc Forwarded Applications </a></li>
	    </ul>
   </security:authorize>
   <security:authorize access="hasAuthority('Admin')">
   		<ul class="sidebar-menu">
        	<li><a href="${pageContext.request.contextPath}/rb_exe/add_gallery.do"><i class="fa fa-edit"></i> Add Gallery </a></li>
	      	<li><a href="${pageContext.request.contextPath}/rb_exe/edit_gallery.do"><i class="fa fa-edit"></i> Edit Gallery </a></li>

	    </ul>
   </security:authorize>
</section>