<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ERP SUIT</title>
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
  <link href="img/satyamevajayate.png" rel="icon">

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
   <div class="wrapper">
            <div class="container-fluid">
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <div class="row">
                    <div class="togglediv">
                        <div class="">
                            <ul class="toggledivlist">

                                <li><a href="#">Color</a>
                                    <button class="btn btn-xs btnstyle1" id="co">&nbsp;&nbsp;&nbsp;</button>
                                    <button class="btn btn-xs btnstyle3" id="co2">&nbsp;&nbsp;&nbsp;</button>
                                    <button class="btn btn-xs btnstyle2" id="co1">&nbsp;&nbsp;&nbsp;</button>
                                    <button class="btn btn-xs btnstyle4" id="co3">&nbsp;&nbsp;&nbsp;</button>
                                    <button class="btn btn-xs btnstyle5" id="co4">&nbsp;&nbsp;&nbsp;</button>
                                </li>
                                <li><a href="#">Text Size</a>
                                    <button id="linkIncrease" class="btn btn-xs btnstyle"><b>A+</b></button>
                                    <button id="linkReset" class="btn btn-xs btnstyle"><b>A</b>&nbsp;</button>
                                    <button id="linkDecrease" class="btn btn-xs btnstyle"><b>A-</b></button>
                                </li>
								<li><a href="#">Language</a>
                                    <div id="google_translate_element"></div>
                                </li>
								<li>
								<a href="#"><i class="fa fa-facebook-official facontent" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-twitter-square facontent" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-google-plus-square facontent" aria-hidden="true"></i></a>
                                <a href="#"><i class="fa fa-linkedin-square facontent" aria-hidden="true"></i></a>
								</li>
                            </ul>
                        </div>
                    </div> 
                </div>
</div>


                
                <div class="row">
                    <div class="header"><img class="img-responsive" src="img/headernew.png"> </div>
                </div>
				  <header id="header">
        <div class="logo float-left">
        <h1 class="text-light"><img id="headlogo" src="img/logoicon.png" style="margin-left:30px;"></h1>
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

                                      <li><a href="${pageContext.request.contextPath}">Home</a></li>	


                                        <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">The Governor <b class="caret"></b></a>
                                          <ul class="dropdown-menu">
                                                <li><a href="present_governor.do">Present Governor </a></li>
                                                <li><a href="former_governors.do">Former Governors</a></li>
                                                <li><a href="roleofgovernor.do">Role of Governor</a></li>
                                                <li><a href="aschancellor.do">As Chancellor</a></li>
                                                <li><a href="exofficorole.do">Ex-Officio Role</a></li>
                                        </ul></li>
                                        <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">Governor's Secratariat <b class="caret"></b></a>
                                          <ul class="dropdown-menu">
                                                <li><a href="advisorstogovernor.do">Advisors to Governor </a></li>
                                                 <li class="dropdown dropdown-submenu"><a href="" class="dropdown-toggle" data-toggle="dropdown">Secretary to Governor</a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="presentsecretary.do">Present Secretary</a></li>
                                                                <li><a href="formersecretary.do">Former Secretaries</a></li>
                                                            </ul></li>
                                        </ul></li>
										 <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">History<b class="caret"></b></a>
                                          <ul class="dropdown-menu">
                                                <li><a href="historyofrajbhavan.do">Raj Bhavan History</a></li>
                                        </ul></li>
                                        <li><a href="speeches.do">Speeches</a></li>							
                                        <li><a href="contactus.do">Contact Us</a></li>							
                                        <li><a href="importantlinks.do">Important Links</a></li>
										 <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">Information Under RTI<b class="caret"></b></a>
                                          <ul class="dropdown-menu">
                                                <li><a href="pios_apios.do">PIOs / APIOs</a></li>
												 <li class="dropdown dropdown-submenu"><a href="" class="dropdown-toggle" data-toggle="dropdown">Distribution of Duties</a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="distributionsecretariatwing.do">Secretariat Wing</a></li>
                                                                <li><a href="distributionhouseholdwing.do">Household Wing</a></li>
                                                            </ul></li>												
                                                <li><a href="PDF/RTI_Telangana_Telugu_Budget.pdf" target="_blank">Financial Year Budget</a></li>
												 <li class="dropdown dropdown-submenu"><a href="" class="dropdown-toggle" data-toggle="dropdown">Employees Salary Details</a>
                                                            <ul class="dropdown-menu">
                                                                <li><a href="employeessalarysecretariatwing.do">Secretariat Wing</a></li>
                                                                <li><a href="employeessalaryhouseholdwing.do">Household Wing</a></li>
                                                            </ul></li>
                                                <li><a href="PDF/RTI-RAJ BHAVAN-Telugu.pdf" target="_blank">RTI in Telugu</a></li>
                                        </ul></li>										
										 <li class="dropdown"><a href="" class="dropdown-toggle"
                                                                data-toggle="dropdown">Services<b class="caret"></b></a>
                                          <ul class="dropdown-menu">
                                                <li><a href="register_appontment.do">Schedule an Appointment</a></li>
                                                <li><a href="http://164.100.77.222/Alumni/">ALUMNI</a></li>
                                        </ul></li>
    </ul>
	    <ul class="nav navbar-nav navbar-right">
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
       <!--flash news-->
  
  <div class="ticker1 modern-ticker mt-round mt-scroll">
						<div class="mt-body">
							<div class="mt-label btn-default2">Flash News</div>
							<div class="mt-news" style="left: 105.578px; width: 1081.42px;">
								<ul style="width: 2823.44px; margin-left: 90%">

<li><a href="PDF/MOVING_FORWARD_WITH_MEMORIES_OF_MAIDEN_YEAR.pdf" target="_blank">  <img src="img/new4.gif"> &nbsp;
Coffee Table Book "MOVING FORWARD WITH MEMORIES OF MAIDEN YEAR", a Pictorial Compilation of One Year activities of Dr.(Smt.) Tamilisai Soundararajan Hon'ble Governor of  Telangana.
</a><div class="headline2"></div></li>
</ul>
							</div>
							<div class="mt-controls">
								<div class="mt-prev"></div>
								<div class="mt-play mt-pause"></div>
								<div class="mt-next"></div>
							</div>
						</div>
					</div>
  
  <!--end flash news-->       
              
                  <div class="row bgsty">
                <div class="col-md-8">
				<section id="services" class="section-bg">
				<div class="">				  
                <div class="menudiv">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">

    <div class="carousel-inner">

      <div class="item active">
        <img src="img/ban1.png" alt=""  class="BanImgStyle" style="width:100%;">
      </div>
      <div class="item">

        <img src="img/ban2.png" alt="" class="BanImgStyle" style="width:100%;">
      </div>
    
      <div class="item">
      <img src="img/ban3.png" alt="" class="BanImgStyle" style="width:100%;">
      </div>
	  <div class="item">
        <img src="img/ban4.png" alt="" class="BanImgStyle" style="width:100%;">
      </div>
	  	<div class="item">
        <img src="img/ban5.png" alt="" class="BanImgStyle" style="width:100%;">
      </div>
	  <div class="item">
        <img src="img/ban6.png" alt="" class="BanImgStyle" style="width:100%;">
      </div>
  
    </div>

    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>

	 <div class="">
    
     
        <div class="container-fluid">
		<div class="col-sm-12 col-md-12 col-lg-12 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
             <div class="image-box1"><img src="img/e.jpg" name="Raj Bhavan" class="RajBhavan"></div><br>
              <h4 class="title present_governor"><a target="_blank" href="historyofrajbhavan.do">Raj Bhavan</a></h4>
              <p class="description">Raj Bhavan is the official residence of the Governor of Telangana located in the city of Hyderabad, India. It is located at Somajiguda adjacent to Hussain Sagar lake.</p>
            </div>
          </div>
<!-- 		  <div class="col-sm-6 col-md-6 col-lg-6 wow bounceInUp" data-wow-duration="1.4s">
            <div class="boxnews">
              <h4 class="title"><a href="">Speeches</a><hr></h4>
              <p class="description">
                                        <div class="Noticeboard_list">
										<div class="vticker">
                                            <ul class="indent4"> 
											
												<li class="liststyle"><a href="#"></a><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday.
												</a></li>	
														
												<li class="liststyle"><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday.
												</a></li>	
												<li class="liststyle"><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor inaugurated Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event "Akshara Bathukamma" was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society.
												</a></li>	

                                            </ul>
                                        </div>
                                        </div>
			  </p>
			  <h4 class="title"><a href="">Governor's Blog </a><hr></h4>
              <p class="description">
                                <div class="panel-gallery">
                                            <ul> 
											<br>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Events </li></a>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Press Releases</li></a>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Messages </li></a>
                                            </ul>
                                        </div>
			  </p>
			  <div style="text-align:right !important;"><a href="#">Read more >></a></div>
	     </div>
          </div> -->
        </div>
			        <!-- <div class="container-fluid">
		  		            <div class="col-sm-6 col-md-6 col-lg-6 wow bounceInUp" data-wow-duration="1.4s">
            <div class="boxnews">
              <h4 class="title"><a href="">Governor's Blog </a><hr></h4>
              <p class="description">
                                <div class="panel-gallery">
                                            <ul> 
											<br>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Events </li></a>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Press Releases</li></a>
												<a href="#"><li class="liststyle1"><i class="ion-android-checkmark-circle"></i>&nbsp; Messages </li></a>
                                            </ul>
                                        </div>
			  </p>
            </div>
          </div>
		            <div class="col-sm-6 col-md-6 col-lg-6 wow bounceInUp" data-wow-duration="1.4s">
            <div class="boxnews">
              <h4 class="title"><a href="">What's New</a><hr></h4>
              <p class="description">
                                        <div class="Noticeboard_list">
										<div class="vticker">
                                            <ul class="indent4"> 
											
												<li class="liststyle"><a href="#"></a><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday.
												</a></li>	
														
												<li class="liststyle"><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday.
												</a></li>	
												<li class="liststyle"><img src="img/new4.gif">
												<a class="" href="#"><b>&nbsp;&nbsp;</b>Hon'ble Governor inaugurated Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event "Akshara Bathukamma" was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society.
												</a></li>	

                                            </ul>
                                        </div>
                                        </div>
			  </p>
			  <div style="text-align:right !important;"><a href="#">Read more >></a></div>
            </div>
          </div>
        </div><br> -->
</div>
   </section>
<br><br>
</div>

	<div class="govblocksty">
		  <div class="col-md-4">
            <div class="govsty box">
              <div class="image-box present_governor_description"><img src="img/present_governor.png" name="present_governor" class="present_governor_img"></div>
              <h3 class="title present_governor_description"><a href="present_governor.do" class="animated zoomIn delay-250">Dr. (Smt.) Tamilisai Soundararajan</a></h3>
              <h4 class="present_governor_description1">Hon'ble Governor <br> Telangana </h4>
            </div>
			<br>
          </div>
		    <div class="gallery">
						<div class="col-md-4 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
							<div class="panel">
								<div class="panel-heading2 panel-headstyle3">
									<h4><span class="headcap">Twitter</span></h4>
								</div>
								<div class="panel-gallery" style="height: 255px !important; overflow-y: scroll;">
									<a class="twitter-timeline" href="https://twitter.com/DrTamilisaiGuv?ref_src=twsrc%5Etfw">Tweets by DrTamilisaiGuv</a>
									<script async src="apis/js/widgets.js" charset="utf-8"></script>

								</div>
							</div>
							<div class="panel">
                                <div class="panel-heading2 panel-headstyle3">
                                    <h4><span class="headcap">Facebook</span> </h4>
                                </div>
                                <div class="panel-gallery" style="height:295px !important; overflow-y:scroll;">
								<embed src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FDrTamilisaiGuv%2F&tabs=timeline&width=430&height=300px&small_header=true&adapt_container_width=true&hide_cover=true&show_facepile=true&appId" width="411px" height="300px" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"/>
								</div>
                            </div>
							<!-- <div class="panel">
								<div class="panel-heading2 panel-headstyle3">
									<h4><span class="headcap">Youtube</span></h4>
								</div>
								<div class="panel-gallery"
									style="height: 295px !important; overflow-y: scroll;">
									<embed width="411px" height="300px" src="https://www.youtube-nocookie.com/embed/K30-sU3TQO4"
										frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen />
								</div>
							</div> -->
						</div>
                    </div>
                </div>
	  
</div>
                <div class="row">
                    <section id="call-to-action" class="wow fadeInUp">
                        <div class="container-fluid">
<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-6 text-center">
                                <div class="radial-out wow bounceInUp box1a"><img src="img/gallery.png" alt="" class="Event-img img-fluid"><br>
                                <a class="cta-btn align-middle" href="eventgallery.do"> Event Gallery</a>
								</div>
                            </div>
							<div class="col-lg-3 col-md-3 col-sm-6 text-center">
                                <div class="radial-out wow bounceInUp box1a"><img src="img/quetos.png" alt="" class="Event-img img-fluid"><br>
                                <a class="cta-btn align-middle" href="#"> Quotes</a>
                            </div>
                            </div>
							<div class="col-lg-3 col-md-3 col-sm-6 text-center">
                                <div class="radial-out wow bounceInUp box1a"><img src="img/video.png" alt="" class="Event-img img-fluid"><br>
                                <a class="cta-btn align-middle" target="_blank" href="https://www.youtube.com/channel/UCeq8ho61cjo4QDo4KCUO6gg"> Youtube Videos</a>
                            </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                                <div class="radial-out wow bounceInUp box1a"><img src="img/speeches.png" alt="" class="Event-img img-fluid"><br>
                                <a class="cta-btn align-middle" href="speeches.do"> Governor's Speeches</a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </section>
                </div>
    <section id="clients" class="wow fadeInUp">
      <div class="container">
        <div class="owl-carousel clients-carousel">
          <img src="img/clients/client-1.png" alt="">
          <img src="img/clients/client-2.png" alt="">
          <img src="img/clients/client-3.png" alt="">
          <img src="img/clients/client-4.png" alt="">
        </div>

      </div>
    </section>

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

                <div class="row footer">	
                    <div class="">
                        <div class="col-md-12">
                        <p>2020 © Copyright by National Informatics Center</p>	
                           
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
            document.onkeydown=function(e){return 123!=event.keyCode&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="I".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="J".charCodeAt(0))&&((!e.ctrlKey||!e.shiftKey||e.keyCode!="U".charCodeAt(0))&&((!e.ctrlKey||e.keyCode!="U".charCodeAt(0))&&void 0))))};
            $("body").on("contextmenu",function(e){
            	alert('Sorry, this functionality is disabled!');
                return false;
            });
            $("#log_cross").click(function() {
            	$("#log_form").get(0).reset();
            });
            $("#log_cancel").click(function() {
            	$("#log_form").get(0).reset();
            });
        });
    </script>
    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.HORIZONTAL}, 'google_translate_element');
        }
    </script>
    <script>
        function myFunctionmap() {
            document.getElementById("navMap").submit();
        }
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <script type="text/javascript">
        function button_click()
        {
            if (document.getElementById('b1').value == "Start") {
                document.getElementById('b1').value = "Stop";
                document.getElementById('scroll_news4').start();
            } else {
                document.getElementById('b1').value = "Start";
                document.getElementById('scroll_news4').stop();
            }
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#linkIncrease').click(function () {
                modifyFontSize('increase');
            });

            $('#linkDecrease').click(function () {
                modifyFontSize('decrease');
            });

            $('#linkReset').click(function () {
                modifyFontSize('reset');
            })

            function modifyFontSize(flag) {
                var divElement = $('#divContent');
                var currentFontSize = parseInt(divElement.css('font-size'));

                if (flag == 'increase')
                    currentFontSize += 3;
                else if (flag == 'decrease')
                    currentFontSize -= 3;
                else
                    currentFontSize = 16;

                divElement.css('font-size', currentFontSize);
            }
        });
    </script>  
	  <script src="js/main.js"></script>
		  <script>
		  $(function(){
    $('#mySidenav').hover(function(){
        $('').animate({width:'250px'});
    },function(){
        $('#mySidenav').animate({width:'0px'});
    }).trigger('mouseleave');
});
		  </script>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
 <script>
$(function() {
   	$("#showMe").delay(2000).fadeOut(0);
});
 </script>
<script type="text/javascript">
$(function(){$(".ticker1").modernTicker({effect:"scroll",scrollType:"continuous",scrollStart:"inside",scrollInterval:20,transitionTime:500,autoplay:true});
$(".ticker2").modernTicker({effect:"fade",displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker3").modernTicker({effect:"type",typeInterval:10,displayTime:4e3,transitionTime:300,autoplay:true});$(".ticker4").modernTicker({effect:"slide",slideDistance:100,displayTime:4e3,transitionTime:350,autoplay:true})})
</script>
</body>
</html>
