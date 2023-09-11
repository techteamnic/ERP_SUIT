<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>d-Akademy ERP</title>
<%
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma", "no-cache");
  response.setHeader("Expires", "0");
  response.setDateHeader("Expires", -1);
%>
<!--   <meta http-equiv="Cache-Control" content="no-cache,must-revalidate,no-store"> -->
  <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline' https://platform.twitter.com/ https://www.facebook.com/ https://www.youtube-nocookie.com/ https://translate.googleapis.com/ https://cdn.syndication.twimg.com/ https://cdn.datatables.net/ https://code.jquery.com/ https://cdnjs.cloudflare.com/; connect-src 'self'; img-src 'self' data: https://www.gstatic.com/ https://syndication.twitter.com/ https://pbs.twimg.com/ https://abs.twimg.com/ https://ton.twimg.com/ https://platform.twitter.com/; style-src 'self' 'unsafe-inline' https://translate.googleapis.com/ https://platform.twitter.com/ https://ton.twimg.com/ https://cdn.datatables.net/ https://cdnjs.cloudflare.com/; font-src 'self' https://cdnjs.cloudflare.com/; frame-src https://www.facebook.com/ https://www.youtube-nocookie.com/ https://platform.twitter.com/ https://syndication.twitter.com/; object-src https://platform.twitter.com/ https://www.facebook.com/ https://www.youtube-nocookie.com/">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="description" content="3D Thumbnail Hover Effects" />
  <meta name="keywords" content="3d, 3dtransform, hover, effect, thumbnail, overlay, curved, folded" />
  <meta name="referrer" content="no-referrer">

  <script type="text/javascript" src="vendor/js/jquery.min.js"></script>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/css/animate.css" rel="stylesheet">
  <link href="vendor/css/style.css" rel="stylesheet">

  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">


 <style>
input[type=text], input[type=password] {
    background: #2a313abf;
    border-radius: 15px;
	color:white;
    width: 100%;
    padding: 6px 8px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #f1ccb7;
    box-sizing: border-box;
	}


button {
  border-radius: 15px;
  background-color: #4CAF50;
  color: white;
  padding: 8px 15px;
  margin: 6px 0;
  border: none;
  cursor: pointer;
}
.btnstylenew{
width:100% !important;
}
button:hover {
  opacity: 0.8;
}
 button a{
 color:white;
 }
 button a:hover{
 color:pink;
 }
.cancelbtn {
width: auto;
    padding: 5px 13px;
    background-color: #f44336;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
    border:3px solid #f1f1f1;
    padding: 3px;
    background-color: #292c37;
    width: 18%;
    border-radius: 50%;
    margin-top: -99px;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

.modal1 {
    z-index: 100;
  display: none; 
  position: fixed; 
  /*z-index: 1;  Sit on top */
  left: 0;
  top: 0;
  width: 100%; 
  height: 100%;
  overflow: auto; 
  background-color: rgb(0,0,0); 
  background-color: rgba(0,0,0,0.4); 
  padding-top: 60px;
}

.modal-content1 {
    padding:10px;
    border-radius: 35px;
    color: white;
    background-color: #1b2657b0;
    margin: 5% auto 15% auto;
    border:3px solid #ffffff;
    width: 28%;
}

.close1 {
  position: absolute;
  right: 25px;
  top: 0;
  color: white;
  font-size: 35px;
  font-weight: bold;
  opacity: 0.8;
}

.close1:hover,
.close1:focus {
      opacity: 1;
    color: #FF9800;
  cursor: pointer;
}

.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}


@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

</style>
</head>

<body>

            <div class="container-fluid">
                
                <div class="row">
                    <div class="header"><h1>d-Akademy- ERP Suite</h1> </div>
                </div>
				  <header id="header">
        <div class="logo float-left">
        <h3 class="text-light" id="headlogo" style="margin-left:30px;">d-Akademy- ERP Suite</h3>
      </div>
	  <div class="row">

                    <div class="menu">
                        <div id="navbar">
                            <nav
                                class="navbar1 navbar-default navbar-fnt navbar-backgrnd nav-size"
                                role="navigation">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                                            data-target="#navbar-collapse-1">
                                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span
                                            class="icon-bar"></span>
                                    </button>
                                </div>

                              <div class="collapse navbar-collapse" id="navbar-collapse-1">
                                    <ul class="nav navbar-nav">

                                      <li></li>	


    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    <li><a href="${pageContext.request.contextPath}">Home</a></li>
	    <c:if test="${not empty error_msg}">
		   <li>
		   	<!-- Error Alert -->
		   	<a href="#"><strong style="color: red">${error_msg}</strong></a>
		   </li>
	   </c:if>
	   <c:if test="${not empty user_logout}">
		   <li>
		   	<!-- Error Alert -->
		   	<a href="#"><strong style="color: red;">${user_logout}</strong></a>
		   </li>
	   </c:if>
      <li><a onclick="document.getElementById('id01').style.display='block'" href="#"><span class="glyphicon glyphicon-log-in"></span>&nbsp; Login</a></li>
     								<li>&nbsp; &nbsp; </li>
							   <i class="fa fa-bars fabar" aria-hidden="true"></i></span></li>
<!-- 	 <li>&nbsp; &nbsp; </li> -->
    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>  
  </header>
            
<div class="row banner">
<img src="img/ban.jpg">
</div>
             
</div>
<div id="id01" class="modal1">
  <form id="log_form" class="modal-content1 animate" action="login.do" method="POST" autocomplete="off">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close1" title="Close Modal" id="log_cross">&times;</span>
      <img src="img/user.png" alt="userREGicon" class="avatar">
    </div>

    <div class="">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="user_name" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="p_val" required id="p_val">
      <div class="row">
	  <%-- <div class="col-md-4">
       <div for="captcha" style="font-size:30px; background: #b5adadcf; padding: 7px;">${captcha}</div>
	  </div> --%>
	  <div class="col-md-6">
		<img alt="captcha" class="img-thumbnail" src="data:image/png;base64,${captchaEncode}"/>
	  </div>
	  <div class="col-md-6">
	  <input type="text" placeholder="Enter Captcha" name="captcha" required width=50%>
        </div>
        </div><br>
      <input type="hidden"
           name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
      <input type="submit" class="btnstylenew btn button" value="Login" id="passcode"/>
    </div>

    <div class="row">
    <div class="col-md-6">
      <button id="log_cancel" type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
	  </div>
    </div>
  </form>
</div>
<footer id="footer" class="section-bg">

                <div class="footer">	
                    <div class="container-fluid">
                        <div class="col-md-12">
                        <p>Copyright © DIGIKS INFOTECH. All Rights  Reserved</p>	
                           
                        </div>

                    </div>
                </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  
  
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="vendor/js/pdfview.js"></script>
  <script src="vendor/js/easy-ticker.js" type="text/javascript"></script>
	
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/mobile-nav/mobile-nav.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="contactform/contactform.js"></script>
  
  <script src="js/app_code_1.js"></script>
  <script src="js/main.js"></script>
  <script src="js/app_code_2.js"></script>
  <script src="js/jquery.modern-ticker.min.js"></script>
    <script>
        function blinker() {
            $('.blink_me').fadeOut(500);
            $('.blink_me').fadeIn(500);
        }
        setInterval(blinker, 1000);
    </script>
    <script type="text/javascript">
    	var ran_val = ${ran_val};
        $(document).ready(function () {
        	var is_clicked;
            $("#myModal-pop").modal('show');
            $("#passcode").click(function() {
     		   var passcode = $('#p_val').val();
      		   if(passcode != ""){
      			   if(is_clicked == null || is_clicked){
     				 var pass1=GM(GM(GM(passcode)));
      		         var sha256 = new jsSHA('SHA-256', 'TEXT');
      		         sha256.update(pass1+ran_val);
      		         var pass2 = sha256.getHash("HEX");
//      		     var r_val = ran_val.toString();
// 					 var ipa = "12b02954fde3e0a01347d8c7781da9c0855112ecfe242022e332c681f58ddb9";
      		         $("#p_val").val(pass2);
      		         is_clicked = false;
     			   }
      			   else{
      				 $("#p_val").val('');
      				 is_clicked = true;
      			   }
       			} 
       		});
/*             document.onkeydown=function(e){return 123!=event.keyCode&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="I".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="J".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="U".charCodeAt(0))&&((!e.ctrlKey||e.keyCode!="U".charCodeAt(0))&&void 0))))};
            $("body").on("contextmenu",function(e){
            	alert('Sorry, this functionality is disabled!');
                return false;
            }); */
            $("#log_cross").click(function() {
            	$("#log_form").get(0).reset();
            });
            $("#log_cancel").click(function() {
            	$("#log_form").get(0).reset();
            });
        });
    </script>


	  <script src="js/main.js"></script>


</body>
</html>
