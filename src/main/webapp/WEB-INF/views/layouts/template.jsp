<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<meta name="referrer" content="no-referrer">
<meta charset="utf-8">
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
response.setDateHeader("Expires", -1);
%>
<title>
	<tiles:insertAttribute name="title" />
</title>
  <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline' 'unsafe-eval' https://translate.googleapis.com/ https://cdn.datatables.net/; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://cdn.datatables.net/; font-src 'self'; frame-src; object-src ">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link href="${pageContext.request.contextPath}/images/Telengana_State.png" rel="icon">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/style_smenu.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/all_colors.css">
  <link href="${pageContext.request.contextPath}/vendor/sb-admin-2.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/img/satyamevajayate.png" rel="icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/vendor/css/jquery.datetimepicker.css">
  <style>
.panel-body .btn:not(.btn-block) { 
font-size: 0px;
    width: 215px;
    margin-bottom: 18px;
	    padding-top: 5px;
    height: 100px;
}
.btn-exp{
color:white;
background-color:#50398c;
}
.btn-exp:hover{
background-color:#6a4db7;
color:white;
}
.imgpan{
float:left;
}
.teststy h4{
    font-size: 14px;

}
.Searchsty{
font-weight: 600;
font-size: 20px;
background: #5155bd;
border-bottom: 1px solid #7b7ec1;
text-align:center;
padding: 10px;
color:white;
}
.Searchsty a:hover{
background:  !important;
}
.nav-tabs>li>a {
   border-radius: 1px;
   border: 1px solid white !important;
}
.nav-tabs>li.active {
    border-radius: 1px;
    background: #e1651e;
}
.nav-tabs>li {
    text-align: center;
    width: 20%;
    float: left;
    margin-bottom: -1px;
}
.panel-gallery1{
    min-height:288px !important;	
	padding: 5px;
}
.active1{
    background: #e1651e  !important;
    color: #ffffff !important;
}
h6 a{
color:white;
}
h6 a:hover{
color:white;
}

/* .select_org1{
display:none;
} */

/* .select_event{
display:none;
} */
/* .select_msg{
display:none;
} */
.error{
color: blue;
}
.plainviewkey{
	text-align: center;
}

.plainviewvalue{
	color: blue;
}
  </style>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath}/vendor/js/jquery-3.5.0.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/bootstrap/js/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/leftmenu.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/canvasjs.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/vendor/js/jquery.datetimepicker.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/angular/angular.min.js"></script>
<!-- <script type="text/javascript">
$(document).ready(function() {
    document.onkeydown=function(e){return 123!=event.keyCode&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="I".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="J".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="U".charCodeAt(0))&&((!e.ctrlKey||e.keyCode!="U".charCodeAt(0))&&void 0))))};
    $("body").on("contextmenu",function(e){
    	alert('Sorry, this functionality is disabled!');
        return false;
     });
});
</script> -->
</head>
<body class="skin-blue sidebar-mini">
	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>
	<div class="wrapper">
		<tiles:insertAttribute name="main_header" />
		<aside class="main-sidebar">
			<tiles:insertAttribute name="side_bar" />
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<tiles:insertAttribute name="body" />
		</div>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
</body>
</html>
