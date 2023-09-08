<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
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
<meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline' https://translate.googleapis.com/; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/; font-src 'self'; frame-src; object-src ">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="description" content="3D Thumbnail Hover Effects" />
  <meta name="keywords" content="3d, 3dtransform, hover, effect, thumbnail, overlay, curved, folded" />

  <!-- Favicons -->
  <link href="img/satyamevajayate.png" rel="icon">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/css/animate.css" rel="stylesheet">
  <link href="vendor/css/style.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/sb-admin-2.min.c" rel="stylesheet">
  
<style>
label {
   margin-bottom: 9px !important;
   font-weight: 500 !important;

}
.textstylelab label{
text-align:left !important;
}
.notfound a {
  font-family: 'Titillium Web', sans-serif;
  display: inline-block;
  text-transform: uppercase;
  color: #fff;
  text-decoration: none;
  border: none;
  background: #5c91fe;
  padding: 10px 40px;
  font-size: 14px;
  font-weight: 700;
  border-radius: 1px;
  margin-top: 15px;
  -webkit-transition: 0.2s all;
  transition: 0.2s all;
}

.notfound a:hover {
  opacity: 0.8;
}	
.footer {
  background-color: #05246b;
  min-height: 50px !important;
  position: static;
  left: 0;
  bottom: 0;
/*   width: 100%; */
  color: white;
  text-align: center;
}
.itempad{
padding-left: 16px;
}
</style>
<script type="text/javascript">
	function printAcknowledgement() {
		window.print();
	}
</script>
<script type="text/javascript" src="vendor/js/jquery-3.5.0.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/js/pdfview.js"></script>
</head>
<body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
        <div class="wrapper">
          <div class="container-fluid">
          <div class="row">
              <div class="header"><img  class="img-responsive" src="img/headernew.png"> </div>
                </div>
<br>
 <div class="container-fluid">
                <div class="row">
                    <div class="gallery">
            <c:if test="${not empty acknowlwdge}">        
            <div class="panel">
			<div class="Searchsty">Acknowledgement<h6><hr>
									<div class="container-fluid">
                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->

                        <div class="row">
                            <!-- Area Chart -->
                            <div class="col-xl-12">
                                            <div class="container"><br>
                                            <div class="col-md-8 col-md-offset-2 borderstys">
                                            <p>Thank You, Your Application is received in Telangana Raj Bhavan. The decision will be conveyed shortly. An SMS has been sent to your Mobile Number.</p>
                                            <br><br>
											<div class="row">
                                       			<p class="acknfontitem itempad">Registration Number : ${acknowlwdge.application_no}</p>
<!--                                                 <label class="col-md-8 col-md-offset-1 acknfontitem"></label> -->
									       </div>
										   <div class="row">
										   		<p class="acknfontitem itempad">Applicant Name : ${acknowlwdge.applicant_name}</p>
<%--                                                 <label class="col-md-8 col-md-offset-1 acknfontitem">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ${acknowlwdge.applicant_name}</label> --%>
									       </div>
									       <c:if test="${not empty acknowlwdge.visit_description and acknowlwdge.visit_description ne ''}">
										   	<div class="row">
										   		<p class="acknfontitem itempad">Subject : ${acknowlwdge.visit_description}</p>
<%--                                                 <label class="col-md-8 col-md-offset-1 acknfontitem">Subject &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ${acknowlwdge.visit_description}</label> --%>
									       </div>
									       </c:if>
										  <div class="row">
									  			<p class="acknfontitem itempad">Registration Date : ${acknowlwdge.print_reg_Date}</p>
<%--                                                 <label class="col-md-8 col-md-offset-1 acknfontitem">Registration Date &nbsp;&nbsp;: ${acknowlwdge.print_reg_Date}</label> --%>
									       </div>
													<br>
                                                    <div class="form-group no-print"><br><br>
                                                        <div class="col-md-8 col-md-offset-1">
                                                            <button class='btn btn-info btn-outline-info' onclick="printAcknowledgement()">Print</button>
                                                            <security:authorize access="isAuthenticated()">
                                                            <a href="${pageContext.request.contextPath}/tsrb.do"><div class="btn btn-md btn-info">HOME</div></a>
                                                            </security:authorize>
                                                            <security:authorize access="!isAuthenticated()">
                                                            <a href="${pageContext.request.contextPath}"><div class="btn btn-md btn-info">HOME</div></a>
                                                            </security:authorize>
                                                        </div>
                                                    </div><br><br>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                </div>
                </div>
                </c:if>
                <c:if test="${empty acknowlwdge}">
               	  <div class="notfound">
                	<security:authorize access="isAuthenticated()">
						<a href="${pageContext.request.contextPath}/tsrb.do">Go To Homepage</a>
					</security:authorize>
					<security:authorize access="!isAuthenticated()">
						<a href="${pageContext.request.contextPath}">Go To Homepage</a>
					</security:authorize>
				  </div>
                </c:if>
                <br>
               <div class="row footer">	
           <div class="">
               <div class="col-md-12">
               <p>2020 © Copyright by National Informatics Center, Hyderabad</p>	
               </div>
           </div>
       </div>
</div></div></div></div></div></div>
	</body>
</html>
