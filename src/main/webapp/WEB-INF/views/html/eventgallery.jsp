<!DOCTYPE html>
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
    
  <!-- <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline'; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; font-src 'self';"> -->
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="description" content="3D Thumbnail Hover Effects" />
  <meta name="keywords" content="3d, 3dtransform, hover, effect, thumbnail, overlay, curved, folded" />

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
  <link href="galStyle/fs-gal.css" rel="stylesheet">
  
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

  <script src="js/main.js"></script>
  <script src="galStyle/fs-gal.js"></script>
  <script src="galStyle/wow.min.js"></script>
  
  <script data-require="angular.js@1.0.x" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js" data-semver="1.0.8"></script>
  <script type="text/javascript">
  var myApp = angular.module('plunker', ['infinite-scroll']);
  myApp.controller('DemoController', function($scope, $http) {
    $scope.images = ${images};
    $(document).ready(function() {
	    $scope.loadMore = function() {
// 	   	$("#wait_modal").modal('show');
	    $http({
           url: 'eventgalleryload.do',
           method: "GET"
        })
        .then(function(response) {
        	console.log(response.data);
        	if(response.data.length > 0){
        		$scope.images.push(response.data[0]);
        	}
        	/* for(var i = 0; i <= response.data.length; i++) {
        		$scope.images.push(response.data[i]);
       	    } */
        });
// 	    $("#wait_modal").modal('hide');
	    };
    });
  });
  </script>
  <script src="js/ng-infinite-scroll.js"></script>
  
<style>
h4{
padding: 20px 0px 20px 0px;
}
</style>
</head>

<body ng-app="plunker" ng-controller="DemoController">
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
                    <div class="header"><img  class="img-responsive" src="img/headernew.png"> </div>
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

                                                       <!-- *********************Nav Bar*************************** -->
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
<!--                                                 <li><a href="#">Events</a></li> -->
                                        		<li><a href="http://164.100.77.222/Alumni/">ALUMNI</a></li>
                                        </ul></li>	
    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>  
  </header>



        <div class="">
        <div class="row bgc">
                    <div class="gallery">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-gallery">
<div class="container-fluid">


<div class="col-md-offset-1 col-md-10">
      					<h3 class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;">
						<b>Event Gallery</b></a></h3>

                          <hr>
                 <div class="photo">    
		
		<!-- <h4>Beginning of second year in service of people of Telangana event at Rajbhavan on 09-09-2020</h4>
        <img class="fs-gal sm" src="img/thumb/gov_1.jpg" alt="second year in service of people" data-url="img/gov_1.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_2.jpg" alt="second year in service of people" data-url="img/gov_2.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_3.jpg" alt="second year in service of people" data-url="img/gov_3.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_4.jpg" alt="second year in service of people" data-url="img/gov_4.jpg">
      		 

		<h4>Release of Brochure Chancellor Connects Alumni.</h4>
        <img class="fs-gal sm" src="img/thumb/gov_12.jpg" alt="second year in service of people" data-url="img/gov_12.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_13.jpg" alt="second year in service of people" data-url="img/gov_13.jpg">
       				 
				 
		<h4>Launch of Raj Bhavan revamped website & Appointmnet Mangement System by the Hon'ble Governor</h4>
        <img class="fs-gal sm" src="img/thumb/gov_10.jpg" alt="second year in service of people" data-url="img/gov_10.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_11.jpg" alt="second year in service of people" data-url="img/gov_11.jpg">
       
				 
		<h4>Launch of E-Book ( Moving forward with memories of maiden Year,Actions
            accomplished as  governor in the service of people of Telangana...) by
            the Hon'ble Governor</h4>
        <img class="fs-gal sm" src="img/thumb/gov_7.jpg" alt="second year in service of people" data-url="img/gov_7.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_8.jpg" alt="second year in service of people" data-url="img/gov_8.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_9.jpg" alt="second year in service of people" data-url="img/gov_9.jpg">
       
	   
	   
		<h4>Hon'ble Governor held Video Conference with Media</h4>
        <img class="fs-gal sm" src="img/thumb/gov_5.jpg" alt="second year in service of people" data-url="img/gov_5.jpg">
        <img class="fs-gal sm" src="img/thumb/gov_6.jpg" alt="second year in service of people" data-url="img/gov_6.jpg">
		
        <h4>Sri Srinivas Rao, Commissioner, Income Tax Dept. has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday.</h4>
        <img class="fs-gal sm" src="img/thumb/CommissionerIT1.jpg" alt="Sri Srinivas Rao, Commissioner, Income Tax Dept. has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday." data-url="img/CommissionerIT1.jpg">
        <img class="fs-gal sm" src="img/thumb/CommissionerIT2.jpg" alt="Sri Srinivas Rao, Commissioner, Income Tax Dept. has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday." data-url="img/CommissionerIT2.jpg">

        <div class="clearfix"></div>

        <h4>Smt. &amp; Shri Anindy Dasgupta, Accountant General (A &amp; E), Telangana has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday.</h4>
        <img class="fs-gal sm" src="img/thumb/AccountantGeneralTS1.jpg" alt="Smt. &amp; Shri Anindy Dasgupta, Accountant General (A &amp; E), Telangana has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday." data-url="img/AccountantGeneralTS1.jpg">
        <img class="fs-gal sm" src="img/thumb/AccountantGeneralTS2.jpg" alt="Smt. &amp; Shri Anindy Dasgupta, Accountant General (A &amp; E), Telangana has called on the Hon'ble Governor at Raj Bhavan on 28th Jan 2020, Tuesday." data-url="img/AccountantGeneralTS2.jpg">

        <div class="clearfix"></div>

        <h4>Pradhan Mantry Rashtriya Bal Puraskar 2020 awardee Kumari Esha Singh has called on the Hon’ble Governor at Rajbhavan on 27th Jan 2020, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/EshaSingh1.jpg" alt="Pradhan Mantry Rashtriya Bal Puraskar 2020 awardee Kumari Esha Singh has called on the Hon’ble Governor at Rajbhavan on 27th Jan 2020, Monday." data-url="img/EshaSingh1.jpg">
        <img class="fs-gal sm" src="img/thumb/EshaSingh2.jpg" alt="Pradhan Mantry Rashtriya Bal Puraskar 2020 awardee Kumari Esha Singh has called on the Hon’ble Governor at Rajbhavan on 27th Jan 2020, Monday." data-url="img/EshaSingh2.jpg">

        <div class="clearfix"></div>

        <h4>Smt. Dansari Anasuya (Seethakka), MLA, Mulugu extended invitation to Hon’ble Governor Dr. Tamilisai Soundararajan for the Medaram Sammakka Saralamma Jatara at Raj Bhavan on 27th Jan 2020, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/SammakkaSarakka1.jpg" alt="Smt. Dansari Anasuya (Seethakka), MLA, Mulugu extended invitation to Hon’ble Governor Dr. Tamilisai Soundararajan for the Medaram Sammakka Saralamma Jatara at Raj Bhavan on 27th Jan 2020, Monday." data-url="img/SammakkaSarakka1.jpg">
        <img class="fs-gal sm" src="img/thumb/SammakkaSarakka2.jpg" alt="Smt. Dansari Anasuya (Seethakka), MLA, Mulugu extended invitation to Hon’ble Governor Dr. Tamilisai Soundararajan for the Medaram Sammakka Saralamma Jatara at Raj Bhavan on 27th Jan 2020, Monday." data-url="img/SammakkaSarakka2.jpg">
        <img class="fs-gal sm" src="img/thumb/SammakkaSarakka3.jpg" alt="Smt. Dansari Anasuya (Seethakka), MLA, Mulugu extended invitation to Hon’ble Governor Dr. Tamilisai Soundararajan for the Medaram Sammakka Saralamma Jatara at Raj Bhavan on 27th Jan 2020, Monday." data-url="img/SammakkaSarakka3.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor of Telangana hosted "At Home" on the occasion of the 71st Republic Day celebrations at Raj Bhavan on 26-01-2020, Sunday.</h4>
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-1.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-1.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-2.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-2.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-3.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-3.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-4.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-4.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-5.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-5.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-6.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-6.jpg">
        <img class="fs-gal sm" src="img/thumb/RepublicDay2020-7.jpg" alt="Hon'ble Governor of Telangana hosted " at="" home"="" on="" the="" occasion="" of="" 71st="" republic="" day="" celebrations="" raj="" bhavan="" 26-01-2020,="" sunday."="" data-url="img/RepublicDay2020-7.jpg">

        <div class="clearfix"></div>

        <h4>Sri Saraswathi Swamiji, Sarada Peetham, Visakhapatnam and others have called on the Hon’ble Governor at Raj Bhavan on 23rd Jan 2020, Thursday.</h4>
        <img class="fs-gal sm" src="img/thumb/SaradaPeetam1.jpg" alt="Sri Saraswathi Swamiji, Sarada Peetham, Visakhapatnam and others have called on the Hon’ble Governor at Raj Bhavan on 23rd Jan 2020, Thursday." data-url="img/SaradaPeetam1.jpg">
        <img class="fs-gal sm" src="img/thumb/SaradaPeetam2.jpg" alt="Sri Saraswathi Swamiji, Sarada Peetham, Visakhapatnam and others have called on the Hon’ble Governor at Raj Bhavan on 23rd Jan 2020, Thursday." data-url="img/SaradaPeetam2.jpg">
        <img class="fs-gal sm" src="img/thumb/SaradaPeetam3.jpg" alt="Sri Saraswathi Swamiji, Sarada Peetham, Visakhapatnam and others have called on the Hon’ble Governor at Raj Bhavan on 23rd Jan 2020, Thursday." data-url="img/SaradaPeetam3.jpg">

        <div class="clearfix"></div>

        <h4>The Governor visits Sri Satya Saibaba Temple, Barkatpura, Hyderabad on 23rd Jan 2020, Thursday.</h4>
        <img class="fs-gal sm" src="img/thumb/SatyaSaibaba1.jpg" alt="The Governor visits Sri Satya Saibaba Temple, Barkatpura, Hyderabad on 23rd Jan 2020, Thursday." data-url="img/SatyaSaibaba1.jpg">
        <img class="fs-gal sm" src="img/thumb/SatyaSaibaba2.jpg" alt="The Governor visits Sri Satya Saibaba Temple, Barkatpura, Hyderabad on 23rd Jan 2020, Thursday." data-url="img/SatyaSaibaba2.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest and inaugurated the Telangana State Nephrology Conference -TSNCON 2020 at Hyatt Palace, Hyderabad on 18th Jan 2020, Saturday.</h4>
        <img class="fs-gal sm" src="img/thumb/TSNCON1.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest and inaugurated the Telangana State Nephrology Conference -TSNCON 2020 at Hyatt Palace, Hyderabad on 18th Jan 2020, Saturday." data-url="img/TSNCON1.jpg">
        <img class="fs-gal sm" src="img/thumb/TSNCON2.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest and inaugurated the Telangana State Nephrology Conference -TSNCON 2020 at Hyatt Palace, Hyderabad on 18th Jan 2020, Saturday." data-url="img/TSNCON2.jpg">
        <img class="fs-gal sm" src="img/thumb/TSNCON3.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest and inaugurated the Telangana State Nephrology Conference -TSNCON 2020 at Hyatt Palace, Hyderabad on 18th Jan 2020, Saturday." data-url="img/TSNCON3.jpg">
        <img class="fs-gal sm" src="img/thumb/TSNCON4.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest and inaugurated the Telangana State Nephrology Conference -TSNCON 2020 at Hyatt Palace, Hyderabad on 18th Jan 2020, Saturday." data-url="img/TSNCON4.jpg">

        <div class="clearfix"></div>


        <h4>Hon’ble Governor Dr. Tamilisai Soundararajan has launched the Indian Red Cross Society’s (IRCS) Mobile App training programme at Raj Bhavan on 9th Jan 2020. Computer Operators of District Red Cross Branches and Universities and others attended.</h4>
        <img class="fs-gal sm" src="img/thumb/IRCSAPP1.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan has launched the Indian Red Cross Society’s (IRCS) Mobile App training programme at Raj Bhavan on 9th Jan 2020. Computer Operators of District Red Cross Branches and Universities and others attended." data-url="img/IRCSAPP1.jpg">
        <img class="fs-gal sm" src="img/thumb/IRCSAPP2.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan has launched the Indian Red Cross Society’s (IRCS) Mobile App training programme at Raj Bhavan on 9th Jan 2020. Computer Operators of District Red Cross Branches and Universities and others attended." data-url="img/IRCSAPP2.jpg">
        <img class="fs-gal sm" src="img/thumb/IRCSAPP3.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan has launched the Indian Red Cross Society’s (IRCS) Mobile App training programme at Raj Bhavan on 9th Jan 2020. Computer Operators of District Red Cross Branches and Universities and others attended." data-url="img/IRCSAPP3.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/EFLU1.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday." data-url="img/EFLU1.jpg">
        <img class="fs-gal sm" src="img/thumb/EFLU2.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday." data-url="img/EFLU2.jpg">
        <img class="fs-gal sm" src="img/thumb/EFLU3.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday." data-url="img/EFLU3.jpg">
        <img class="fs-gal sm" src="img/thumb/EFLU4.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday." data-url="img/EFLU4.jpg">
        <img class="fs-gal sm" src="img/thumb/EFLU5.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan Visited English &amp; Foreign Languages centre near Osmania University, Tarnaka on 9th Jan 2020, Wednesday." data-url="img/EFLU5.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/JNAFAU1.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday." data-url="img/JNAFAU1.jpg">
        <img class="fs-gal sm" src="img/thumb/JNAFAU2.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday." data-url="img/JNAFAU2.jpg">
        <img class="fs-gal sm" src="img/thumb/JNAFAU3.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday." data-url="img/JNAFAU3.jpg">
        <img class="fs-gal sm" src="img/thumb/JNAFAU4.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday." data-url="img/JNAFAU4.jpg">
        <img class="fs-gal sm" src="img/thumb/JNAFAU5.jpg" alt="Hon’ble Governor Dr. Tamilisai Soundararajan attended Jawaharlal Nehru Architecture and Fine Arts University’s convocation at Shilpakala Vedika on 8th Jan 2020, Wednesday." data-url="img/JNAFAU5.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor attended St. Ann’s College’s Graduation Ceremony at St. Joseph’s Auditorium, Mehdipatnam on 8th Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/StAnnsCollege1.jpg" alt="Hon’ble Governor attended St. Ann’s College’s Graduation Ceremony at St. Joseph’s Auditorium, Mehdipatnam on 8th Jan 2020, Wednesday." data-url="img/StAnnsCollege1.jpg">
        <img class="fs-gal sm" src="img/thumb/StAnnsCollege2.jpg" alt="Hon’ble Governor attended St. Ann’s College’s Graduation Ceremony at St. Joseph’s Auditorium, Mehdipatnam on 8th Jan 2020, Wednesday." data-url="img/StAnnsCollege2.jpg">
        <img class="fs-gal sm" src="img/thumb/StAnnsCollege3.jpg" alt="Hon’ble Governor attended St. Ann’s College’s Graduation Ceremony at St. Joseph’s Auditorium, Mehdipatnam on 8th Jan 2020, Wednesday." data-url="img/StAnnsCollege3.jpg">
        <img class="fs-gal sm" src="img/thumb/StAnnsCollege4.jpg" alt="Hon’ble Governor attended St. Ann’s College’s Graduation Ceremony at St. Joseph’s Auditorium, Mehdipatnam on 8th Jan 2020, Wednesday." data-url="img/StAnnsCollege4.jpg">

        <div class="clearfix"></div>

        <h4>H.E. Ms. Naheed Esar, Deputy Foreign Minister for Management and Resources, Afghanistan has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/Afganisthan1.jpg" alt="H.E. Ms. Naheed Esar, Deputy Foreign Minister for Management and Resources, Afghanistan has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday." data-url="img/Afganisthan1.jpg">
        <img class="fs-gal sm" src="img/thumb/Afganisthan2.jpg" alt="H.E. Ms. Naheed Esar, Deputy Foreign Minister for Management and Resources, Afghanistan has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday." data-url="img/Afganisthan2.jpg">

        <div class="clearfix"></div>

        <h4>Dr. Rajat Kumar, IAS., C.E.O., Telangana has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/RajatKumarIAS1.jpg" alt="Dr. Rajat Kumar, IAS., C.E.O., Telangana has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday." data-url="img/RajatKumarIAS1.jpg">
        <img class="fs-gal sm" src="img/thumb/RajatKumarIAS2.jpg" alt="Dr. Rajat Kumar, IAS., C.E.O., Telangana has called on the Hon’ble Governor at Raj Bhavan on 8th Jan 2020, Wednesday." data-url="img/RajatKumarIAS2.jpg">

        <div class="clearfix"></div>

        <h4>Sri T. Sriranga Rao, Chairaman, Telangana State Electricity Regulatory Commission has called on the Governor at Raj Bhavan. </h4>
        <img class="fs-gal sm" src="img/thumb/TSERC1.jpg" alt="Sri T. Sriranga Rao, Chairaman, Telangana State Electricity Regulatory Commission has called on the Governor at Raj Bhavan. " data-url="img/TSERC1.jpg">
        <img class="fs-gal sm" src="img/thumb/TSERC2.jpg" alt="Sri T. Sriranga Rao, Chairaman, Telangana State Electricity Regulatory Commission has called on the Governor at Raj Bhavan. " data-url="img/TSERC2.jpg">
        <img class="fs-gal sm" src="img/thumb/TSERC3.jpg" alt="Sri T. Sriranga Rao, Chairaman, Telangana State Electricity Regulatory Commission has called on the Governor at Raj Bhavan. " data-url="img/TSERC3.jpg">

        <div class="clearfix"></div>

        <h4>Sri S. Prahalad Modi and others have called on the Hon'ble Governor at Raj Bhavan and invited Hon'ble Governor to participate as a chief guest in a socio - economic development programme to be held at Hyderabad shortly.</h4>
        <img class="fs-gal sm" src="img/thumb/PrahladModi1.jpg" alt="S Sri Prahalad Modi and others have called on the Hon'ble Governor at Raj Bhavan and invited Hon'ble Governor to participate as a chief guest in a socio - economic development programme to be held at Hyderabad shortly." data-url="img/PrahladModi1.jpg">
        <img class="fs-gal sm" src="img/thumb/PrahladModi2.jpg" alt="S Sri Prahalad Modi and others have called on the Hon'ble Governor at Raj Bhavan and invited Hon'ble Governor to participate as a chief guest in a socio - economic development programme to be held at Hyderabad shortly." data-url="img/PrahladModi2.jpg">
        <img class="fs-gal sm" src="img/thumb/PrahladModi3.jpg" alt="S Sri Prahalad Modi and others have called on the Hon'ble Governor at Raj Bhavan and invited Hon'ble Governor to participate as a chief guest in a socio - economic development programme to be held at Hyderabad shortly." data-url="img/PrahladModi3.jpg">

        <div class="clearfix"></div>

        <h4>Sri Ghanta Chakrapani, Chairman, Telangana Public Service Commission has called on the Hon'ble Governor at Raj Bhavan on Jan 3rd 2020, Friday.</h4>
        <img class="fs-gal sm" src="img/thumb/TSPSCChairman1.jpg" alt="Sri Ghanta Chakrapani, Chairman, Telangana Public Service Commission has called on the Hon'ble Governor at Raj Bhavan on Jan 3rd 2020, Friday." data-url="img/TSPSCChairman1.jpg">
        <img class="fs-gal sm" src="img/thumb/TSPSCChairman2.jpg" alt="Sri Ghanta Chakrapani, Chairman, Telangana Public Service Commission has called on the Hon'ble Governor at Raj Bhavan on Jan 3rd 2020, Friday." data-url="img/TSPSCChairman2.jpg">

        <div class="clearfix"></div>

        <h4>Meeting with Senior Nephrologists and Urologists of leading Govt. and Private Hospitals held at Raj Bhavan on 02.01.2020. Telangana ‘Red Cross Mobile App’ recently launched by Hon’ble President of India was introduced by Sri K. Surendra Mohan, IAS, Secretary to Governor to the participants.</h4>
        <img class="fs-gal sm" src="img/thumb/Nephrology1.jpg" alt="Meeting with Senior Nephrologists and Urologists of leading Govt. and Private Hospitals held at Raj Bhavan on 02.01.2020. Telangana ‘Red Cross Mobile App’ recently launched by Hon’ble President of India was introduced by Sri K. Surendra Mohan, IAS, Secretary to Governor to the participants." data-url="img/Nephrology1.jpg">
        <img class="fs-gal sm" src="img/thumb/Nephrology2.jpg" alt="Meeting with Senior Nephrologists and Urologists of leading Govt. and Private Hospitals held at Raj Bhavan on 02.01.2020. Telangana ‘Red Cross Mobile App’ recently launched by Hon’ble President of India was introduced by Sri K. Surendra Mohan, IAS, Secretary to Governor to the participants." data-url="img/Nephrology2.jpg">
        <img class="fs-gal sm" src="img/thumb/Nephrology3.jpg" alt="Meeting with Senior Nephrologists and Urologists of leading Govt. and Private Hospitals held at Raj Bhavan on 02.01.2020. Telangana ‘Red Cross Mobile App’ recently launched by Hon’ble President of India was introduced by Sri K. Surendra Mohan, IAS, Secretary to Governor to the participants." data-url="img/Nephrology3.jpg">
        <img class="fs-gal sm" src="img/thumb/Nephrology4.jpg" alt="Meeting with Senior Nephrologists and Urologists of leading Govt. and Private Hospitals held at Raj Bhavan on 02.01.2020. Telangana ‘Red Cross Mobile App’ recently launched by Hon’ble President of India was introduced by Sri K. Surendra Mohan, IAS, Secretary to Governor to the participants." data-url="img/Nephrology4.jpg">

        <div class="clearfix"></div>

        <h4>Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/CMKCRJAN11.jpg" alt="Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/CMKCRJAN11.jpg">
        <img class="fs-gal sm" src="img/thumb/CMKCRJAN12.jpg" alt="Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/CMKCRJAN12.jpg">
        <img class="fs-gal sm" src="img/thumb/CMKCRJAN13.jpg" alt="Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/CMKCRJAN13.jpg">
        <img class="fs-gal sm" src="img/thumb/CMKCRJAN14.jpg" alt="Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/CMKCRJAN14.jpg">
        <img class="fs-gal sm" src="img/thumb/CMKCRJAN15.jpg" alt="Sri K. Chandrasekhar Rao, Hon’ble Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/CMKCRJAN15.jpg">

        <div class="clearfix"></div>

        <h4>Open House on the occasion of New Year Day, Jan 1st, 2020.</h4>
        <img class="fs-gal sm" src="img/thumb/OpenHouse1.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse1.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse2.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse2.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse3.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse3.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse4.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse4.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse5.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse5.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse6.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse6.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse7.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse7.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse8.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse8.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse9.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse9.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse10.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse10.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse11.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse11.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse12.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse12.jpg">
        <img class="fs-gal sm" src="img/thumb/OpenHouse13.jpg" alt="Open House on the occasion of New Year Day, Jan 1st, 2020." data-url="img/OpenHouse13.jpg">

        <div class="clearfix"></div>

        <h4>Sri Somesh Kumar, IAS, Chief Secretary of Telangana Government, has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/ChiefSecretary.jpg" alt="Sri Somesh Kumar, IAS, Chief Secretary of Telangana Government, has called on the Hon’ble Governor at Raj Bhavan on New Year Day 1st Jan 2020, Wednesday." data-url="img/ChiefSecretary.jpg">

        <div class="clearfix"></div>

        <h4>Veda Pandits of Balaji Bhavan, TTD, Himayat Nagar, Hyderabad and Yadadri Temple offered blessings with Ashirvachanam to Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan and Dr. Soundararajan at Raj Bhavan on the occasion of New Year on 01-01-2020, Wednesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion.</h4>
        <img class="fs-gal sm" src="img/thumb/Ashirvachanam1.jpg" alt="Veda Pandits of Balaji Bhavan, TTD, Himayat Nagar, Hyderabad and Yadadri Temple offered blessings with Ashirvachanam to Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan and Dr. Soundararajan at Raj Bhavan on the occasion of New Year on 01-01-2020, Wednesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/Ashirvachanam1.jpg">
        <img class="fs-gal sm" src="img/thumb/Ashirvachanam2.jpg" alt="Veda Pandits of Balaji Bhavan, TTD, Himayat Nagar, Hyderabad and Yadadri Temple offered blessings with Ashirvachanam to Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan and Dr. Soundararajan at Raj Bhavan on the occasion of New Year on 01-01-2020, Wednesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/Ashirvachanam2.jpg">
        <img class="fs-gal sm" src="img/thumb/Ashirvachanam3.jpg" alt="Veda Pandits of Balaji Bhavan, TTD, Himayat Nagar, Hyderabad and Yadadri Temple offered blessings with Ashirvachanam to Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan and Dr. Soundararajan at Raj Bhavan on the occasion of New Year on 01-01-2020, Wednesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/Ashirvachanam3.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by N. Uttam Kumar Reddy, TPCC President and others have called on the Hon’ble Governor at Raj Bhavan and submitted a memorandum on Dec 31st 2019, Tuesday.</h4>
        <img class="fs-gal sm" src="img/thumb/UttamKumarReddy.jpg" alt="A delegation led by N. Uttam Kumar Reddy, TPCC President and others have called on the Hon’ble Governor at Raj Bhavan and submitted a memorandum on Dec 31st 2019, Tuesday." data-url="img/UttamKumarReddy.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble President of India has hosted ‘AT HOME’ at Rashtrapati Nilayam, Secunderabad on Dec 27th 2019, Friday.</h4>
        <img class="fs-gal sm" src="img/thumb/RPNilayam1.jpg" alt="Hon’ble President of India has hosted ‘AT HOME’ at Rashtrapati Nilayam, Secunderabad on Dec 27th 2019, Friday." data-url="img/RPNilayam1.jpg">
        <img class="fs-gal sm" src="img/thumb/RPNilayam2.jpg" alt="Hon’ble President of India has hosted ‘AT HOME’ at Rashtrapati Nilayam, Secunderabad on Dec 27th 2019, Friday." data-url="img/RPNilayam2.jpg">

        <div class="clearfix"></div>


        <h4>Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 23rd 2019, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/Lokayukta1.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta1.jpg">
        <img class="fs-gal sm" src="img/thumb/Lokayukta2.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta2.jpg">
        <img class="fs-gal sm" src="img/thumb/Lokayukta3.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta3.jpg">
        <img class="fs-gal sm" src="img/thumb/Lokayukta4.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta4.jpg">
        <img class="fs-gal sm" src="img/thumb/Lokayukta5.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta5.jpg">
        <img class="fs-gal sm" src="img/thumb/Lokayukta6.jpg" alt="Justice Chintapalli Venkata Ramulu was sworn in Lokayukta of Telangana and V. Niranjan Rao as Upa-Lokayukta by Governor of Telangana Dr. Tamilisai Soundararajan on Dec 22nd 2019, Monday." data-url="img/Lokayukta6.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended.</h4>
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet1.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet1.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet2.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet2.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet3.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet3.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet4.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet4.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet5.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet5.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet6.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet6.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet7.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet7.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentBanquet8.jpg" alt="Hon'ble Governor has hosted a banquet in honour of the President of India at Raj Bhavan on 22nd Dec. 2019, Sunday. Hon'ble Governor of Himachal Pradesh, Shri Bandaru Dattatreya, Hon'ble Chief Minister of Telangana, Hon'ble Chief Justice of Telangana High Court and Cabinet Ministers attended." data-url="img/PresidentBanquet8.jpg">


        <div class="clearfix"></div>

        <h4>Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday.</h4>
        <img class="fs-gal sm" src="img/thumb/PresidentVisit1.jpg" alt="Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday." data-url="img/PresidentVisit1.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentVisit2.jpg" alt="Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday." data-url="img/PresidentVisit2.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentVisit3.jpg" alt="Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday." data-url="img/PresidentVisit3.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentVisit4.jpg" alt="Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday." data-url="img/PresidentVisit4.jpg">
        <img class="fs-gal sm" src="img/thumb/PresidentVisit5.jpg" alt="Governor received Hon'ble President of India at Hakimpet Airport  on 20th Dec 2019, Friday." data-url="img/PresidentVisit5.jpg">


        <div class="clearfix"></div>

        <h4>Christmas eve is celebrated with religious fervor and gaiety in Raj Bhavan on Dec 18th 2019, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/Christmas20191.jpg" alt="Christmas eve is celebrated with religious fervor and gaiety in Raj Bhavan on Dec 18th 2019, Wednesday." data-url="img/Christmas20191.jpg">
        <img class="fs-gal sm" src="img/thumb/Christmas20192.jpg" alt="Christmas eve is celebrated with religious fervor and gaiety in Raj Bhavan on Dec 18th 2019, Wednesday." data-url="img/Christmas20192.jpg">
        <img class="fs-gal sm" src="img/thumb/Christmas20193.jpg" alt="Christmas eve is celebrated with religious fervor and gaiety in Raj Bhavan on Dec 18th 2019, Wednesday." data-url="img/Christmas20193.jpg">
        <img class="fs-gal sm" src="img/thumb/Christmas20194.jpg" alt="Christmas eve is celebrated with religious fervor and gaiety in Raj Bhavan on Dec 18th 2019, Wednesday." data-url="img/Christmas20194.jpg">

        <div class="clearfix"></div>


        <h4>Mrs. D. Purandeswari, Former Union Minister &amp; Incharge of National Mahila Morcha India has called on the Hon’ble Governor at Raj Bhavan on Dec 17th 2019, Tuesday.</h4>
        <img class="fs-gal sm" src="img/thumb/Purandeswari1.jpg" alt="Mrs. D. Purandeswari, Former Union Minister &amp; Incharge of National Mahila Morcha India has called on the Hon’ble Governor at Raj Bhavan on Dec 17th 2019, Tuesday." data-url="img/Purandeswari1.jpg">
        <img class="fs-gal sm" src="img/thumb/Purandeswari2.jpg" alt="Mrs. D. Purandeswari, Former Union Minister &amp; Incharge of National Mahila Morcha India has called on the Hon’ble Governor at Raj Bhavan on Dec 17th 2019, Tuesday." data-url="img/Purandeswari2.jpg">

        <div class="clearfix"></div>


        <h4>Sri Ramaswamy Parameswaran, Devnar School for Blind and others have called on the Hon’ble Governor at Raj Bhavan on Dec 16th 2019, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/DevnarSchool1.jpg" alt="Sri Ramaswamy Parameswaran, Devnar School for Blind and others have called on the Hon’ble Governor at Raj Bhavan on Dec 16th 2019, Monday." data-url="img/DevnarSchool1.jpg">
        <img class="fs-gal sm" src="img/thumb/DevnarSchool2.jpg" alt="Sri Ramaswamy Parameswaran, Devnar School for Blind and others have called on the Hon’ble Governor at Raj Bhavan on Dec 16th 2019, Monday." data-url="img/DevnarSchool2.jpg">

        <div class="clearfix"></div>


        <h4>Dr. C. Suresh Kumar, President, Telangana Doctors and Private Hospital Welfare Association and others have called on the Hon’ble Governor at Rajbhavan on Dec 16th 2019, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/TSDoctors1.jpg" alt="Dr. C. Suresh Kumar, President, Telangana Doctors and Private Hospital Welfare Association and others have called on the Hon’ble Governor at Rajbhavan on Dec 16th 2019, Monday." data-url="img/TSDoctors1.jpg">
        <img class="fs-gal sm" src="img/thumb/TSDoctors2.jpg" alt="Dr. C. Suresh Kumar, President, Telangana Doctors and Private Hospital Welfare Association and others have called on the Hon’ble Governor at Rajbhavan on Dec 16th 2019, Monday." data-url="img/TSDoctors2.jpg">

        <div class="clearfix"></div>


        <h4>Dr. J. Srinivas Goud, State President, B.C. Welfare Association and others have called on the Hon’ble Governor at Raj Bhavan and submitted memorandum on Dec 16th 2019, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/B.C.welfare.jpg" alt="Dr. J. Srinivas Goud, State President, B.C. Welfare Association and others have called on the Hon’ble Governor at Raj Bhavan and submitted memorandum on Dec 16th 2019, Monday." data-url="img/B.C.welfare.jpg">

        <div class="clearfix"></div>


        <h4>H.E. Mr. Yerlan Alimbayev, Ambassador, Kazakhstan has called on the Hon’ble Governor at Raj Bhavan on Dec 12th 2019, Thursday.</h4>
        <img class="fs-gal sm" src="img/thumb/Kazakhstan1.jpg" alt="H.E. Mr. Yerlan Alimbayev, Ambassador, Kazakhstan has called on the Hon’ble Governor at Raj Bhavan on Dec 12th 2019, Thursday." data-url="img/Kazakhstan1.jpg">
        <img class="fs-gal sm" src="img/thumb/Kazakhstan2.jpg" alt="H.E. Mr. Yerlan Alimbayev, Ambassador, Kazakhstan has called on the Hon’ble Governor at Raj Bhavan on Dec 12th 2019, Thursday." data-url="img/Kazakhstan2.jpg">

        <div class="clearfix"></div>


        <h4>Hon’ble Governor visited Sri Lakshmi Narasimha Swamy temple, Yadagirigutta on Dec 9th 2019, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/Yadagirigutta1.jpg" alt="Hon’ble Governor visited Sri Lakshmi Narasimha Swamy temple, Yadagirigutta on Dec 9th 2019, Monday." data-url="img/Yadagirigutta1.jpg">
        <img class="fs-gal sm" src="img/thumb/Yadagirigutta2.jpg" alt="Hon’ble Governor visited Sri Lakshmi Narasimha Swamy temple, Yadagirigutta on Dec 9th 2019, Monday." data-url="img/Yadagirigutta2.jpg">
        <img class="fs-gal sm" src="img/thumb/Yadagirigutta3.jpg" alt="Hon’ble Governor visited Sri Lakshmi Narasimha Swamy temple, Yadagirigutta on Dec 9th 2019, Monday." data-url="img/Yadagirigutta3.jpg">

        <div class="clearfix"></div>


        <h4>Mr. Andrew Fleming, Deputy High Commissioner, British Deputy High Commission Hyderabad has called on the Hon'ble Governor at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday.</h4>
        <img class="fs-gal sm" src="img/thumb/BritishDeputy1.jpg" alt="Mr. Andrew Fleming, Deputy High Commissioner, British Deputy High Commission Hyderabad has called on the Hon'ble Governor at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday." data-url="img/BritishDeputy1.jpg">
        <img class="fs-gal sm" src="img/thumb/BritishDeputy2.jpg" alt="Mr. Andrew Fleming, Deputy High Commissioner, British Deputy High Commission Hyderabad has called on the Hon'ble Governor at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday." data-url="img/BritishDeputy2.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor of Telangana Dr. Tamilisai Soundararajan made her contribution to the Armed Forces Flag Day Fund at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday.</h4>
        <img class="fs-gal sm" src="img/thumb/af-flagday1.jpg" alt="Hon’ble Governor of Telangana Dr. Tamilisai Soundararajan made her contribution to the Armed Forces Flag Day Fund at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday." data-url="img/af-flagday1.jpg"> 
        <img class="fs-gal sm" src="img/thumb/af-flagday2.jpg" alt="Hon’ble Governor of Telangana Dr. Tamilisai Soundararajan made her contribution to the Armed Forces Flag Day Fund at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday." data-url="img/af-flagday2.jpg"> 
        <img class="fs-gal sm" src="img/thumb/af-flagday3.jpg" alt="Hon’ble Governor of Telangana Dr. Tamilisai Soundararajan made her contribution to the Armed Forces Flag Day Fund at Raj Bhavan, Hyderabad on Dec 7th 2019, Saturday." data-url="img/af-flagday3.jpg"> 

        <div class="clearfix"></div>

        <h4>A delegation led by Mallu Bhatti Vikramarka, leader of opposition in Telangana Legislative Assembly, INC and others have called on the Hon’ble Governor at Rajbhavan and submitted memorandum on Dec 7th 2019, Saturday.</h4>
        <img class="fs-gal sm" src="img/thumb/MBVikramarka.jpg" alt="A delegation led by Mallu Bhatti Vikramarka, leader of opposition in Telangana Legislative Assembly, INC and others have called on the Hon’ble Governor at Rajbhavan and submitted memorandum on Dec 7th 2019, Saturday." data-url="img/MBVikramarka.jpg"> 

        <div class="clearfix"></div>

        <h4>Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on Dec 6th 2019, Friday.</h4>
        <img class="fs-gal sm" src="img/thumb/VPIVisit1.jpg" alt="Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on Dec 6th 2019, Friday." data-url="img/VPIVisit1.jpg"> 
        <img class="fs-gal sm" src="img/thumb/VPIVisit2.jpg" alt="Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on Dec 6th 2019, Friday." data-url="img/VPIVisit2.jpg"> 

        <div class="clearfix"></div>

        <h4>Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday.</h4>
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp1.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp1.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp2.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp2.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp3.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp3.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp4.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp4.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp5.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp5.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp6.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp6.jpg">
        <img class="fs-gal sm" src="img/thumb/BloodDonationCamp7.jpg" alt="Hon’ble Governor of Telangana, Dr. Tamilisai Soundararajan participated as Chief Guest to Inaugurate the All India Blood Donation Camp at Bank House, Banjara Hills, Hyderabad on 6th Dec 2019, Friday." data-url="img/BloodDonationCamp7.jpg">

        <div class="clearfix"></div>

        <h4>Padma Shri Ms. Mithali Raj Indian Womens Cricket player called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/MithaliRaj1.jpg" alt="Padma Shri Ms. Mithali Raj Indian Womens Cricket player called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday." data-url="img/MithaliRaj1.jpg">
        <img class="fs-gal sm" src="img/thumb/MithaliRaj2.jpg" alt="Padma Shri Ms. Mithali Raj Indian Womens Cricket player called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday." data-url="img/MithaliRaj2.jpg">

        <div class="clearfix"></div>

        <h4>Lt. Gen. TSA Narayanan, Commandant, MCEME called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday</h4>
        <img class="fs-gal sm" src="img/thumb/MCEME1.jpg" alt="Lt. Gen. TSA Narayanan, Commandant, MCEME called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday" data-url="img/MCEME1.jpg">
        <img class="fs-gal sm" src="img/thumb/MCEME2.jpg" alt="Lt. Gen. TSA Narayanan, Commandant, MCEME called on the Hon'ble Governor at Raj Bhavan, Hyderabad on 4th Dec 2019, Wednesday" data-url="img/MCEME2.jpg">

        <div class="clearfix"></div>

        <h4>The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday.</h4>
        <img class="fs-gal sm" src="img/thumb/BSG1-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG1-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG2-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG2-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG3-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG3-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG4-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG4-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG5-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG5-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG6-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG6-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG7-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG7-071119.jpg">
        <img class="fs-gal sm" src="img/thumb/BSG8-071119.jpg" alt="The Bharat Scouts &amp; Guides of Telangana State Association State Council Meeting held at Darbar Hall, Raj Bhavan on 4th Dec 2019, Wednesday." data-url="img/BSG8-071119.jpg">

        <div class="clearfix"></div>

        <h4>International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion.</h4>
        <img class="fs-gal sm" src="img/thumb/IDD1.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD1.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD2.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD2.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD3.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD3.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD4.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD4.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD5.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD5.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD6.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD6.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD7.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD7.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD8.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD8.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD9.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD9.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD10.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD10.jpg">
        <img class="fs-gal sm" src="img/thumb/IDD11.jpg" alt="International Day of Persons with Disabilities has been celebrated at Durbar Hall, Raj Bhavan on Dec 3rd, Tuesday with traditional fervor and gaiety.  The students from different schools of disability have demonstrated their hidden talents before Hon'ble Governor. Wheel chairs, Walkers, Try-Cycles, Hearing Aids and other appliances to nearly 100 disabled persons were distributed by Hon'ble Governor on this occasion." data-url="img/IDD11.jpg">

        <div class="clearfix"></div>





        <h4>A delegation led by Dr. K. Laxman, BJP Telangana State President called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal sm" src="img/thumb/Dr.K.laxman.png" alt="A delegation led by Dr. K. Laxman, BJP Telangana State President called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/Dr.K.laxman.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by Shri Mohd Ayub Khan Secretary, Telangana Pradesh Congress Committee called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal sm" src="img/thumb/MohdAyubkhan,TPCC.png" alt="A delegation led by Shri Mohd Ayub Khan Secretary, Telangana Pradesh Congress Committee called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/MohdAyubkhan,TPCC.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by Shri Jasmat Nanjibhai Patel, Chairman, Love for Cow Foundation called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal sm" src="img/thumb/LoveforCow.png" alt="A delegation led by Shri Jasmat Nanjibhai Patel, Chairman, Love for Cow Foundation called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/LoveforCow.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by Smt. D.K. Aruna, Ex-Minister, Telangana called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal sm" src="img/thumb/Smt.D.K.Aruna.png" alt="A delegation led by Smt. D.K. Aruna, Ex-Minister, Telangana called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/Smt.D.K.Aruna.jpg">

        <div class="clearfix"></div>


        <h4>A delegation led by Lt. Col. P.L.N Sarma (Retd.), Registrar, HPS Begumpet, Hyderabad called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal sm" src="img/thumb/HPSBegumpet1.png" alt="A delegation led by Lt. Col. P.L.N Sarma (Retd.), Registrar, HPS Begumpet, Hyderabad called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/HPSBegumpet1.jpg">
        <img class="fs-gal sm" src="img/thumb/HPSBegumpet2.png" alt="A delegation led by Lt. Col. P.L.N Sarma (Retd.), Registrar, HPS Begumpet, Hyderabad called on the Hon'ble Governor on 29th Nov 2019, Friday at Raj Bhavan." data-url="img/HPSBegumpet2.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday.</h4>
        <img class="fs-gal sm" src="img/thumb/icd1.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd1.jpg">
        <img class="fs-gal sm" src="img/thumb/icd2.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd2.jpg">
        <img class="fs-gal sm" src="img/thumb/icd3.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd3.jpg">
        <img class="fs-gal sm" src="img/thumb/icd4.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd4.jpg">
        <img class="fs-gal sm" src="img/thumb/icd5.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd5.jpg">
        <img class="fs-gal sm" src="img/thumb/icd6.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd6.jpg">
        <img class="fs-gal sm" src="img/thumb/icd7.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd7.jpg">
        <img class="fs-gal sm" src="img/thumb/icd8.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd8.jpg">
        <img class="fs-gal sm" src="img/thumb/icd9.jpg" alt="Hon'ble Governor Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Chief Minister Sri K. Chandrasekhar Rao and Hon'ble Chief Justice Sri Raghavendra Singh Chauhan at the Celebrations of 70th Constitution Day at Raj Bhavan, Telangana on 26th Nov 19, Tuesday." data-url="img/icd9.jpg">

        <div class="clearfix"></div>

        <h4>Sri K. Chandrashekar Rao,  Hon’ble  Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on 25th Nov 19, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/CM1.jpg" alt="Sri K. Chandrashekar Rao,  Hon’ble  Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on 25th Nov 19, Monday." data-url="img/CM1.jpg">
        <img class="fs-gal sm" src="img/thumb/CM2.jpg" alt="Sri K. Chandrashekar Rao,  Hon’ble  Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on 25th Nov 19, Monday." data-url="img/CM2.jpg">
        <img class="fs-gal sm" src="img/thumb/CM3.jpg" alt="Sri K. Chandrashekar Rao,  Hon’ble  Chief Minister of Telangana has called on the Hon’ble Governor at Raj Bhavan on 25th Nov 19, Monday." data-url="img/CM3.jpg">

        <div class="clearfix"></div>

        <h4>All parties delegation led by  Sri L. Ramana, State President of State TDP and others  called on the Hon'ble Governor at Raj Bhavan on 20th Nov 2019, Wednesday and submitted memorandum.</h4>
        <img class="fs-gal sm" src="img/thumb/tdp-delegation.jpg" alt="All parties delegation led by  Sri L. Ramana, State President of State TDP and others  called on the Hon'ble Governor at Raj Bhavan on 20th Nov 2019, Wednesday and submitted memorandum." data-url="img/tdp-delegation.jpg">

        <div class="clearfix"></div>

        <h4>Sri P. Ranganayakulu, Global Coordinator, World Arya Vysya Mahasabha and others called on the Hon’ble Governor at Raj Bhavan on 18th Nov 19, Monday.</h4>
        <img class="fs-gal sm" src="img/thumb/WorldAryaVysyaMahasabha1.jpg" alt="Sri P. Ranganayakulu, Global Coordinator, World Arya Vysya Mahasabha and others called on the Hon’ble Governor at Raj Bhavan on 18th Nov 19, Monday." data-url="img/WorldAryaVysyaMahasabha1.jpg">
        <img class="fs-gal sm" src="img/thumb/WorldAryaVysyaMahasabha2.jpg" alt="Sri P. Ranganayakulu, Global Coordinator, World Arya Vysya Mahasabha and others called on the Hon’ble Governor at Raj Bhavan on 18th Nov 19, Monday." data-url="img/WorldAryaVysyaMahasabha2.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday.</h4>
        <img class="fs-gal sm" src="img/thumb/childrensday1.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday1.jpg">
        <img class="fs-gal" src="img/thumb/childrensday2.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday2.jpg">
        <img class="fs-gal" src="img/thumb/childrensday3.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday3.jpg">
        <img class="fs-gal" src="img/thumb/childrensday4.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday4.jpg">
        <img class="fs-gal" src="img/thumb/childrensday5.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday5.jpg">
        <img class="fs-gal" src="img/thumb/childrensday6.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday6.jpg">
        <img class="fs-gal" src="img/thumb/childrensday7.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday7.jpg">
        <img class="fs-gal" src="img/thumb/childrensday8.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday8.jpg">
        <img class="fs-gal" src="img/thumb/childrensday9.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday9.jpg">
        <img class="fs-gal" src="img/thumb/childrensday10.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday10.jpg">
        <img class="fs-gal" src="img/thumb/childrensday11.jpg" alt="Hon'ble Governor welcomed &amp; greeted children drawn from different schools from various districts of Telangana gathered at Raj Bhavan as part of the Children’s Day celebrations on 14th Nov 2019, Thursday." data-url="img/childrensday11.jpg">

        <div class="clearfix"></div>

        <h4>The senior management of various private hospitals in Telangana met Hon’ble Governor at Raj Bhavan, Hyderabad on 13th November, 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/privatehospitals1.jpg" alt="The senior management of various private hospitals in Telangana met Hon’ble Governor at Raj Bhavan, Hyderabad on 13th November, 2019, Wednesday." data-url="img/privatehospitals1.jpg">
        <img class="fs-gal" src="img/thumb/privatehospitals2.jpg" alt="The senior management of various private hospitals in Telangana met Hon’ble Governor at Raj Bhavan, Hyderabad on 13th November, 2019, Wednesday." data-url="img/privatehospitals2.jpg">
        <img class="fs-gal" src="img/thumb/privatehospitals3.jpg" alt="The senior management of various private hospitals in Telangana met Hon’ble Governor at Raj Bhavan, Hyderabad on 13th November, 2019, Wednesday." data-url="img/privatehospitals3.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad.</h4>
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition1.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition1.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition2.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition2.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition3.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition3.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition4.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition4.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition5.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition5.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition6.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition6.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition7.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition7.jpg">
        <img class="fs-gal" src="img/thumb/AdiDhwaniExhibition8.jpg" alt="Hon’ble Governor  visited “Adi Dhwani” an exhibition of 124 musical instruments of Tribals on 12th November 2019, Tuesday at Hyderabad." data-url="img/AdiDhwaniExhibition8.jpg">

        <div class="clearfix"></div>

        <h4>Prof. Jayadhir Thirumal Rao and Prof. Guduru Manoja Organisers of “Adi Dhwani”, the exhibition of tribal and folk musical instruments of Telangana State called on Hon’ble Governor on 11th Nov 2019, Monday at Raj Bhavan and invited her to visit the exhibition.</h4>
        <img class="fs-gal" src="img/thumb/AdiDhwani.jpg" alt="Prof. Jayadhir Thirumal Rao and Prof. Guduru Manoja Organisers of “Adi Dhwani”, the exhibition of tribal and folk musical instruments of Telangana State called on Hon’ble Governor on 11th Nov 2019, Monday at Raj Bhavan and invited her to visit the exhibition." data-url="img/AdiDhwani.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by Sri Kolli Nageshwar Rao, President, All India Disabled Right Forum, Sri Mohan Reddy, Ex-MLC, Chairman, State Retired Teachers &amp; Employees, Ms. Vani Sarraju Rao IFS, Mr. M. Subarayudu IFS, Mr. M. Sevala Naik IFS and others called on the Hon'ble Governor on 11th Nov 2019, Monday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/KolliNageshwarRao.jpg" alt="A delegation led by Sri Kolli Nageshwar Rao, President, All India Disabled Right Forum, Sri Mohan Reddy, Ex-MLC, Chairman, State Retired Teachers &amp; Employees, Ms. Vani Sarraju Rao IFS, Mr. M. Subarayudu IFS, Mr. M. Sevala Naik IFS and others called on the Hon'ble Governor on 11th Nov 2019, Monday at Raj Bhavan." data-url="img/KolliNageshwarRao.jpg">
        <img class="fs-gal" src="img/thumb/MohanReddy.jpg" alt="A delegation led by Sri Kolli Nageshwar Rao, President, All India Disabled Right Forum, Sri Mohan Reddy, Ex-MLC, Chairman, State Retired Teachers &amp; Employees, Ms. Vani Sarraju Rao IFS, Mr. M. Subarayudu IFS, Mr. M. Sevala Naik IFS and others called on the Hon'ble Governor on 11th Nov 2019, Monday at Raj Bhavan." data-url="img/MohanReddy.jpg">
        <img class="fs-gal" src="img/thumb/VaniSarrajuRao.jpg" alt="A delegation led by Sri Kolli Nageshwar Rao, President, All India Disabled Right Forum, Sri Mohan Reddy, Ex-MLC, Chairman, State Retired Teachers &amp; Employees, Ms. Vani Sarraju Rao IFS, Mr. M. Subarayudu IFS, Mr. M. Sevala Naik IFS and others called on the Hon'ble Governor on 11th Nov 2019, Monday at Raj Bhavan." data-url="img/VaniSarrajuRao.jpg">

        <div class="clearfix"></div>

        <h4>Smt. Tamilisai Soundararajan, Hon’ble Governor and Chairperson-Armed Forces Flag day Fund, Telangana State was kind enough to receive a  cheque from Sri Siripuram Vishwanatham, aged 78 years, a businessman from Huzurnagar who donated a cheque for Rs. 50 Lakhs for the Armed Forces Flag Day fund on 11th Nov 2019, Monday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/SiripuramVishwanatham1.jpg" alt="Smt. Tamilisai Soundararajan, Hon’ble Governor and Chairperson-Armed Forces Flag day Fund, Telangana State was kind enough to receive a  cheque from Sri Siripuram Vishwanatham, aged 78 years, a businessman from Huzurnagar who donated a cheque for Rs. 50 Lakhs for the Armed Forces Flag Day fund on 11th Nov 2019, Monday at Raj Bhavan." data-url="img/SiripuramVishwanatham1.jpg">
        <img class="fs-gal" src="img/thumb/SiripuramVishwanatham2.jpg" alt="Smt. Tamilisai Soundararajan, Hon’ble Governor and Chairperson-Armed Forces Flag day Fund, Telangana State was kind enough to receive a  cheque from Sri Siripuram Vishwanatham, aged 78 years, a businessman from Huzurnagar who donated a cheque for Rs. 50 Lakhs for the Armed Forces Flag Day fund on 11th Nov 2019, Monday at Raj Bhavan." data-url="img/SiripuramVishwanatham2.jpg">

        <div class="clearfix"></div>

        <h4>On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/BSG1.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG1.jpg">
        <img class="fs-gal" src="img/thumb/BSG2.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG2.jpg">
        <img class="fs-gal" src="img/thumb/BSG3.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG3.jpg">
        <img class="fs-gal" src="img/thumb/BSG4.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG4.jpg">
        <img class="fs-gal" src="img/thumb/BSG5.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG5.jpg">
        <img class="fs-gal" src="img/thumb/BSG6.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG6.jpg">
        <img class="fs-gal" src="img/thumb/BSG7.jpg" alt="On the occasion of the foundation day of Bharat Scouts &amp; Guides, Hon'ble Governor graced the event at BSG school, Hyderabad as Chief Patron &amp; President of Telangana Scouts &amp; Guides on 7th November 2019, Thursday." data-url="img/BSG7.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor reviewed activities of Indian Red Cross Society - Telangana State Branch in a meeting held with the Chairpersons of District units at Raj Bhavan on 6th Nov 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/RedCrossSociety1.jpg" alt="Hon'ble Governor reviewed activities of Indian Red Cross Society - Telangana State Branch in a meeting held with the Chairpersons of District units at Raj Bhavan on 6th Nov 2019, Wednesday." data-url="img/RedCrossSociety1.jpg">
        <img class="fs-gal" src="img/thumb/RedCrossSociety2.jpg" alt="Hon'ble Governor reviewed activities of Indian Red Cross Society - Telangana State Branch in a meeting held with the Chairpersons of District units at Raj Bhavan on 6th Nov 2019, Wednesday." data-url="img/RedCrossSociety2.jpg">
        <img class="fs-gal" src="img/thumb/RedCrossSociety3.jpg" alt="Hon'ble Governor reviewed activities of Indian Red Cross Society - Telangana State Branch in a meeting held with the Chairpersons of District units at Raj Bhavan on 6th Nov 2019, Wednesday." data-url="img/RedCrossSociety3.jpg">

        <div class="clearfix"></div>

        <h4>A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/PonnamPrabhakar1.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/PonnamPrabhakar1.jpg">
        <img class="fs-gal" src="img/thumb/PonnamPrabhakar2.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/PonnamPrabhakar2.jpg">
        <img class="fs-gal" src="img/thumb/D.R.Kaarthikeyan1.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/D.R.Kaarthikeyan1.jpg">
        <img class="fs-gal" src="img/thumb/D.R.Kaarthikeyan2.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/D.R.Kaarthikeyan2.jpg">
        <img class="fs-gal" src="img/thumb/MohammadHaghbinGhomi1.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/MohammadHaghbinGhomi1.jpg">
        <img class="fs-gal" src="img/thumb/MohammadHaghbinGhomi2.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/MohammadHaghbinGhomi2.jpg">
        <img class="fs-gal" src="img/thumb/GoliMadhusudhanReddy.jpg" alt="A delegation led by Sri Ponnam Prabhakar, Ex-MP &amp; Working President, TPCC and others, Sri D. R. Kaarthikeyan, IPS., (Retd.), Advisor, Law-Human Rights-Corporate Affairs., H.E. Mr. Mohammad Haghbin Ghomi, Consul General, Islamic Republic of Iran, Hyderabad, Sri Goli Madhusudhan Reddy, BJP Kisan Morcha State President and others called on Hon'ble Governor at Raj Bhavan on 5th Nov 2019, Tuesday." data-url="img/GoliMadhusudhanReddy.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Minister for Medical and Health Sri Etela Rajender called on the Hon'ble Governor at Raj Bhavan on 4th Nov 2019, Monday and invited her for his daughter's wedding.</h4>
        <img class="fs-gal" src="img/thumb/EtelaRajender1.jpg" alt="Hon'ble Minister for Medical and Health Sri Etela Rajender called on the Hon'ble Governor at Raj Bhavan on 4th Nov 2019, Monday and invited her for his daughter's wedding." data-url="img/EtelaRajender1.jpg">
        <img class="fs-gal" src="img/thumb/EtelaRajender2.jpg" alt="Hon'ble Minister for Medical and Health Sri Etela Rajender called on the Hon'ble Governor at Raj Bhavan on 4th Nov 2019, Monday and invited her for his daughter's wedding." data-url="img/EtelaRajender2.jpg">


        <div class="clearfix"></div>

        <h4>A delegation of doctors and TB experts, Sri T. Sriranga Rao, Chairman, Telangana State Electricity Regulatory Commission and others called on the Hon’ble Governor on 2nd Nov, Saturday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/tbexperts1.jpg" alt="A delegation of doctors and TB experts, Sri T. Sriranga Rao, Chairman, Telangana State Electricity Regulatory Commission and others called on the Hon’ble Governor on 2nd Nov, Saturday at Raj Bhavan." data-url="img/tbexperts1.jpg">
        <img class="fs-gal" src="img/thumb/tbexperts2.jpg" alt="A delegation of doctors and TB experts, Sri T. Sriranga Rao, Chairman, Telangana State Electricity Regulatory Commission and others called on the Hon’ble Governor on 2nd Nov, Saturday at Raj Bhavan." data-url="img/tbexperts2.jpg">
        <img class="fs-gal" src="img/thumb/tbexperts3.jpg" alt="A delegation of doctors and TB experts, Sri T. Sriranga Rao, Chairman, Telangana State Electricity Regulatory Commission and others called on the Hon’ble Governor on 2nd Nov, Saturday at Raj Bhavan." data-url="img/tbexperts3.jpg">

        <div class="clearfix"></div>

        <h4>Sri D. Ravindra Naik, Ex-Minister, National Commission for Scheduled Casts/Tribes, Govt. of India and others called on the Hon’ble Governor at Raj Bhavan on 1st Nov 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/RavindraNaik.jpg" alt="Sri D. Ravindra Naik, Ex-Minister, National Commission for Scheduled Casts/Tribes, Govt. of India and others called on the Hon’ble Governor at Raj Bhavan on 1st Nov 2019, Friday." data-url="img/RavindraNaik.jpg">

        <div class="clearfix"></div>

        <h4>All Parties Delegation led by Sri L. Ramana, State President of TDP in Telangana and others called on the Hon'ble Governor at Raj Bhavan and submitted memorandum on 31st October 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/APD1.jpg" alt="All Parties Delegation led by Sri L. Ramana, State President of TDP in Telangana and others called on the Hon'ble Governor at Raj Bhavan and submitted memorandum on 31st October 2019, Thursday." data-url="img/APD1.jpg">
        <img class="fs-gal" src="img/thumb/APD2.jpg" alt="All Parties Delegation led by Sri L. Ramana, State President of TDP in Telangana and others called on the Hon'ble Governor at Raj Bhavan and submitted memorandum on 31st October 2019, Thursday." data-url="img/APD2.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor of Kerala, Sri Arif Mohammed Khan called on the Governor Dr. (Smt.) Tamilisai Soundararajan at Raj Bhavan, Hyderabad on 31st Oct 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/GovernorofKerala1.jpg" alt="Hon’ble Governor of Kerala, Sri Arif Mohammed Khan called on the Governor Dr. (Smt.) Tamilisai Soundararajan at Raj Bhavan, Hyderabad on 31st Oct 2019, Thursday." data-url="img/GovernorofKerala1.jpg">
        <img class="fs-gal" src="img/thumb/GovernorofKerala2.jpg" alt="Hon’ble Governor of Kerala, Sri Arif Mohammed Khan called on the Governor Dr. (Smt.) Tamilisai Soundararajan at Raj Bhavan, Hyderabad on 31st Oct 2019, Thursday." data-url="img/GovernorofKerala2.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor administered the National Unity Day pledge at Durbar Hall, Raj Bhavan  on 31st Oct 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/NationalUnityDay1.jpg" alt="Hon’ble Governor administered the National Unity Day pledge at Durbar Hall, Raj Bhavan  on 31st Oct 2019, Thursday." data-url="img/NationalUnityDay1.jpg">
        <img class="fs-gal" src="img/thumb/NationalUnityDay2.jpg" alt="Hon’ble Governor administered the National Unity Day pledge at Durbar Hall, Raj Bhavan  on 31st Oct 2019, Thursday." data-url="img/NationalUnityDay2.jpg">
        <img class="fs-gal" src="img/thumb/NationalUnityDay3.jpg" alt="Hon’ble Governor administered the National Unity Day pledge at Durbar Hall, Raj Bhavan  on 31st Oct 2019, Thursday." data-url="img/NationalUnityDay3.jpg">

        <div class="clearfix"></div>

        <h4>Hon'ble Governor received Hon'ble Vice President of India Shri Venkaiah Naidu at Begumpet Airport, Hyderabad on 30th October 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/vpi.jpg" alt="Hon'ble Governor received Hon'ble Vice President of India Shri Venkaiah Naidu at Begumpet Airport, Hyderabad on 30th October 2019, Wednesday." data-url="img/vpi.jpg">

        <div class="clearfix"></div>

        <h4>Hon’ble Governor met Chinna Jeeyar Swamy at his ashramam &amp; sought blessings on 29th October 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/ChinnaJeeyarSwamy1.jpg" alt="Hon’ble Governor met Chinna Jeeyar Swamy at his ashramam &amp; sought blessings on 29th October 2019, Tuesday." data-url="img/ChinnaJeeyarSwamy1.jpg">
        <img class="fs-gal" src="img/thumb/ChinnaJeeyarSwamy2.jpg" alt="Hon’ble Governor met Chinna Jeeyar Swamy at his ashramam &amp; sought blessings on 29th October 2019, Tuesday." data-url="img/ChinnaJeeyarSwamy2.jpg">

        <div class="clearfix"></div>
 

        <h4>Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/Skandagiri1.jpg" alt="Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday." data-url="img/Skandagiri1.jpg">
        <img class="fs-gal" src="img/thumb/Skandagiri2.jpg" alt="Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday." data-url="img/Skandagiri2.jpg">
        <img class="fs-gal" src="img/thumb/Skandagiri3.jpg" alt="Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday." data-url="img/Skandagiri3.jpg">
        <img class="fs-gal" src="img/thumb/Skandagiri4.jpg" alt="Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday." data-url="img/Skandagiri4.jpg">
        <img class="fs-gal" src="img/thumb/Skandagiri5.jpg" alt="Hon'ble Governor visited Skandagiri Temple, Padmaraonagar,  Secunderabad on 29th October 2019, Tuesday." data-url="img/Skandagiri5.jpg">

        <div class="clearfix"></div>


        <h4>On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a "meet &amp; greet event" organised at Raj Bhavan on 28th Oct 2019, Sunday.</h4>
        <img class="fs-gal" src="img/thumb/meet&amp;greetevent1.jpg" alt="On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a 'meet &amp; greet event' organised at Raj Bhavan on 28th Oct 2019, Sunday." data-url="img/meet&amp;greetevent1.jpg">
        <img class="fs-gal" src="img/thumb/meet&amp;greetevent2.jpg" alt="On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a 'meet &amp; greet event' organised at Raj Bhavan on 28th Oct 2019, Sunday." data-url="img/meet&amp;greetevent2.jpg">
        <img class="fs-gal" src="img/thumb/meet&amp;greetevent3.jpg" alt="On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a 'meet &amp; greet event' organised at Raj Bhavan on 28th Oct 2019, Sunday." data-url="img/meet&amp;greetevent3.jpg">
        <img class="fs-gal" src="img/thumb/meet&amp;greetevent4.jpg" alt="On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a 'meet &amp; greet event' organised at Raj Bhavan on 28th Oct 2019, Sunday." data-url="img/meet&amp;greetevent4.jpg">
        <img class="fs-gal" src="img/thumb/meet&amp;greetevent5.jpg" alt="On the festive occasion of Deepavali, Hon'ble Governor exchanged greetings with people of the state at a 'meet &amp; greet event' organised at Raj Bhavan on 28th Oct 2019, Sunday." data-url="img/meet&amp;greetevent5.jpg">

        <div class="clearfix"></div>
 

        <h4>Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/Appoint25OCT1.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT1.jpg">
        <img class="fs-gal" src="img/thumb/Appoint25OCT2.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT2.jpg">
        <img class="fs-gal" src="img/thumb/Appoint25OCT3.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT3.jpg">
        <img class="fs-gal" src="img/thumb/Appoint25OCT4.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT4.jpg">
        <img class="fs-gal" src="img/thumb/Appoint25OCT5.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT5.jpg">
        <img class="fs-gal" src="img/thumb/Appoint25OCT6.jpg" alt="Sri V. Hanumanth Rao, Ex-MP, Mrs. Karin Stoll, Consul General of the Federal Republic of Germany in Chennai,  Sri M. Gangaram, Chairman Friendly Environment for the Disabled , Dr. Penchala Srinivas, Convenor, Telangana EMU Farmers Association, Delegation of All Trade Unions Telangana State led by Sri Alugubelli Narsireddy, MLC and others called on the Hon’ble Governor on 25th Oct 19, Friday at Raj Bhavan." data-url="img/Appoint25OCT6.jpg">

        <div class="clearfix"></div>
         <h4>Hon'ble Governor graced 3rd annual general body meeting of the Indian Red Cross Society (IRCS) at Samskruthi auditorium, Raj Bhavan on 24th Oct 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/IRCS1.jpg" alt="Hon'ble Governor graced 3rd annual general body meeting of the Indian Red Cross Society (IRCS) at Samskruthi auditorium, Raj Bhavan on 24th Oct 2019, Thursday." data-url="img/IRCS1.jpg">
        <img class="fs-gal" src="img/thumb/IRCS2.jpg" alt="Hon'ble Governor graced 3rd annual general body meeting of the Indian Red Cross Society (IRCS) at Samskruthi auditorium, Raj Bhavan on 24th Oct 2019, Thursday." data-url="img/IRCS2.jpg">
        <img class="fs-gal sm" src="img/thumb/IRCS3.jpg" alt="Hon'ble Governor graced 3rd annual general body meeting of the Indian Red Cross Society (IRCS) at Samskruthi auditorium, Raj Bhavan on 24th Oct 2019, Thursday." data-url="img/IRCS3.jpg">
      
        <div class="clearfix"></div>
        <h4>Major General R K Singh, General Officer Commanding, Telangana and Andra Sub-area called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/RKSingh1.jpg" alt="Major General R K Singh, General Officer Commanding, Telangana and Andra Sub-area called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/RKSingh1.jpg">
        <img class="fs-gal" src="img/thumb/RKSingh2.jpg" alt="Major General R K Singh, General Officer Commanding, Telangana and Andra Sub-area called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/RKSingh2.jpg">
      
        
        <div class="clearfix"></div>
        <h4>Sri Singireddy Niranjan Reddy, Minister for Agriculture &amp; Co-operation Marketing, Telangana called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/SingireddyNiranjanReddy1.jpg" alt="Sri Singireddy Niranjan Reddy, Minister for Agriculture &amp; Co-operation Marketing, Telangana called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/SingireddyNiranjanReddy1.jpg">
        <img class="fs-gal" src="img/thumb/SingireddyNiranjanReddy2.jpg" alt="Sri Singireddy Niranjan Reddy, Minister for Agriculture &amp; Co-operation Marketing, Telangana called on the Governor at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/SingireddyNiranjanReddy2.jpg">
      
        
        <div class="clearfix"></div>
        <h4>Hon’ble Speaker, Lok Sabha, Sri Om Birla called on the Governor of Telangana at Raj Bhavan on 23rd October 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/LokSabhaSpeaker1.jpg" alt="Hon’ble Speaker, Lok Sabha, Sri Om Birla called on the Governor of Telangana at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/LokSabhaSpeaker1.jpg">
        <img class="fs-gal" src="img/thumb/LokSabhaSpeaker2.jpg" alt="Hon’ble Speaker, Lok Sabha, Sri Om Birla called on the Governor of Telangana at Raj Bhavan on 23rd October 2019, Wednesday." data-url="img/LokSabhaSpeaker2.jpg">
        
        <div class="clearfix"></div>   
        <h4>Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/TribalWelfare1.jpg" alt="Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday." data-url="img/TribalWelfare1.jpg">
        <img class="fs-gal" src="img/thumb/TribalWelfare2.jpg" alt="Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday." data-url="img/TribalWelfare2.jpg">
        <img class="fs-gal" src="img/thumb/TribalWelfare3.jpg" alt="Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday." data-url="img/TribalWelfare3.jpg">
        <img class="fs-gal" src="img/thumb/TribalWelfare4.jpg" alt="Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday." data-url="img/TribalWelfare4.jpg">
        <img class="fs-gal" src="img/thumb/TribalWelfare5.jpg" alt="Hon'ble Governor reviewed the Tribal Welfare Schemes at Raj Bhavan on 22nd Oct 2019, Tuesday." data-url="img/TribalWelfare5.jpg">
      
        
        <div class="clearfix"></div>
        <h4>Sri Joel Reifman, U.S. Consul General in Hyderabad, Sri A.Y.V. Krishna, IPS., Joint Director, CBI-Hyderabad, Sri Ras Bihari, All India Sampark Pramukh, Viswa Hindu Parishad and others called on the Hon’ble Governor at Raj Bhavan on 21 Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/U.SConsulGeneral1.jpg" alt="Sri Joel Reifman, U.S. Consul General in Hyderabad, Sri A.Y.V. Krishna, IPS., Joint Director, CBI-Hyderabad, Sri Ras Bihari, All India Sampark Pramukh, Viswa Hindu Parishad and others called on the Hon’ble Governor at Raj Bhavan on 21 Oct 2019, Monday." data-url="img/U.SConsulGeneral1.jpg">
        <img class="fs-gal" src="img/thumb/U.SConsulGeneral2.jpg" alt="Sri Joel Reifman, U.S. Consul General in Hyderabad, Sri A.Y.V. Krishna, IPS., Joint Director, CBI-Hyderabad, Sri Ras Bihari, All India Sampark Pramukh, Viswa Hindu Parishad and others called on the Hon’ble Governor at Raj Bhavan on 21 Oct 2019, Monday." data-url="img/U.SConsulGeneral2.jpg">
        <img class="fs-gal" src="img/thumb/U.SConsulGeneral3.jpg" alt="Sri Joel Reifman, U.S. Consul General in Hyderabad, Sri A.Y.V. Krishna, IPS., Joint Director, CBI-Hyderabad, Sri Ras Bihari, All India Sampark Pramukh, Viswa Hindu Parishad and others called on the Hon’ble Governor at Raj Bhavan on 21 Oct 2019, Monday." data-url="img/U.SConsulGeneral3.jpg">
        
        <div class="clearfix"></div>
        <h4>Sri E. Aswathama Reddy, Convener, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and submitted memorandum on  21 Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/Tsrtc_Union1.jpg" alt="Sri E. Aswathama Reddy, Convener, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and submitted memorandum on  21 Oct 2019, Monday." data-url="img/Tsrtc_Union1.jpg">
        <img class="fs-gal" src="img/thumb/Tsrtc_Union2.jpg" alt="Sri E. Aswathama Reddy, Convener, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and submitted memorandum on  21 Oct 2019, Monday." data-url="img/Tsrtc_Union2.jpg">
      
        
        <div class="clearfix"></div>
    <h4>Hon'ble Governor participated in All India Malayalee Association, AIMA Kalolsavam event as chief guest on 20th October 2019, Sunday at Hyderabad.</h4>
        <img class="fs-gal" src="img/thumb/AIMA1.jpg" alt="Hon'ble Governor participated in All India Malayalee Association, AIMA Kalolsavam event as chief guest on 20th October 2019, Sunday at Hyderabad." data-url="img/AIMA1.jpg">
        <img class="fs-gal" src="img/thumb/AIMA2.jpg" alt="Hon'ble Governor participated in All India Malayalee Association, AIMA Kalolsavam event as chief guest on 20th October 2019, Sunday at Hyderabad." data-url="img/AIMA2.jpg">
        <img class="fs-gal" src="img/thumb/AIMA3.jpg" alt="Hon'ble Governor participated in All India Malayalee Association, AIMA Kalolsavam event as chief guest on 20th October 2019, Sunday at Hyderabad." data-url="img/AIMA3.jpg">
        <img class="fs-gal" src="img/thumb/AIMA4.jpg" alt="Hon'ble Governor participated in All India Malayalee Association, AIMA Kalolsavam event as chief guest on 20th October 2019, Sunday at Hyderabad." data-url="img/AIMA4.jpg">

        <div class="clearfix"></div>
    <h4>Hon'ble Governor graced valedictory function of 23rd ASISC NATIONAL LITERARY EVENTS - 2019 as chief guest at Ramoji film city Hyderabad on 20th October 2019, Sunday.</h4>
        <img class="fs-gal" src="img/thumb/ASISC1.jpg" alt="Hon'ble Governor graced valedictory function of 23rd ASISC NATIONAL LITERARY EVENTS - 2019 as chief guest at Ramoji film city Hyderabad on 20th October 2019, Sunday." data-url="img/ASISC1.jpg">
        <img class="fs-gal" src="img/thumb/ASISC2.jpg" alt="Hon'ble Governor graced valedictory function of 23rd ASISC NATIONAL LITERARY EVENTS - 2019 as chief guest at Ramoji film city Hyderabad on 20th October 2019, Sunday." data-url="img/ASISC2.jpg">
        <img class="fs-gal" src="img/thumb/ASISC3.jpg" alt="Hon'ble Governor graced valedictory function of 23rd ASISC NATIONAL LITERARY EVENTS - 2019 as chief guest at Ramoji film city Hyderabad on 20th October 2019, Sunday." data-url="img/ASISC3.jpg">
        <img class="fs-gal" src="img/thumb/ASISC4.jpg" alt="Hon'ble Governor graced valedictory function of 23rd ASISC NATIONAL LITERARY EVENTS - 2019 as chief guest at Ramoji film city Hyderabad on 20th October 2019, Sunday." data-url="img/ASISC4.jpg">

        <div class="clearfix"></div>
    <h4>Hon'ble Governor graced the founders day Celebrations of PPG group of Institutions at Coimbatore on 19th October 2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/PPG1.jpg" alt="Hon'ble Governor graced the founders day Celebrations of PPG group of Institutions at Coimbatore on 19th October 2019, Saturday." data-url="img/PPG1.jpg">
        <img class="fs-gal" src="img/thumb/PPG2.jpg" alt="Hon'ble Governor graced the founders day Celebrations of PPG group of Institutions at Coimbatore on 19th October 2019, Saturday." data-url="img/PPG2.jpg">
        <img class="fs-gal" src="img/thumb/PPG3.jpg" alt="Hon'ble Governor graced the founders day Celebrations of PPG group of Institutions at Coimbatore on 19th October 2019, Saturday." data-url="img/PPG3.jpg">
        <img class="fs-gal" src="img/thumb/PPG4.jpg" alt="Hon'ble Governor graced the founders day Celebrations of PPG group of Institutions at Coimbatore on 19th October 2019, Saturday." data-url="img/PPG4.jpg">

        <div class="clearfix"></div>
    <h4>Hon'ble Governor was felicitated by Chamber of Commerce Trade Unions at Coimbatore on 19th October 2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/CCTU1.jpg" alt="Hon'ble Governor was felicitated by Chamber of Commerce Trade Unions at Coimbatore on 19th October 2019, Saturday." data-url="img/CCTU1.jpg">
        <img class="fs-gal" src="img/thumb/CCTU2.jpg" alt="Hon'ble Governor was felicitated by Chamber of Commerce Trade Unions at Coimbatore on 19th October 2019, Saturday." data-url="img/CCTU2.jpg">
        <img class="fs-gal" src="img/thumb/CCTU3.jpg" alt="Hon'ble Governor was felicitated by Chamber of Commerce Trade Unions at Coimbatore on 19th October 2019, Saturday." data-url="img/CCTU3.jpg">
        <img class="fs-gal" src="img/thumb/CCTU4.jpg" alt="Hon'ble Governor was felicitated by Chamber of Commerce Trade Unions at Coimbatore on 19th October 2019, Saturday." data-url="img/CCTU4.jpg">

        <div class="clearfix"></div>
    <h4>BJP Delegation led by  Dr. K. Laxman, State President of Bharatiya Janata Party in Telangana and others called on the Hon'ble Governor at Raj Bhavan on 16th Oct 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/K.Laxman.jpg" alt="BJP Delegation led by  Dr. K. Laxman, State President of Bharatiya Janata Party in Telangana and others called on the Hon'ble Governor at Raj Bhavan on 16th Oct 2019, Wednesday." data-url="img/K.Laxman.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Telangana, Dr. Tamilisai Soundararajan called on the Hon'ble Union Home Minister Shri Amit Shah at New Delhi on 15th Oct 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/homeminister.jpg" alt="Governor of Telangana, Dr. Tamilisai Soundararajan called on the Hon'ble Union Home Minister Shri Amit Shah at New Delhi on 15th Oct 2019, Tuesday." data-url="img/homeminister.jpg">

    <div class="clearfix"></div>

    <h4>Governor of Telangana, Dr. Tamilisai Soundararajan called on the Hon'ble Prime Minister Shri Narendra Modi at New Delhi on 15th Oct 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/primeminister.jpg" alt="Governor of Telangana, Dr. Tamilisai Soundararajan called on the Hon'ble Prime Minister Shri Narendra Modi at New Delhi on 15th Oct 2019, Tuesday." data-url="img/primeminister.jpg">

    <div class="clearfix"></div>

    <h4>Smt. &amp; Sri (Dr.) Janardhan Reddy  IAS and Sri Daivagna Sharma Numerologist called on the Hon'ble Governor at Raj Bhavan on 14th Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/JanardhanReddy.jpg" alt="Smt. &amp; Sri (Dr.) Janardhan Reddy  IAS and Sri Daivagna Sharma Numerologist called on the Hon'ble Governor at Raj Bhavan on 14th Oct 2019, Monday." data-url="img/JanardhanReddy.jpg">
        <img class="fs-gal" src="img/thumb/DaivagnaSharma.jpg" alt="Smt. &amp; Sri (Dr.) Janardhan Reddy  IAS and Sri Daivagna Sharma Numerologist called on the Hon'ble Governor at Raj Bhavan on 14th Oct 2019, Monday." data-url="img/DaivagnaSharma.jpg">

    <div class="clearfix"></div>

    <h4>Sri E. Aswathama Reddy, Convenor, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and Submitted memorandum on 14th Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/tsrtc_union1.jpg" alt="Sri E. Aswathama Reddy, Convenor, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and Submitted memorandum on 14th Oct 2019, Monday." data-url="img/tsrtc_union1.jpg">
        <img class="fs-gal" src="img/thumb/tsrtc_union2.jpg" alt="Sri E. Aswathama Reddy, Convenor, JAC, TSRTC Union and others met the Hon’ble Governor at Raj Bhavan and Submitted memorandum on 14th Oct 2019, Monday." data-url="img/tsrtc_union2.jpg">

    <div class="clearfix"></div>

    <h4>Hon’ble Governor as Chief Guest inaugurated the “National Level Workshop on Advanced Solar PV Technologies and Vendor(s) Meet – 2019” (jointly organised by MSMEDI, TSREDCO &amp; Andhra Chamber of Commerce) at IICT Conference Hall, Tarnaka, Hyderabad on 14th Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/ast1.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “National Level Workshop on Advanced Solar PV Technologies and Vendor(s) Meet – 2019” (jointly organised by MSMEDI, TSREDCO &amp; Andhra Chamber of Commerce) at IICT Conference Hall, Tarnaka, Hyderabad on 14th Oct 2019, Monday." data-url="img/ast1.jpg">
        <img class="fs-gal" src="img/thumb/ast2.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “National Level Workshop on Advanced Solar PV Technologies and Vendor(s) Meet – 2019” (jointly organised by MSMEDI, TSREDCO &amp; Andhra Chamber of Commerce) at IICT Conference Hall, Tarnaka, Hyderabad on 14th Oct 2019, Monday." data-url="img/ast2.jpg">
        <img class="fs-gal" src="img/thumb/ast3.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “National Level Workshop on Advanced Solar PV Technologies and Vendor(s) Meet – 2019” (jointly organised by MSMEDI, TSREDCO &amp; Andhra Chamber of Commerce) at IICT Conference Hall, Tarnaka, Hyderabad on 14th Oct 2019, Monday." data-url="img/ast3.jpg">
        <img class="fs-gal" src="img/thumb/ast4.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “National Level Workshop on Advanced Solar PV Technologies and Vendor(s) Meet – 2019” (jointly organised by MSMEDI, TSREDCO &amp; Andhra Chamber of Commerce) at IICT Conference Hall, Tarnaka, Hyderabad on 14th Oct 2019, Monday." data-url="img/ast4.jpg">

    <div class="clearfix"></div>

    <h4>Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/bsc1.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc1.jpg">
        <img class="fs-gal" src="img/thumb/bsc2.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc2.jpg">
        <img class="fs-gal" src="img/thumb/bsc3.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc3.jpg">
        <img class="fs-gal" src="img/thumb/bsc4.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc4.jpg">
        <img class="fs-gal" src="img/thumb/bsc5.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc5.jpg">
        <img class="fs-gal" src="img/thumb/bsc6.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc6.jpg">
        <img class="fs-gal" src="img/thumb/bsc7.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc7.jpg">
        <img class="fs-gal" src="img/thumb/bsc8.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc8.jpg">
        <img class="fs-gal" src="img/thumb/bsc9.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc9.jpg">
        <img class="fs-gal" src="img/thumb/bsc10.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc10.jpg">
        <img class="fs-gal" src="img/thumb/bsc11.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc11.jpg">
        <img class="fs-gal" src="img/thumb/bsc12.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc12.jpg">
        <img class="fs-gal" src="img/thumb/bsc13.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc13.jpg">
        <img class="fs-gal" src="img/thumb/bsc14.jpg" alt="Hon’ble Governor as Chief Guest inaugurated the “Full Dome Digital Facility CHANDRAYAAN 2 - THE CONCEPT” at B.M. Birla Science Centre, Hyderabad on 14th Oct 2019, Monday." data-url="img/bsc14.jpg">

    <div class="clearfix"></div>
    
    <h4>Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/RamamohanRao.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/RamamohanRao.jpg">    
        <img class="fs-gal" src="img/thumb/B.V.R.MohanReddy1.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/B.V.R.MohanReddy1.jpg">    
        <img class="fs-gal" src="img/thumb/B.V.R.MohanReddy2.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/B.V.R.MohanReddy2.jpg">    
        <img class="fs-gal" src="img/thumb/HanumanthRao1.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/HanumanthRao1.jpg">    
        <img class="fs-gal" src="img/thumb/HanumanthRao2.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/HanumanthRao2.jpg">    
        <img class="fs-gal" src="img/thumb/HanumanthRao3.jpg" alt="Sri P.S. Ramamohan Rao, former Governor, Tamil Nadu, Sri B.V.R. Mohan Reddy, former Chairman, NASSCOM, Sri V. Hanumanth Rao, former M.P. and others called on the Hon'ble Governor on 11th Oct 2019, Friday at Raj Bhavan." data-url="img/HanumanthRao3.jpg"> 
        
    <div class="clearfix"></div>

    <h4>Hon’ble Governor as Chief Guest attended the Hippocratic Oath and graced distribution of Gold Medals &amp; Merit Certificates function for MBBS Students at ESIC Medical College, Hyderabad on 11th Oct 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/esic1.jpg" alt="Hon’ble Governor as Chief Guest attended the Hippocratic Oath and graced distribution of Gold Medals &amp; Merit Certificates function for MBBS Students at ESIC Medical College, Hyderabad on 11th Oct 2019, Friday." data-url="img/esic1.jpg">
        <img class="fs-gal" src="img/thumb/esic2.jpg" alt="Hon’ble Governor as Chief Guest attended the Hippocratic Oath and graced distribution of Gold Medals &amp; Merit Certificates function for MBBS Students at ESIC Medical College, Hyderabad on 11th Oct 2019, Friday." data-url="img/esic2.jpg">
        
    <div class="clearfix"></div>

    <h4> Sri A. Ravisankar, General Secretary BMS, Telangana and others met the Hon’ble Governor at Rajbhavan and submitted memorandum on 10th Oct 2019, Thursday. </h4>        
        <img class="fs-gal" src="img/thumb/GSBMS.jpg" alt="Sri A. Ravisankar, General Secretary BMS, Telangana and others met the Hon’ble Governor at Rajbhavan and submitted memorandum on 10th Oct 2019, Thursday. " data-url="img/GSBMS.jpg">
        
    <div class="clearfix"></div>

    <h4> Sri P. Ramesh Kumar, JAC-1 Co-convenor, TSRTC and others met the Hon’ble Governor at Raj Bhavan and submitted memorandum on 10th Oct 2019, Thursday.</h4>        
        <img class="fs-gal" src="img/thumb/TSRTCDelegation.jpg" alt="Sri P. Ramesh Kumar, JAC-1 Co-convenor, TSRTC and others met the Hon’ble Governor at Raj Bhavan and submitted memorandum on 10th Oct 2019, Thursday." data-url="img/TSRTCDelegation.jpg">
        
    <div class="clearfix"></div>

    <h4> BJP Delegation led by  Dr. K. Laxman, State President of Bharatiya Janata Party in Telangana called on the Hon'ble Governor on 10th Oct 2019, Thursday at Raj Bhavan.</h4>        
        <img class="fs-gal" src="img/thumb/Dr.Laxman.jpg" alt="BJP Delegation led by  Dr. K. Laxman, State President of Bharatiya Janata Party in Telangana called on the Hon'ble Governor on 10th Oct 2019, Thursday at Raj Bhavan." data-url="img/Dr.Laxman.jpg">
        
    <div class="clearfix"></div>

    <h4> Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday.</h4>        
        <img class="fs-gal" src="img/thumb/Alai_Balai1.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai1.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai2.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai2.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai3.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai3.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai4.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai4.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai5.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai4.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai6.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai6.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai7.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai7.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai8.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai8.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai9.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai9.jpg">
        <img class="fs-gal" src="img/thumb/Alai_Balai10.jpg" alt="Hon’ble Governor attended the Alai-Balai celebrations at Jalavihar, Necklace Road, Hyderabad on 10th Oct 2019, Thursday." data-url="img/Alai_Balai10.jpg">
        
    <div class="clearfix"></div>

    <h4> Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan.</h4>        
        <img class="fs-gal" src="img/thumb/TFA1.jpg" alt="Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan." data-url="img/TFA1.jpg">
        <img class="fs-gal" src="img/thumb/TFA2.jpg" alt="Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan." data-url="img/TFA2.jpg">
        <img class="fs-gal" src="img/thumb/TFA3.jpg" alt="Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan." data-url="img/TFA3.jpg">
        <img class="fs-gal" src="img/thumb/TFA4.jpg" alt="Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan." data-url="img/TFA4.jpg">
        <img class="fs-gal" src="img/thumb/TFA5.jpg" alt="Sri. K. Narasimham Naidu and Members, Turmeric Farmers  Association, Sri. Marri Shashidhar Reddy, Dr. V. R. Sastry, Vice-Chancellor Dr. Babasaheb Ambedkar Technological University, Lonere, Maharashtra and others called on the Hon'ble Governor on 9th October 2019, Wednesday at Raj Bhavan." data-url="img/TFA5.jpg">

    <div class="clearfix"></div>

    <h4>Hon’ble Governor of Himachal Pradesh Sri Bandaru Dattatreya called on the Hon'ble Governor of Telangana at Raj Bhavan on 9th October 2019, Wednesday.</h4>        
        <img class="fs-gal" src="img/thumb/BandaruDattathreya1.jpg" alt="Hon’ble Governor of Himachal Pradesh Sri Bandaru Dattatreya called on the Hon'ble Governor of Telangana at Raj Bhavan on 9th October 2019, Wednesday." data-url="img/BandaruDattathreya1.jpg">
        <img class="fs-gal" src="img/thumb/BandaruDattathreya2.jpg" alt="Hon’ble Governor of Himachal Pradesh Sri Bandaru Dattatreya called on the Hon'ble Governor of Telangana at Raj Bhavan on 9th October 2019, Wednesday." data-url="img/BandaruDattathreya2.jpg">
        
    <div class="clearfix"></div>
    
    <h4> Hon'ble Governor graced 6th Day of Bathukamma Celebrations at Raj Bhavan on 5th Oct 2019, Saturday wherein family members of Raj Bhavan Pariwar participated &amp; rendered some scintillating cultural performances</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma61.jpg" alt="Hon'ble Governor graced 6th Day of Bathukamma Celebrations at Raj Bhavan on 5th Oct 2019, Saturday wherein family members of Raj Bhavan Pariwar participated &amp; rendered some scintillating cultural performances." data-url="img/Bathukamma61.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma62.jpg" alt="Hon'ble Governor graced 6th Day of Bathukamma Celebrations at Raj Bhavan on 5th Oct 2019, Saturday wherein family members of Raj Bhavan Pariwar participated &amp; rendered some scintillating cultural performances." data-url="img/Bathukamma62.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma63.jpg" alt="Hon'ble Governor graced 6th Day of Bathukamma Celebrations at Raj Bhavan on 5th Oct 2019, Saturday wherein family members of Raj Bhavan Pariwar participated &amp; rendered some scintillating cultural performances." data-url="img/Bathukamma63.jpg">
        
    <div class="clearfix"></div>

    <h4> Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday.</h4>        
        <img class="fs-gal" src="img/thumb/CJ1.jpg" alt="Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday." data-url="img/CJ1.jpg">
        <img class="fs-gal" src="img/thumb/CJ2.jpg" alt="Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday." data-url="img/CJ2.jpg">
        <img class="fs-gal" src="img/thumb/Kaminani.jpg" alt="Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday." data-url="img/Kaminani.jpg">
        <img class="fs-gal" src="img/thumb/Dr. B. Babu Rao.jpg" alt="Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday." data-url="img/Dr. B. Babu Rao.jpg">
        <img class="fs-gal" src="img/thumb/SSR_9261.jpg" alt="Sri. Chiranjeevi, renowned film actor and Former Union Minister for State, Sri. Kamineni Srinivas Rao, Former Minister Andhra Pradesh, Dr. B. Babu Rao, President, SC/ST Government Doctors Association and others called on the Hon'ble Governor at Raj Bhavan on 5th Oct 2019, Saturday." data-url="img/SSR_9261.jpg">

    <div class="clearfix"></div>
    
    <h4> Hon'ble Governor graced 5th Day of Bathukamma Celebrations at Raj Bhavan on 4th Oct 2019, Friday.</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma51.jpg" alt="Hon'ble Governor graced 5th Day of Bathukamma Celebrations at Raj Bhavan on 4th Oct 2019, Friday." data-url="img/Bathukamma51.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma52.jpg" alt="Hon'ble Governor graced 5th Day of Bathukamma Celebrations at Raj Bhavan on 4th Oct 2019, Friday." data-url="img/Bathukamma52.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma53.jpg" alt="Hon'ble Governor graced 5th Day of Bathukamma Celebrations at Raj Bhavan on 4th Oct 2019, Friday." data-url="img/Bathukamma53.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma54.jpg" alt="Hon'ble Governor graced 5th Day of Bathukamma Celebrations at Raj Bhavan on 4th Oct 2019, Friday." data-url="img/Bathukamma54.jpg">

    <div class="clearfix"></div>

    <h4> Hon’ble Governor participated in the Sarvojanin Durgotsab – 2019 celebrations at Secunderabad on 4th Oct 2019, Friday.</h4>        
        <img class="fs-gal" src="img/thumb/sarvojanin1.jpg" alt="Hon’ble Governor participated in the Sarvojanin Durgotsab – 2019 celebrations at Secunderabad on 4th Oct 2019, Friday." data-url="img/sarvojanin1.jpg">
        <img class="fs-gal" src="img/thumb/sarvojanin2.jpg" alt="Hon’ble Governor participated in the Sarvojanin Durgotsab – 2019 celebrations at Secunderabad on 4th Oct 2019, Friday." data-url="img/sarvojanin2.jpg">
        

    <div class="clearfix"></div>


    <h4> Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan.</h4>        
        <img class="fs-gal" src="img/thumb/70thTB1.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB1.jpg">
        <img class="fs-gal" src="img/thumb/70thTB2.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB2.jpg">
        <img class="fs-gal" src="img/thumb/70thTB3.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB3.jpg">
        <img class="fs-gal" src="img/thumb/70thTB4.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB4.jpg">
        <img class="fs-gal" src="img/thumb/70thTB5.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB5.jpg">
        <img class="fs-gal" src="img/thumb/70thTB6.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB6.jpg">
        <img class="fs-gal" src="img/thumb/70thTB7.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB7.jpg">
        <img class="fs-gal" src="img/thumb/70thTB8.jpg" alt="Hon'ble Governor attended the inaugural function of the 70th TB Seal Sale Campaign as Chief Guest,organised by the Tuberculosis Associations of Telangana on 4th October 2019, Friday at Raj Bhavan." data-url="img/70thTB8.jpg">

    <div class="clearfix"></div>

    <h4> Hon'ble Governor graced 4th Day of Bathukamma Celebrations at Raj Bhavan on 3rd Oct 19, Thursday. Traditional musicians rendered a scintillating performance &amp; enlightened the festive atmosphere.</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma41.jpg" alt="Hon'ble Governor graced 4th Day of Bathukamma Celebrations at Raj Bhavan on 3rd Oct 19, Thursday. Traditional musicians rendered a scintillating performance &amp; enlightened the festive atmosphere" data-url="img/Bathukamma41.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma42.jpg" alt="Hon'ble Governor graced 4th Day of Bathukamma Celebrations at Raj Bhavan on 3rd Oct 19, Thursday. Traditional musicians rendered a scintillating performance &amp; enlightened the festive atmosphere" data-url="img/Bathukamma42.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma43.jpg" alt="Hon'ble Governor graced 4th Day of Bathukamma Celebrations at Raj Bhavan on 3rd Oct 19, Thursday. Traditional musicians rendered a scintillating performance &amp; enlightened the festive atmosphere" data-url="img/Bathukamma43.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma44.jpg" alt="Hon'ble Governor graced 4th Day of Bathukamma Celebrations at Raj Bhavan on 3rd Oct 19, Thursday. Traditional musicians rendered a scintillating performance &amp; enlightened the festive atmosphere" data-url="img/Bathukamma44.jpg">

    <div class="clearfix"></div>

    <h4> The Governor of Telangana, Dr. Tamilisai Soundararajan, called on the Vice President, Shri M. Venkaiah Naidu in Hyderabad on 3rd Oct 2019, Thursday.</h4>        
        <img class="fs-gal" src="img/thumb/VPI3.jpg" alt=" The Governor of Telangana, Dr. Tamilisai Soundararajan, called on the Vice President, Shri M. Venkaiah Naidu in Hyderabad on 3rd Oct 2019, Thursday." data-url="img/VPI3.jpg">
        
    <div class="clearfix"></div>

    <h4>Hon'ble Governor chaired the Conference of Vice-Chancellor(s) of Universities in Telangana State on 3rd October, 2019 at B.R. Ambedkar University, Hyderabad.</h4>        
        <img class="fs-gal" src="img/thumb/VCs1.jpg" alt="Hon'ble Governor chaired the Conference of Vice-Chancellor(s) of Universities in Telangana State on 3rd October, 2019 at B.R. Ambedkar University, Hyderabad." data-url="img/VCs1.jpg">
        <img class="fs-gal" src="img/thumb/VCs2.jpg" alt="Hon'ble Governor chaired the Conference of Vice-Chancellor(s) of Universities in Telangana State on 3rd October, 2019 at B.R. Ambedkar University, Hyderabad." data-url="img/VCs2.jpg">
        <img class="fs-gal" src="img/thumb/VCs3.jpg" alt="Hon'ble Governor chaired the Conference of Vice-Chancellor(s) of Universities in Telangana State on 3rd October, 2019 at B.R. Ambedkar University, Hyderabad." data-url="img/VCs3.jpg">
        <img class="fs-gal" src="img/thumb/VCs4.jpg" alt="Hon'ble Governor chaired the Conference of Vice-Chancellor(s) of Universities in Telangana State on 3rd October, 2019 at B.R. Ambedkar University, Hyderabad." data-url="img/VCs4.jpg">
        
    <div class="clearfix"></div>

    <h4>Hon'ble Governor graced 3rd day of Bathukamma festival on 2nd Oct 2019, Wednesday, being celebrated at Raj Bhavan Hyderabad. On this special occasion Perini Shivathandavam was performed by young artists.</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma31.jpg" alt="Hon'ble Governor graced 3rd day of Bathukamma festival on 2nd Oct 2019, Wednesday, being celebrated at Raj Bhavan Hyderabad. On this special occasion Perini Shivathandavam was performed by young artists." data-url="img/Bathukamma31.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma32.jpg" alt="Hon'ble Governor graced 3rd day of Bathukamma festival on 2nd Oct 2019, Wednesday, being celebrated at Raj Bhavan Hyderabad. On this special occasion Perini Shivathandavam was performed by young artists." data-url="img/Bathukamma32.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma33.jpg" alt="Hon'ble Governor graced 3rd day of Bathukamma festival on 2nd Oct 2019, Wednesday, being celebrated at Raj Bhavan Hyderabad. On this special occasion Perini Shivathandavam was performed by young artists." data-url="img/Bathukamma33.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma34.jpg" alt="Hon'ble Governor graced 3rd day of Bathukamma festival on 2nd Oct 2019, Wednesday, being celebrated at Raj Bhavan Hyderabad. On this special occasion Perini Shivathandavam was performed by young artists." data-url="img/Bathukamma34.jpg">
        
    <div class="clearfix"></div>

    <h4>Hon’ble Governor participated in the Durga Puja celebrations at Raj Bhavan staff quarters on 2nd Oct 2019, Wednesday.</h4>        
        <img class="fs-gal" src="img/thumb/DP1.jpg" alt="Hon’ble Governor participated in the Durga Puja celebrations at Raj Bhavan staff quarters on 2nd Oct 2019, Wednesday." data-url="img/DP1.jpg">
        <img class="fs-gal" src="img/thumb/DP2.jpg" alt="Hon’ble Governor participated in the Durga Puja celebrations at Raj Bhavan staff quarters on 2nd Oct 2019, Wednesday." data-url="img/DP2.jpg">
        <img class="fs-gal" src="img/thumb/DP3.jpg" alt="Hon’ble Governor participated in the Durga Puja celebrations at Raj Bhavan staff quarters on 2nd Oct 2019, Wednesday." data-url="img/DP3.jpg">  

     <h4>Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday.</h4>        
        <img class="fs-gal" src="img/thumb/SD1.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD1.jpg">
        <img class="fs-gal" src="img/thumb/SD2.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD2.jpg">
        <img class="fs-gal" src="img/thumb/SD3.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD3.jpg">
        <img class="fs-gal" src="img/thumb/SD4.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD4.jpg">
        <img class="fs-gal" src="img/thumb/SD5.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD5.jpg">
        <img class="fs-gal" src="img/thumb/SD6.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD6.jpg">
        <img class="fs-gal" src="img/thumb/SD7.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD7.jpg">
        <img class="fs-gal" src="img/thumb/SD8.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD8.jpg">
        <img class="fs-gal" src="img/thumb/SD9.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD9.jpg">
        <img class="fs-gal" src="img/thumb/SD10.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD10.jpg">
        <img class="fs-gal" src="img/thumb/SD11.jpg" alt="Hon’ble Governor distributed Sarees to woman employees &amp; spouses of Raj Bhavan staff on the occasion of ongoing celebrations of Bathukamma festivities at Rajbhavan on 2nd Oct 2019, Wednesday." data-url="img/SD11.jpg">
        
    <div class="clearfix"></div> 

    <h4>Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday.</h4>        
        <img class="fs-gal" src="img/thumb/GaJa1.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa1.jpg">
        <img class="fs-gal" src="img/thumb/GaJa2.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa2.jpg">
        <img class="fs-gal" src="img/thumb/GaJa3.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa3.jpg">
        <img class="fs-gal" src="img/thumb/GaJa4.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa4.jpg">
        <img class="fs-gal" src="img/thumb/GaJa5.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa5.jpg">
        <img class="fs-gal" src="img/thumb/GaJa6.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa6.jpg">
        <img class="fs-gal" src="img/thumb/GaJa7.jpg" alt="Hon’ble Governor paid rich tributes to Mahatma Gandhi at Bapughat, Hyderabad on the occasion of his 150th birth anniversary on 2nd Oct 2019, Wednesday." data-url="img/GaJa7.jpg">
        
    <div class="clearfix"></div> 

    <h4>Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura.</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma21.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma21.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma22.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma22.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma23.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma23.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma24.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma24.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma25.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma25.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma26.jpg" alt="Second day of Bathukamma Festival celebrated at Raj Bhavan on 1st Oct 2019, Tuesday. Women journalists and lawyers participated along with the Hon'ble Governor Dr. Tamilisai Soundararajan and together celebrated the floral &amp; divine aura." data-url="img/Bathukamma26.jpg">
        
    <div class="clearfix"></div> 

    <h4>Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event " Akshara Bathukamma" was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society.</h4>        
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu1.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu1.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu2.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu2.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu3.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu3.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu4.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu4.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu5.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu5.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu6.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu6.jpg">
        <img class="fs-gal" src="img/thumb/Bathukamma vedukalu7.jpg" alt="Hon'ble Governor inaugurated  Bathukamma festival celebrations at Raj Bhavan, Hyderabad on 30th Sep 2019, Monday.The inaugural event 'Akshara Bathukamma' was celebrated at Raj Bhavan with great fervour along-with participation of women members from all walks of society." data-url="img/Bathukamma vedukalu7.jpg">

    <div class="clearfix"></div> 

    <h4>Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday.</h4>        
        <img class="fs-gal" src="img/thumb/CPWA2.jpg" alt="Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday." data-url="img/CPWA2.jpg">
        <img class="fs-gal" src="img/thumb/CPWA3.jpg" alt="Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday." data-url="img/CPWA3.jpg">
        <img class="fs-gal" src="img/thumb/CPWA4.jpg" alt="Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday." data-url="img/CPWA4.jpg">
        <img class="fs-gal" src="img/thumb/CPWA5.jpg" alt="Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday." data-url="img/CPWA5.jpg">
        <img class="fs-gal" src="img/thumb/CPWA6.jpg" alt="Hon'ble Governor was felicitated by members of Chennai Public Welfare Association represented by various Party leaders, Educationists and Eminent Personalities at Krishna Gana Sabha, Chennai, on 29th Sep 2019,Sunday." data-url="img/CPWA6.jpg">

    <div class="clearfix"></div> 

    <h4>Hon'ble Governor addressed students at Adhithanar College, Thiruchendur,Tamilnadu and motivated them to become achievers of future India overcoming day-to-day hurdles, at a event on 29th Sep 2019, Sunday.</h4>
        <img class="fs-gal" src="img/thumb/AdhCo1.jpg" alt="Hon'ble Governor addressed students at Adhithanar College, Thiruchendur,Tamilnadu and motivated them to become achievers of future India overcoming day-to-day hurdles, at a event on 29th Sep 2019, Sunday." data-url="img/AdhCo1.jpg">
        <img class="fs-gal" src="img/thumb/AdhCo2.jpg" alt="Hon'ble Governor addressed students at Adhithanar College, Thiruchendur,Tamilnadu and motivated them to become achievers of future India overcoming day-to-day hurdles, at a event on 29th Sep 2019, Sunday." data-url="img/AdhCo2.jpg">
        <img class="fs-gal" src="img/thumb/AdhCo3.jpg" alt="Hon'ble Governor addressed students at Adhithanar College, Thiruchendur,Tamilnadu and motivated them to become achievers of future India overcoming day-to-day hurdles, at a event on 29th Sep 2019, Sunday." data-url="img/AdhCo3.jpg">
        
    <div class="clearfix"></div> 

    <h4>Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/SaIn1.jpg" alt="Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday." data-url="img/SaIn1.jpg">
        <img class="fs-gal" src="img/thumb/SaIn2.jpg" alt="Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday." data-url="img/SaIn2.jpg">
        <img class="fs-gal" src="img/thumb/SaIn3.jpg" alt="Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday." data-url="img/SaIn3.jpg">
        <img class="fs-gal" src="img/thumb/SaIn4.jpg" alt="Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday." data-url="img/SaIn4.jpg">
        <img class="fs-gal" src="img/thumb/SaIn5.jpg" alt="Hon'ble Governor inaugurated the Thirteen storied Health Science Block and addressed the students of Saveetha Institute of Medical and Technical Sciences, Chennai on 27th Sep 2019, Friday." data-url="img/SaIn5.jpg">
        
    <div class="clearfix"></div> 

    <h4>On the occasion of "World Tourism Day" Hon'ble Governor conveyed warm wishes to everyone during a Event in Chennai International Airport organised by AAI with team of artists on 27th Sep 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/WTD1.jpg" alt="On the occasion of 'World Tourism Day' Hon'ble Governor conveyed warm wishes to everyone during a Event in Chennai International Airport organised by AAI with team of artists on 27th Sep 2019, Friday." data-url="img/WTD1.jpg">
        
    <div class="clearfix"></div> 

    <h4>Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/GBC1.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC1.jpg">
        <img class="fs-gal" src="img/thumb/GBC2.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC2.jpg">
        <img class="fs-gal" src="img/thumb/GBC3.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC3.jpg">
        <img class="fs-gal" src="img/thumb/GBC4.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC4.jpg">
        <img class="fs-gal" src="img/thumb/GBC5.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC5.jpg">
        <img class="fs-gal" src="img/thumb/GBC6.jpg" alt="Hon'ble Governor attended 17th Green Building Congress 2019 as Chief Guest at HICC, Hyderabad on 26th Sep 2019, Thursday." data-url="img/GBC6.jpg">

    <div class="clearfix"></div> 

    <h4>Dr. Tamilisai Soundararajan, Governor of Telangana, participated in seminar on "Zero Budget Prakrutik Kheti" in Kurukshetra, Haryana along with the Governors of other States on 25th September 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/zbs.jpg" alt="Dr. Tamilisai Soundararajan, Governor of Telangana, participated in seminar on &quot;Zero Budget Prakrutik Kheti&quot; in Kurukshetra, Haryana along with the Governors of other States on 25th September 2019, Wednesday." data-url="img/zbs.jpg">
       
    <div class="clearfix"></div> 

    <h4>Governor Telangana Dr. Tamilisai Soundararajan met Madhya Pradesh Governor Shri Lalji Tandon &amp; Haryana Governor Shri Satyadev Narayan Arya at Haryana Raj Bhavan on 24th Sep 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/lalji_satyadev1.jpg" alt="Governor Telangana Dr. Tamilisai Soundararajan met Madhya Pradesh Governor Shri Lalji Tandon &amp; Haryana Governor Shri Satyadev Narayan Arya at Haryana Raj Bhavan on 24th Sep 2019, Tuesday." data-url="img/lalji_satyadev1.jpg">
        <img class="fs-gal" src="img/thumb/lalji_satyadev2.jpg" alt="Governor Telangana Dr. Tamilisai Soundararajan met Madhya Pradesh Governor Shri Lalji Tandon &amp; Haryana Governor Shri Satyadev Narayan Arya at Haryana Raj Bhavan on 24th Sep 2019, Tuesday." data-url="img/lalji_satyadev2.jpg">

    <div class="clearfix"></div> 
    <h4>Dr. Tamilisai Soundararajan, Governor of Telangana, called on Hon'ble President Shri Ramnath Kovind at Rashtrapati Bhavan on 23rd September 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/President.jpg" alt="Dr. Tamilisai Soundararajan, Governor of Telangana, called on Hon'ble President Shri Ramnath Kovind at Rashtrapati Bhavan on 23rd September 2019, Monday." data-url="img/President.jpg">

    <div class="clearfix"></div>  
    <h4>Hon'ble Governor participated as Chief Guest at Blood Donation Camp organised by Telangana State Red Cross Society at Sri Gokaraju Rangaraju Institute of Engineering &amp; Technology at Hyderabad on 21st Sep 2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/bdc1.jpg" alt="Hon'ble Governor participated as Chief Guest at Blood Donation Camp organised by Telangana State Red Cross Society at Sri Gokaraju Rangaraju Institute of Engineering &amp; Technology at Hyderabad on 21st Sep 2019, Saturday." data-url="img/bdc1.jpg">
        <img class="fs-gal" src="img/thumb/bdc2.jpg" alt="Hon'ble Governor participated as Chief Guest at Blood Donation Camp organised by Telangana State Red Cross Society at Sri Gokaraju Rangaraju Institute of Engineering &amp; Technology at Hyderabad on 21st Sep 2019, Saturday." data-url="img/bdc2.jpg">
        <img class="fs-gal" src="img/thumb/bdc3.jpg" alt="Hon'ble Governor participated as Chief Guest at Blood Donation Camp organised by Telangana State Red Cross Society at Sri Gokaraju Rangaraju Institute of Engineering &amp; Technology at Hyderabad on 21st Sep 2019, Saturday." data-url="img/bdc3.jpg">

    <div class="clearfix"></div>  
    <h4>Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on 20th Sep 2019.</h4>
        <img class="fs-gal" src="img/thumb/hm1.jpg" alt="Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on 20th Sep 2019." data-url="img/hm1.jpg">
        <img class="fs-gal" src="img/thumb/hm2.jpg" alt="Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on 20th Sep 2019." data-url="img/hm2.jpg">
        <img class="fs-gal" src="img/thumb/hm3.jpg" alt="Governor received the Hon'ble Vice President of India at Begumpet airport, Hyderabad on 20th Sep 2019." data-url="img/hm3.jpg">

    <div class="clearfix"></div>  
    <h4>Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019.</h4>
        <img class="fs-gal" src="img/thumb/B.S.Ramulu1.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/B.S.Ramulu1.jpg">
        <img class="fs-gal" src="img/thumb/B.S.Ramulu2.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/B.S.Ramulu2.jpg">
        <img class="fs-gal" src="img/thumb/K.Narayana1.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/K.Narayana1.jpg">
        <img class="fs-gal" src="img/thumb/K.Narayana2.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/K.Narayana2.jpg">
        <img class="fs-gal" src="img/thumb/ErrollaSrinivas1.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/ErrollaSrinivas1.jpg">
        <img class="fs-gal" src="img/thumb/ErrollaSrinivas2.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/ErrollaSrinivas2.jpg">
        <img class="fs-gal" src="img/thumb/S.Chellappa,IAS-(Retd)1.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs., Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/S.Chellappa,IAS(Retd.)1.jpg">
        <img class="fs-gal" src="img/thumb/S.Chellappa,IAS-(Retd)2.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Commission For Backward Class, Delegation led by Dr. K. Narayana, National Secretary, Communist Party of India, Dr. Errolla Srinivas, Chairman, Telangana State Commission for SCs and STs Dr. S. Chellappa, IAS (Retd.), Former Additional Chief Secretary to Govt., and Politburo Member TRS Party have called on the Hon'ble Governor on 20th Sep 2019." data-url="img/S.Chellappa,IAS(Retd.)2.jpg">

    <div class="clearfix"></div> 
    <h4>Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019.</h4>
        <img class="fs-gal" src="img/thumb/Ch.Vidyasagar_Rao1.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/Ch.Vidyasagar_Rao1.jpg">
        <img class="fs-gal" src="img/thumb/Ch.Vidyasagar_Rao2.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/Ch.Vidyasagar_Rao2.jpg">
        <img class="fs-gal" src="img/thumb/kugener3.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/kugener3.jpg">
        <img class="fs-gal" src="img/thumb/kugener1.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/kugener1.jpg">
        <img class="fs-gal" src="img/thumb/kugener2.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/kugener2.jpg">
        <img class="fs-gal" src="img/thumb/D.Srinivas1.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/D.Srinivas1.jpg">
        <img class="fs-gal" src="img/thumb/D.Srinivas2.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/D.Srinivas2.jpg">
        <img class="fs-gal" src="img/thumb/D.Srinivas3.jpg" alt="Shri Ch. Vidyasagar Rao, Former Governor, Maharashtra,  H.E. Jean Claude Kugener, Ambassador of The Grand Duchy of Luxembourg, Shri D. Srinivas, Member of Parliament and others have called on the Hon'ble Governor at Raj Bhavan on 19th September 2019." data-url="img/D.Srinivas3.jpg">
        

    <div class="clearfix"></div> 
    <h4>Hon'ble Governor graced the “Sustainable Rural Development Initiative through Panchayats” program, organized by National Institute of Rural Development &amp; Panchayat Raj (NIRDPR) as Chief guest on 19th Sep 2019.</h4>
        <img class="fs-gal" src="img/thumb/nird3.jpg" alt="Hon'ble Governor graced the “Sustainable Rural Development Initiative through Panchayats” program, organized by National Institute of Rural Development &amp; Panchayat Raj (NIRDPR) as Chief guest on 19th Sep 2019." data-url="img/nird3.jpg">
        <img class="fs-gal" src="img/thumb/nird1.jpg" alt="Hon'ble Governor graced the “Sustainable Rural Development Initiative through Panchayats” program, organized by National Institute of Rural Development &amp; Panchayat Raj (NIRDPR) as Chief guest on 19th Sep 2019." data-url="img/nird1.jpg">
        <img class="fs-gal" src="img/thumb/nird2.jpg" alt="Hon'ble Governor graced the “Sustainable Rural Development Initiative through Panchayats” program, organized by National Institute of Rural Development &amp; Panchayat Raj (NIRDPR) as Chief guest on 19th Sep 2019." data-url="img/nird2.jpg">

    <div class="clearfix"></div>     
    <h4>Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019.</h4>
        <img class="fs-gal" src="img/thumb/yoga36.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga36.jpg">
        <img class="fs-gal" src="img/thumb/yoga37.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga37.jpg">
        <img class="fs-gal" src="img/thumb/yoga38.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga38.jpg">
        <img class="fs-gal sm" src="img/thumb/yoga39.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga39.jpg">
        <img class="fs-gal" src="img/thumb/yoga40.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga40.jpg">
        <img class="fs-gal" src="img/thumb/yoga41.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga41.jpg">
        <img class="fs-gal" src="img/thumb/yoga42.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga42.jpg">
        <img class="fs-gal" src="img/thumb/yoga43.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga43.jpg">
        <img class="fs-gal" src="img/thumb/yoga44.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga44.jpg">
        <img class="fs-gal sm" src="img/thumb/yoga45.jpg" alt="Hon'ble Governor inaugurated the morning Yoga classes at Samskruthi - community hall at Raj Bhavan premises for the staff and their kin on 19th Sep 2019." data-url="img/yoga45.jpg">

    <div class="clearfix"></div>     
    <h4>Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7438.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7438.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7449.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7449.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7462.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7462.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7496.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7496.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7501.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7501.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7510.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7510.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7586.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7586.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7594a.png" alt="Hon’ble Governor has attended the 37th Conference of the International Society of Blood Purification &amp; 22nd Annual Conference of Peritoneal Dialysis Society of India at HICC Hyderabad on 18th Sep 2019." data-url="img/KLN_7594a.jpg">

    <div class="clearfix"></div>     
    <h4>The Governor of Telangana, Dr. Tamilisai Soundararajan, called on the Vice President, Shri M. Venkaiah Naidu and Smt. Usha Naidu in New Delhi on 16th September 2019.</h4>
        <img class="fs-gal" src="img/thumb/vpi1.png" alt="The Governor of Telangana, Dr. Tamilisai Soundararajan, called on the Vice President, Shri M. Venkaiah Naidu and Smt. Usha Naidu in New Delhi on 16th September 2019." data-url="img/vpi1.jpg">
        <img class="fs-gal" src="img/thumb/vpi2.png" alt="The Governor of Telangana, Dr. Tamilisai Soundararajan, called on the Vice President, Shri M. Venkaiah Naidu and Smt. Usha Naidu in New Delhi on 16th September 2019." data-url="img/vpi2.jpg">


    <div class="clearfix"></div>     
    <h4>Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad.</h4>
        <img class="fs-gal" src="img/thumb/moc_1.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_1.png">
        <img class="fs-gal" src="img/thumb/moc_2.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_2.png">
        <img class="fs-gal" src="img/thumb/moc_3.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_3.png">
        <img class="fs-gal" src="img/thumb/moc_4.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_4.png">
        <img class="fs-gal" src="img/thumb/moc_5.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_5.png">
        <img class="fs-gal" src="img/thumb/moc_6.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_6.png">
        <img class="fs-gal" src="img/thumb/moc_7.png" alt="Dr. (Smt.) Tamilisai Soundararajan, Hon'ble Governor of Telangana administered Oath of Office to the newly inducted Cabinet Ministers of Government of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/moc_7.png">

    <div class="clearfix"></div>     
    <h4>Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad.</h4>
        <img class="fs-gal" src="img/thumb/sc_1.png" alt="Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/sc_1.png">
        <img class="fs-gal" src="img/thumb/sc_2.png" alt="Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/sc_2.png">
        <img class="fs-gal" src="img/thumb/sc_3.png" alt="Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/sc_3.png">
        <img class="fs-gal" src="img/thumb/sc_4.png" alt="Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/sc_4.png">
        <img class="fs-gal" src="img/thumb/sc_5.png" alt="Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th Sep 2019, Sunday at Raj Bhavan, Hyderabad." data-url="img/sc_5.png">

    <div class="clearfix"></div>     
    <h4>Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/fw1.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw1.jpg">
        <img class="fs-gal" src="img/thumb/fw2.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw2.jpg">
        <img class="fs-gal" src="img/thumb/fw3.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw3.jpg">
        <img class="fs-gal" src="img/thumb/fw4.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw4.jpg">
        <img class="fs-gal" src="img/thumb/fw5.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw5.jpg">
        <img class="fs-gal" src="img/thumb/fw6.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw6.jpg">
        <img class="fs-gal" src="img/thumb/fw7.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw7.jpg">
        <img class="fs-gal" src="img/thumb/fw8.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw8.jpg">
        <img class="fs-gal" src="img/thumb/fw9.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw9.jpg">
        <img class="fs-gal" src="img/thumb/fw10.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw10.jpg">
        <img class="fs-gal" src="img/thumb/fw11.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw11.jpg">
        <img class="fs-gal" src="img/thumb/fw12.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw12.jpg">
        <img class="fs-gal" src="img/thumb/fw13.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw13.jpg">
        <img class="fs-gal" src="img/thumb/fw14.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw14.jpg">
        <img class="fs-gal" src="img/thumb/fw15.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw15.jpg">
        <img class="fs-gal" src="img/thumb/fw16.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw16.jpg">
        <img class="fs-gal" src="img/thumb/fw17.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw17.jpg">
        <img class="fs-gal" src="img/thumb/fw18.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw18.jpg">
        <img class="fs-gal" src="img/thumb/fw19.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw19.jpg">
        <img class="fs-gal" src="img/thumb/fw20.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw20.jpg">
        <img class="fs-gal" src="img/thumb/fw21.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw21.jpg">
        <img class="fs-gal" src="img/thumb/fw22.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw22.jpg">
        <img class="fs-gal" src="img/thumb/fw23.jpg" alt="Officers, Staff and the kin of Raj Bhavan Pariwar accorded a grand farewell to the outgoing Governor Shri E.S.L Narasimhan &amp; Smt. Vimala Narasimhan at Samskruti, Raj Bhavan Community Hall on 6th Sep 2019, Friday." data-url="img/fw23.jpg">


    <h4>Hon'ble Governor felicitated BWF 2019 Bronze Medalist &amp; Arjuna awardee B. Sai Praneeth at a solemn function held at Raj Bhavan on 30th Aug 2019, Friday</h4>
        <img class="fs-gal" src="img/thumb/KLN_3364.jpg" alt="Hon'ble Governor felicitated BWF 2019 Bronze Medalist &amp; Arjuna awardee B. Sai Praneeth at a solemn function held at Raj Bhavan on 30th Aug 2019, Friday" data-url="img/KLN_3364.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3463.jpg" alt="Hon'ble Governor felicitated BWF 2019 Bronze Medalist &amp; Arjuna awardee B. Sai Praneeth at a solemn function held at Raj Bhavan on 30th Aug 2019, Friday" data-url="img/KLN_3463.jpg">    

    <div class="clearfix"></div>     
    <h4>Dr. Nand Kumar Sai, Chairman, National Commission for Scheduled Tribes, and other members called on the Hon’ble Governor at Rajbhavan on 29th Aug 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3182.jpg" alt="Dr. Nand Kumar Sai, Chairman, National Commission for Scheduled Tribes, and other members called on the Hon’ble Governor at Rajbhavan on 29th Aug 2019 (Thursday)." data-url="img/KLN_3182.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3199.jpg" alt="Dr. Nand Kumar Sai, Chairman, National Commission for Scheduled Tribes, and other members called on the Hon’ble Governor at Rajbhavan on 29th Aug 2019 (Thursday)." data-url="img/KLN_3199.jpg">    

    <div class="clearfix"></div>     
    <h4>Governor of Telangana Sri E.S.L. Narasimhan accompanied by Lady Governor Smt. Vimala Narasimhan called on the AP Governor Sri Biswa Bhusan Harichandan and Lady Governor Smt. Suprava Harichandan at Sunshine Hospital in Secunderabad  on 29th Aug 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3008.jpg" alt="Governor of Telangana Sri E.S.L. Narasimhan accompanied by Lady Governor Smt. Vimala Narasimhan called on the AP Governor Sri Biswa Bhusan Harichandan and Lady Governor Smt. Suprava Harichandan at Sunshine Hospital in Secunderabad  on 29th Aug 2019 (Thursday)." data-url="img/KLN_3008.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3023.jpg" alt="Governor of Telangana Sri E.S.L. Narasimhan accompanied by Lady Governor Smt. Vimala Narasimhan called on the AP Governor Sri Biswa Bhusan Harichandan and Lady Governor Smt. Suprava Harichandan at Sunshine Hospital in Secunderabad  on 29th Aug 2019 (Thursday)." data-url="img/KLN_3023.jpg">

    <h4>Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday. Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2019.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2019.jpg">
        <img class="fs-gal" src="img/thumb/KLN_234a.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_234a.jpg">
        <img class="fs-gal" src="img/thumb/KLN_202.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_202.jpg">
        <img class="fs-gal" src="img/thumb/KLN_213a.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_213a.jpg">
        <img class="fs-gal" src="img/thumb/KLN_234b.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_234b.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1983.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_1983.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1995.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_1995.jpg">        
        <img class="fs-gal" src="img/thumb/KLN_2149.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2149.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2188.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2188.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2158.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2158.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2173.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2173.jpg">
        <img class="fs-gal" src="img/thumb/KLN_237.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_237.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2257.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2257.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2286.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2286.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2333.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2333.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2334.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2334.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2300.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_2300.jpg">
        <img class="fs-gal" src="img/thumb/KLN_231a.jpg" alt="Hon'ble Governor felicitated World Badminton Champion and Gold Medalist PV Sindhu and World Para-Badminton Champion and Gold Medalist Manasi Joshi at Raj Bhavan on 28th August 2019,Wednesday .Along with them, Chief National Coach P. Gopichand and other coaches were also felicitated at a function held at the Raj Bhavan." data-url="img/KLN_231a.jpg">

    <div class="clearfix"></div>     
    <h4>Hon'ble Governor graced "At Home" event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9160.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9160.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9175.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9175.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9197.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9197.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9453.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9453.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9642.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9642.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9653.jpg" alt="Hon'ble Governor graced 'At Home' event at Raj Bhavan on the occasion of 73rd Independence Day on 15th Aug 2019, Thursday." data-url="img/KLN_9653.jpg">

    <div class="clearfix"></div>     
    <h4>Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8402.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8402.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8415.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8415.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8434.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8434.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8476.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8476.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8499.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8499.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8592.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8592.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8759.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8759.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8779.jpg" alt="Hon'ble Governor celebrated Rakshabandhan Festival at Raj Bhavan on 15th Aug 2019,Thursday." data-url="img/KLN_8779.jpg">

    <div class="clearfix"></div> 

    <h4>Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday.<br>Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel.</h4>
        <img class="fs-gal" src="img/thumb/hmr1.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr1.jpg">
        <img class="fs-gal" src="img/thumb/hmr2.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr2.jpg">
        <img class="fs-gal" src="img/thumb/hmr3.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr3.jpg">
        <img class="fs-gal" src="img/thumb/hmr4.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr4.jpg">
        <img class="fs-gal" src="img/thumb/hmr5.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr5.jpg">
        <img class="fs-gal" src="img/thumb/hmr6.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr6.jpg">
        <img class="fs-gal" src="img/thumb/hmr7.jpg" alt="Hon'ble Governor along with his wife Smt. Vimala Narasimhan and grand daughter took a Metro ride from Ameerpet  junction to Nagole Metro Station as a common citizen and visited Uppal Metro Depot, on 6th Aug 2019, Tuesday. Managing Director, HMRL Sri NVS Reddy accompanied the Governor in the Metro travel." data-url="img/hmr7.jpg">

    <div class="clearfix"></div>    
    <h4>Hon'ble Governor graced the valedictory function and addressed Group I Officers at Dr. MCRHRD Institute at Hyderabad on 2nd August 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/group1.jpg" alt="Hon'ble Governor graced the valedictory function and addressed Group I Officers at Dr. MCRHRD Institute at Hyderabad on 2nd August 2019, Friday." data-url="img/group1.jpg">
        <img class="fs-gal" src="img/thumb/group2.jpg" alt="Hon'ble Governor graced the valedictory function and addressed Group I Officers at Dr. MCRHRD Institute at Hyderabad on 2nd August 2019, Friday." data-url="img/group2.jpg">
        <img class="fs-gal" src="img/thumb/group3.jpg" alt="Hon'ble Governor graced the valedictory function and addressed Group I Officers at Dr. MCRHRD Institute at Hyderabad on 2nd August 2019, Friday." data-url="img/group3.jpg">

    <div class="clearfix"></div>    
    <h4>Shri  Y.S. Jagan Mohan Reddy,  Hon'ble  Chief Minister of Andhra Pradesh called on the Hon’ble Governor Shri E.S.L Narasimhan at Raj Bhavan on 1st  August  2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4854.jpg" alt="Shri  Y.S. Jagan Mohan Reddy,  Hon'ble  Chief Minister of Andhra Pradesh called on the Hon’ble Governor Shri E.S.L Narasimhan at Raj Bhavan on 1st  August  2019, Thursday. " data-url="img/KLN_4854.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4861.jpg" alt="Shri  Y.S. Jagan Mohan Reddy,  Hon'ble  Chief Minister of Andhra Pradesh called on the Hon’ble Governor Shri E.S.L Narasimhan at Raj Bhavan on 1st  August  2019, Thursday. " data-url="img/KLN_4861.jpg">

    <div class="clearfix"></div>





    <h4>Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday, at Vijayawada, Andhra Pradesh.</h4>
        <img class="fs-gal" src="img/thumb/farewell1.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell1.jpg">
        <img class="fs-gal" src="img/thumb/farewell2.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell2.jpg">
        <img class="fs-gal" src="img/thumb/farewell3.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell3.jpg">
        <img class="fs-gal" src="img/thumb/farewell4.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell4.jpg">
        <img class="fs-gal" src="img/thumb/farewell5.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell5.jpg">
        <img class="fs-gal" src="img/thumb/farewell6.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell6.jpg">
        <img class="fs-gal" src="img/thumb/farewell7.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell7.jpg">
        <img class="fs-gal" src="img/thumb/farewell8.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell8.jpg">
        <img class="fs-gal" src="img/thumb/farewell9.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell9.jpg">
        <img class="fs-gal" src="img/thumb/farewell10.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell10.jpg">
        <img class="fs-gal" src="img/thumb/farewell11.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell11.jpg">
        <img class="fs-gal" src="img/thumb/farewell12.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell12.jpg">
        <img class="fs-gal" src="img/thumb/farewell13.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell13.jpg">
        <img class="fs-gal" src="img/thumb/farewell14.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell14.jpg">
        <img class="fs-gal" src="img/thumb/farewell15.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell15.jpg">
        <img class="fs-gal" src="img/thumb/farewell16.jpg" alt="Farewell accorded to Shri E.S.L. Narasimhan (last Governor of unified Andhra Pradesh and first Governor of new State of Andhra Pradesh, post bifurcation) by Hon'ble Chief Minister of Andhra Pradesh, Shri Y.S. Jagan Mohan Reddy and his Government on 22nd July 2019, Monday." data-url="img/farewell16.jpg">

    <div class="clearfix"></div>
    <h4>Shri G. Kishan Reddy, Union Minister of State for Home Affairs, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th July 2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1.jpg" alt="Shri G. Kishan Reddy, Union Minister of State for Home Affairs, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th July 2019, Saturday." data-url="img/KLN_1.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2.jpg" alt="Shri G. Kishan Reddy, Union Minister of State for Home Affairs, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th July 2019, Saturday." data-url="img/KLN_2.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3.jpg" alt="Shri G. Kishan Reddy, Union Minister of State for Home Affairs, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th July 2019, Saturday." data-url="img/KLN_3.jpg">

    <div class="clearfix"></div>
    <h4>Officers and staff members of Raj Bhavan Hyderabad departing for the new Raj Bhavan at Vijayawada were given farewell by Hon'ble Governor Sri E.S.L. Narasimhan on 19th July 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2393.jpg" alt="Officers and staff members of Raj Bhavan Hyderabad departing for the new Raj Bhavan at Vijayawada were given farewell by Hon'ble Governor Sri E.S.L. Narasimhan on 19th July 2019, Friday." data-url="img/KLN_2393.jpg">

    <div class="clearfix"></div>
    <h4>Mr. Francois Gautier, Consul General, France in Bangalore met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1972.jpg" alt="Mr. Francois Gautier, Consul General, France in Bangalore met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday." data-url="img/KLN_1972.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1981.jpg" alt="Mr. Francois Gautier, Consul General, France in Bangalore met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday." data-url="img/KLN_1981.jpg">

    <div class="clearfix"></div>
    <h4>Shri Rishi Kumar Shukla, Director, CBI met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1909.jpg" alt="Shri Rishi Kumar Shukla, Director, CBI met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday." data-url="img/KLN_1909.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1920.jpg" alt="Shri Rishi Kumar Shukla, Director, CBI met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 18-07-2019, Thursday." data-url="img/KLN_1920.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1023.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1023.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0978.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_0978.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1185.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1185.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1410.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1410.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1405.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1405.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1593.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1593.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1414.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1414.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1585.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1585.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1453.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan participated in the Lord Jagannath Rath Yatra held at Hyderabad on 04-07-2019, Thursday." data-url="img/KLN_1453.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0761.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0761.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0518.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0518.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_0524.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0524.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0555.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0555.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0563.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0563.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0739.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0739.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0685.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0685.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0703.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the 34th Hyderabad Sailing Week held at Hussainsagar, Hyderabad on 02-07-2019, Tuesday." data-url="img/KLN_0703.jpg">

    <div class="clearfix"></div>
    <h4>IAS Probationers of 2018 batch allotted to Telangana state, undergoing training at Dr. MCR HRD Institute, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 1st July 2019, Monday. Sri B.P. Acharya, Director General, Dr. MCR HRD Institute, Sri Surendra Mohan, Secretary to Governor were also present on the occasion.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0397.jpg" alt="IAS Probationers of 2018 batch allotted to Telangana state, undergoing training at Dr. MCR HRD Institute, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 1st July 2019, Monday. Sri B.P. Acharya, Director General, Dr. MCR HRD Institute, Sri Surendra Mohan, Secretary to Governor were also present on the occasion." data-url="img/KLN_0397.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0381.jpg" alt="IAS Probationers of 2018 batch allotted to Telangana state, undergoing training at Dr. MCR HRD Institute, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 1st July 2019, Monday. Sri B.P. Acharya, Director General, Dr. MCR HRD Institute, Sri Surendra Mohan, Secretary to Governor were also present on the occasion." data-url="img/KLN_0381.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0419.jpg" alt="IAS Probationers of 2018 batch allotted to Telangana state, undergoing training at Dr. MCR HRD Institute, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 1st July 2019, Monday. Sri B.P. Acharya, Director General, Dr. MCR HRD Institute, Sri Surendra Mohan, Secretary to Governor were also present on the occasion." data-url="img/KLN_0419.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9362.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9362.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9286.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9286.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9214.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9214.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9205.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9205.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9139.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9139.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9075.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9075.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9052.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_9052.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8978.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_8978.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8935.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_8935.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8880.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the ground breaking ceremony of Kotak Mahindra Bank-Pullela Gopichand Academy initiative at Gachibowli, Hyderabad, on 26-06-2019, Wednesday, for construction of Badminton training centre comprising of six air-conditioned badminton courts in the existing premises and a Sports Science Centre in the existing and the upcoming new training centre as part of Kotak's CSR initiative. Lady Governor Smt. Vimala Narasimhan, Telangana Minister for Excise, Sports and Youth Services, Sri V. Srinivas Goud, National Badminton Coach Sri Pullela Gopichand and others have participated in the event." data-url="img/KLN_8880.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8440.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8440.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8487.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8487.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8503.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8503.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8540.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8540.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8563.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8563.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8571.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office to Shri Justice Raghvendra Singh Chauhan, Judge of Telangana High Court as Chief Justice of Telangana High Court in a solemn function held in Durbar Hall, at Raj Bhavan on 22-06-2019, Saturday." data-url="img/KLN_8571.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7866.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7866.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7869.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7869.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7891.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7891.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7941.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7941.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7967.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7967.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7964.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7964.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7999.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_7999.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8073.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8073.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8107.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8107.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8091.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8091.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8116.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8116.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8077.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8077.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8127.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8127.jpg">
        <img class="fs-gal" src="img/thumb/KLN_816.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_816.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8168.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8168.jpg">
        <img class="fs-gal" src="img/thumb/KLN_817.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_817.jpg">
        <img class="fs-gal" src="img/thumb/KLN_820.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_820.jpg">
        <img class="fs-gal" src="img/thumb/KLN_818.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_818.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8181.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan graced 5th International Yoga Day Celebrations at Samskruthi Community Hall at Rajbhavan on 21.06.2019, Friday." data-url="img/KLN_8181.jpg">

    <div class="clearfix"></div>
    <h4>Mr. Ramachandru Tejavath, Special Representative of Telangana in New Delhi along with Mr. Amgoth Tukaram met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20-06-2019,Thursday. Governor Sri E.S.L. Narasimhan congratulated Mr. Amgoth Tukaram, who successfully climbed the Mt. Everest from South Col, toughest route of Nepal and thus became the 'South India's Youngest Mountaineer to Summit Mount Everest from South Col route.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7791.jpg" alt="Mr. Ramachandru Tejavath, Special Representative of Telangana in New Delhi along with Mr. Amgoth Tukaram met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20-06-2019,Thursday. Governor Sri E.S.L. Narasimhan congratulated Mr. Amgoth Tukaram, who successfully climbed the Mt. Everest from South Col, toughest route of Nepal and thus became the 'South India's Youngest Mountaineer to Summit Mount Everest from South Col route." data-url="img/KLN_7791.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7811.jpg" alt="Mr. Ramachandru Tejavath, Special Representative of Telangana in New Delhi along with Mr. Amgoth Tukaram met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20-06-2019,Thursday. Governor Sri E.S.L. Narasimhan congratulated Mr. Amgoth Tukaram, who successfully climbed the Mt. Everest from South Col, toughest route of Nepal and thus became the 'South India's Youngest Mountaineer to Summit Mount Everest from South Col route." data-url="img/KLN_7811.jpg">

    <div class="clearfix"></div>
    <h4>H.E. Mr. Andre Aranha Correa do Lago, Ambassador, Brazil met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th Jun 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7769.jpg" alt="H.E. Mr. Andre Aranha Correa do Lago, Ambassador, Brazil met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th Jun 2019, Thursday." data-url="img/KLN_7769.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7783.jpg" alt="H.E. Mr. Andre Aranha Correa do Lago, Ambassador, Brazil met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 20th Jun 2019, Thursday." data-url="img/KLN_7783.jpg">

    <div class="clearfix"></div>
    <h4>Shri Sandeep Kumar Sultania, Vice-Chancellor, PVNR Telangana Veterinary University, Rajendranagar met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7674.jpg" alt="Shri Sandeep Kumar Sultania, Vice-Chancellor, PVNR Telangana Veterinary University, Rajendranagar met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday." data-url="img/KLN_7674.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7687.jpg" alt="Shri Sandeep Kumar Sultania, Vice-Chancellor, PVNR Telangana Veterinary University, Rajendranagar met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday." data-url="img/KLN_7687.jpg">

    <div class="clearfix"></div>
    <h4>Major General T.S.A. Narayana, Dy. Commandant, MCEME met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19th Jun 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7650.jpg" alt="Major General T.S.A. Narayana, Dy. Commandant, MCEME met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19th Jun 2019, Wednesday." data-url="img/KLN_7650.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7663.jpg" alt="Major General T.S.A. Narayana, Dy. Commandant, MCEME met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19th Jun 2019, Wednesday." data-url="img/KLN_7663.jpg">

    <div class="clearfix"></div>
    <h4>Shri Ghanta Chakrapani, Chairman and Members of Telangana State Public Service Commission (TSPSC) met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday and presented the Commission's Annual Report for 2017-18 to the Governor.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7593.jpg" alt="Shri Ghanta Chakrapani, Chairman and Members of Telangana State Public Service Commission (TSPSC) met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday and presented the Commission's Annual Report for 2017-18 to the Governor." data-url="img/KLN_7593.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7635.jpg" alt="Shri Ghanta Chakrapani, Chairman and Members of Telangana State Public Service Commission (TSPSC) met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday and presented the Commission's Annual Report for 2017-18 to the Governor." data-url="img/KLN_7635.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7594.jpg" alt="Shri Ghanta Chakrapani, Chairman and Members of Telangana State Public Service Commission (TSPSC) met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday and presented the Commission's Annual Report for 2017-18 to the Governor." data-url="img/KLN_7594.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7606.jpg" alt="Shri Ghanta Chakrapani, Chairman and Members of Telangana State Public Service Commission (TSPSC) met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 19-06-2019, Wednesday and presented the Commission's Annual Report for 2017-18 to the Governor." data-url="img/KLN_7606.jpg">

    <div class="clearfix"></div>
    <h4>Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4857.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_4857.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5370.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_5370.jpg">
        <img class="fs-gal" src="img/thumb/KLN_491.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_491.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4959.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_4959.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4975.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_4975.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4965.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_4965.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4991.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_4991.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5003.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_5003.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5319.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_5319.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5101.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_5101.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5279.jpg" alt="Governor hosts Iftar dinner at 'Samskruthi', Raj Bhavan Community Centre on 1st Jun 2019, Saturday and was attended by Telangana CM Sri K. Chandrashekar Rao, Andhra Pradesh CM Sri Y.S. Jaganmohan Reddy, Speaker of Telangana Legislative Assembly Sri Pocharam Srinivas Reddy, Acting Chief Justice of Telangana High Court Sri Justice Raghavendra Singh Chouhan, Home Minister Sri Mohammad Mahmood Ali, Minister for Prohibition &amp; Excise Sri Srinivas Goud, Minister for Laboour and Employment Sri Ch. Malla Reddy, various Members of Parliament and MLAs of Telangana and Andhra Pradesh." data-url="img/KLN_5279.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8188.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8188.jpg">
        <img class="fs-gal" src="img/thumb/KLN_813.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_813.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8186.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8186.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8144.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8144.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8175.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8175.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8219.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8219.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8256.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8256.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8239.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8239.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8270.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8270.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8262.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8262.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8290.jpg" alt="Hon'ble Governor Shri E S L Narasimhan administered oath of office and secrecy to Shri Y.S. Jagan Mohan Reddy, the Chief Minister of Andhra Pradesh on 30th May 2019, Thursday at Vijaywada, Andhra Pradesh." data-url="img/KLN_8290.jpg">

    <div class="clearfix"></div>
    <h4>Prof. Sunaina Singh, Vice-Chancellor, Nalanda University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-05-2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4216.jpg" alt="Prof. Sunaina Singh, Vice-Chancellor, Nalanda University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-05-2019, Monday." data-url="img/KLN_4216.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4206.jpg" alt="Prof. Sunaina Singh, Vice-Chancellor, Nalanda University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-05-2019, Monday." data-url="img/KLN_4206.jpg">

    <div class="clearfix"></div>
    <h4>Sri Gopalakrishna Dwivedi, Chief Election Officer, Andhra Pradesh and Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26 May 2019 Sunday and handed over to him list of Elected Representatives of Andhra Pradesh State Legislative Assembly 2019. Smt. Sujatha Sharma and Sri Vivek Yadav, Addl. CEOs were also present.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4027.jpg" alt="Sri Gopalakrishna Dwivedi, Chief Election Officer, Andhra Pradesh and Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26 May 2019 Sunday and handed over to him list of Elected Representatives of Andhra Pradesh State Legislative Assembly 2019. Smt. Sujatha Sharma and Sri Vivek Yadav, Addl. CEOs were also present." data-url="img/KLN_4027.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4034.jpg" alt="Sri Gopalakrishna Dwivedi, Chief Election Officer, Andhra Pradesh and Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26 May 2019 Sunday and handed over to him list of Elected Representatives of Andhra Pradesh State Legislative Assembly 2019. Smt. Sujatha Sharma and Sri Vivek Yadav, Addl. CEOs were also present." data-url="img/KLN_4034.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4037.jpg" alt="Sri Gopalakrishna Dwivedi, Chief Election Officer, Andhra Pradesh and Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26 May 2019 Sunday and handed over to him list of Elected Representatives of Andhra Pradesh State Legislative Assembly 2019. Smt. Sujatha Sharma and Sri Vivek Yadav, Addl. CEOs were also present." data-url="img/KLN_4037.jpg">

    <div class="clearfix"></div>
    <h4>Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3716.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3716.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3838.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3838.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3552.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3552.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3704.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3704.jpg">
        <img class="fs-gal" src="img/thumb/KLN_370.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_370.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3722.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3722.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3740.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3740.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3836.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3836.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3818.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3818.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3828.jpg" alt="Elected members of YSR Congress Legislature Party called on Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan at Raj Bhavan on 25-05-2019, Saturday and submitted to him a copy of the resolution of YSRC Legislature Party unanimously electing Sri Y.S. Jaganmohan Reddy as Leader of the YSR Congress Legislature Party and requested the Governor to invite him to form the government in Andhra Pradesh. Hon'ble Governor invited Sri Y.S. Jaganmohan Reddy to form the government in Andhra Pradesh." data-url="img/KLN_3828.jpg">

    <div class="clearfix"></div>
    <h4>Shri K. Ramchand, Sr. Deputy Director General, Andhra Pradesh &amp; Telangana LSA and other officers of Department of Telecom met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-05-2019, Friday. On this occasion, Hon'ble Governor released information booklet brought out by the Telecom department on 'Mobile Security Awareness - Threats and Precautions.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3241.jpg" alt="Shri K. Ramchand, Sr. Deputy Director General, Andhra Pradesh &amp; Telangana LSA and other officers of Department of Telecom met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-05-2019, Friday. On this occasion, Hon'ble Governor released information booklet brought out by the Telecom department on 'Mobile Security Awareness - Threats and Precautions." data-url="img/KLN_3241.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3271.jpg" alt="Shri K. Ramchand, Sr. Deputy Director General, Andhra Pradesh &amp; Telangana LSA and other officers of Department of Telecom met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-05-2019, Friday. On this occasion, Hon'ble Governor released information booklet brought out by the Telecom department on 'Mobile Security Awareness - Threats and Precautions." data-url="img/KLN_3271.jpg">

    <div class="clearfix"></div>
    <h4>Honourable Sir Dominic Asquith KCMG, British High Commissioner to India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08-05-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2775.jpg" alt="Honourable Sir Dominic Asquith KCMG, British High Commissioner to India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08-05-2019, Wednesday." data-url="img/KLN_2775.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2771.jpg" alt="Honourable Sir Dominic Asquith KCMG, British High Commissioner to India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08-05-2019, Wednesday." data-url="img/KLN_2771.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2788.jpg" alt="Honourable Sir Dominic Asquith KCMG, British High Commissioner to India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08-05-2019, Wednesday." data-url="img/KLN_2788.jpg">

    <div class="clearfix"></div>
    <h4>Vice Admiral Karambir Singh, PVSM, AVSM, Commander-in-Chief, Eastern Naval Command met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 07-05-2019 ,Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2741.jpg" alt="Vice Admiral Karambir Singh, PVSM, AVSM, Commander-in-Chief, Eastern Naval Command met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 07-05-2019 ,Tuesday." data-url="img/KLN_2741.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2736.jpg" alt="Vice Admiral Karambir Singh, PVSM, AVSM, Commander-in-Chief, Eastern Naval Command met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 07-05-2019 ,Tuesday." data-url="img/KLN_2736.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2728.jpg" alt="Vice Admiral Karambir Singh, PVSM, AVSM, Commander-in-Chief, Eastern Naval Command met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 07-05-2019 ,Tuesday." data-url="img/KLN_2728.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2589.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2589.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2594.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2594.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2612.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2612.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2615.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2615.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2617.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2617.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2622.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2622.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2627.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2627.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2632.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2632.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2636.jpg" alt="Hon'ble Governor graced an interactive career guidance and counselling session and addressed employees of Raj Bhavan and their family members at Raj Bhavan Samskruthi Community Centre on 04-05-2019, Saturday." data-url="img/KLN_2636.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2153.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway." data-url="img/KLN_2153.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2083.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway." data-url="img/KLN_2083.jpg">
        <img class="fs-gal" src="img/thumb/KLN_230.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway." data-url="img/KLN_230.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2250.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway." data-url="img/KLN_2250.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2278.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited the Divisional Headquarters office of South Central Railway at Secunderabad on 1st May 2019, Wednesday and was welcomed by Sri Gajanan Mallya, General Manager, South Central Railway." data-url="img/KLN_2278.jpg">

    <div class="clearfix"></div>
    <h4>Shri B. Shivadhar Reddy, IG (Personnel), Telangana met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 30th April 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2056.jpg" alt="Shri B. Shivadhar Reddy, IG (Personnel), Telangana met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 30th April 2019, Tuesday." data-url="img/KLN_2056.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1618.jpg" alt="Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday." data-url="img/KLN_1618.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_1484.jpg" alt="Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday." data-url="img/KLN_1484.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1624.jpg" alt="Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday." data-url="img/KLN_1624.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1679.jpg" alt="Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday." data-url="img/KLN_1679.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1670.jpg" alt="Hon'ble Governor graced the 8th Convocation of Jawaharlal Nehru Technological University at Hyderabad on 26th April 2019, Friday." data-url="img/KLN_1670.jpg">

    <div class="clearfix"></div>
    <h4>Prof. K. Seetharama Rao, Vice-Chancellor, Dr. B.R. Ambedkar Open University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 25-04-2019, Thursday and invited him to the 23rd Convocation of the University on April 29, 2019.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1211.jpg" alt="Prof. K. Seetharama Rao, Vice-Chancellor, Dr. B.R. Ambedkar Open University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 25-04-2019, Thursday and invited him to the 23rd Convocation of the University on April 29, 2019." data-url="img/KLN_1211.jpg">

    <div class="clearfix"></div>
    <h4>Prof. A. Venugopal, Vice-Chancellor, JNTU, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 25-04-2019, Thursday and invited him to the 8th Convocation of the University to be held on April 28, 2019.</h4>
        <img class="fs-gal" src="img/thumb/KLN_113.jpg" alt="Prof. A. Venugopal, Vice-Chancellor, JNTU, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 25-04-2019, Thursday and invited him to the 8th Convocation of the University to be held on April 28, 2019." data-url="img/KLN_113.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0766.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0766.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0717.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0717.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0770.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0770.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0763.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0763.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0734.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0734.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0784.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0784.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0789.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0789.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0812.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0812.jpg">
        <img class="fs-gal" src="img/thumb/KLN_083.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_083.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0819.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0819.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0892.jpg" alt="Hon'ble Governor addressed Change Agents of Lead India 2020 movement at Raj Bhavan on 22nd April 2019, Monday." data-url="img/KLN_0892.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan presented a Memento to Hon'ble Governor of Meghalaya Sri Tathagata Roy during his visit to Hyderabad at Raj Bhavan on 17-04-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9914.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan presented a Memento to Hon'ble Governor of Meghalaya Sri Tathagata Roy during his visit to Hyderabad at Raj Bhavan on 17-04-2019, Wednesday." data-url="img/KLN_9914.jpg">

    <div class="clearfix"></div>
    <h4>H.E. Dr. Ausaf Sayeed, Indian Ambassador to Saudi Arabia and Shri A.K. Khan, Adviser, Govt. of Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-04-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9950.jpg" alt="H.E. Dr. Ausaf Sayeed, Indian Ambassador to Saudi Arabia and Shri A.K. Khan, Adviser, Govt. of Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-04-2019, Wednesday." data-url="img/KLN_9950.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9944.jpg" alt="H.E. Dr. Ausaf Sayeed, Indian Ambassador to Saudi Arabia and Shri A.K. Khan, Adviser, Govt. of Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 17-04-2019, Wednesday." data-url="img/KLN_9944.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 17-04-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9808.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 17-04-2019, Wednesday." data-url="img/KLN_9808.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9872.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 17-04-2019, Wednesday." data-url="img/KLN_9872.jpg">

    <div class="clearfix"></div>
    <h4>Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9168.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_9168.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9158.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_9158.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8972.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_8972.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9132.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_9132.jpg">
        <img class="fs-gal" src="img/thumb/KLN_901.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_901.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9084.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_9084.jpg">
        <img class="fs-gal" src="img/thumb/KLN_90.jpg" alt="Veda Pandits of TTD, Yadadri and Bhadradri temples bestowed Chaturveda Asheervachanam on Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 06-04-2019, Saturday on the occasion of Sri Vikari Nama Ugadi Festival. E.O. Sri Seetha Ramachandra Swamy Temple, Bhadrachalam, extended invitation to Hon'ble Governor to attend Sri Ramachandra Maha Pattabhishekam on April 15, 2019 at Bhadrachalam." data-url="img/KLN_90.jpg">

    <div class="clearfix"></div>
    <h4>Shri Binoy Kumar, Secretary, Ministry of Steel, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-04-2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8177.jpg" alt="Shri Binoy Kumar, Secretary, Ministry of Steel, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8177.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8187.jpg" alt="Shri Binoy Kumar, Secretary, Ministry of Steel, Govt. of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8187.jpg">

    <div class="clearfix"></div>
    <h4>Justice &amp; Mrs. R.S. Chauhan, Acting Chief Justice, Telangana High Court met Hon'ble Governor Sri E.S.L. Narasimhan and Smt. Vimala Narasimhan at Raj Bhavan on 05-04-2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8143.jpg" alt="Justice &amp; Mrs. R.S. Chauhan, Acting Chief Justice, Telangana High Court met Hon'ble Governor Sri E.S.L. Narasimhan and Smt. Vimala Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8143.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8153.jpg" alt="Justice &amp; Mrs. R.S. Chauhan, Acting Chief Justice, Telangana High Court met Hon'ble Governor Sri E.S.L. Narasimhan and Smt. Vimala Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8153.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8147.jpg" alt="Justice &amp; Mrs. R.S. Chauhan, Acting Chief Justice, Telangana High Court met Hon'ble Governor Sri E.S.L. Narasimhan and Smt. Vimala Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8147.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8163.jpg" alt="Justice &amp; Mrs. R.S. Chauhan, Acting Chief Justice, Telangana High Court met Hon'ble Governor Sri E.S.L. Narasimhan and Smt. Vimala Narasimhan at Raj Bhavan on 05-04-2019, Friday." data-url="img/KLN_8163.jpg">

    <div class="clearfix"></div>
    <h4>Governor Sri E.S.L. Narasimhan chaired the meeting of the members as Chairman of the Advisory Board of Society for the Promotion of Indian Classical Music And Culture Amongst Youth (SPIC MACAY)at Raj Bhavan on 4th April 2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7972.jpg" alt="Governor Sri E.S.L. Narasimhan chaired the meeting of the members as Chairman of the Advisory Board of Society for the Promotion of Indian Classical Music And Culture Amongst Youth (SPIC MACAY)at Raj Bhavan on 4th April 2019, Thursday." data-url="img/KLN_7972.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8007.jpg" alt="Governor Sri E.S.L. Narasimhan chaired the meeting of the members as Chairman of the Advisory Board of Society for the Promotion of Indian Classical Music And Culture Amongst Youth (SPIC MACAY)at Raj Bhavan on 4th April 2019, Thursday." data-url="img/KLN_8007.jpg">

    <div class="clearfix"></div>
    <h4>Sri Ajay Justin Odathekal, Investment Commissioner, Embassy of the Kingdom of the Netherlands met Sri E.S.L. Narasimhan at Raj Bhavan on 27th March 2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7270.jpg" alt="Sri Ajay Justin Odathekal, Investment Commissioner, Embassy of the Kingdom of the Netherlands met Sri E.S.L. Narasimhan at Raj Bhavan on 27th March 2019, Wednesday." data-url="img/KLN_7270.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7282.jpg" alt="Sri Ajay Justin Odathekal, Investment Commissioner, Embassy of the Kingdom of the Netherlands met Sri E.S.L. Narasimhan at Raj Bhavan on 27th March 2019, Wednesday." data-url="img/KLN_7282.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_599.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_599.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5981.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_5981.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6007.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_6007.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6048.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_6048.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6035.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_6035.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6054.jpg" alt="Hon'ble Governor graced the farewell function of outgoing Principal Secretary to Governor Shri Harpreet Singh in a solemn function at Raj Bhavan on 22nd March 2019, Friday." data-url="img/KLN_6054.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5091.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5091.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5114.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5114.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5120.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5120.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5100.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5100.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5135.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5135.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5249.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5249.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5293.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5293.jpg">
        <img class="fs-gal" src="img/thumb/KLN_526.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_526.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5300.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5300.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5335.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5335.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5361.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5361.jpg">
        <img class="fs-gal" src="img/thumb/KLN_537.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_537.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5380.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5380.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5575.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5575.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5682.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5682.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5703.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5703.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5581.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5581.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5785.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5785.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5768.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5768.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5790.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Metro rail connectivity to Hi-Tech City from Ameerpet Metro Station on 20-03-2019, Wednesday. Telangana CS Sri S.K. Joshi, Hyderabad Metro MD Sri N.V.S. Reddy, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary MAUD Sri Aravind Kumar, Hyderabad CP Sri Anjani Kumar, Rachakonda CP Sri Mahesh Bhagwath, Cyberabad CP Sri VC Sajjanar and other officials have attended the programme." data-url="img/KLN_5790.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4906.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4906.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4851.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4851.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4914.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4914.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4896.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4896.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4939.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4939.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4972.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_4972.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_509.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_509.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5006.jpg" alt="Hon'ble Governor inaugurated the first ever training programme on e-Payments, Financial Inclusion and Social Security for ASEAN Civil servants organised by Dr. MCR HRD Institute at Raj Bhavan on 18-03-2019, Monday." data-url="img/KLN_5006.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the "Vr 1 Run" organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4110.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4110.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4237.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4237.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4127.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4127.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4767.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4767.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4356.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4356.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4426.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4426.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4522.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4522.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4372.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4372.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4429.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4429.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4368.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4368.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4729.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4729.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4727.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4727.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4548.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4548.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4534.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4534.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4724.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4724.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4749.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off and participated in the 'Vr 1 Run' organised by SHE Teams Hyderabad City Police at Necklace Road, Hyderabad on 17 Mar 2019, Sunday. US Consul General Ms. Katherine Hadda, Telangana CS Sri S.K. Joshi, DGP Sri Mahender Reddy, GHMC Commissioner Sri Dana Kishore, Principal Secretary Sri Sunil Sharma, Hyderabad Police Commissioner Sri Anjani Kumar and several Tollywood stars and sportspersons have participated in the programme." data-url="img/KLN_4749.jpg">

    <div class="clearfix"></div>
    <h4>Sri K. Surendra Mohan, 2006 batch IAS Officer of Telangana cadre, has taken charge as Secretary to Governor at Raj Bhavan on 15 Mar 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3731.jpg" alt="Sri K. Surendra Mohan, 2006 batch IAS Officer of Telangana cadre, has taken charge as Secretary to Governor at Raj Bhavan on 15 Mar 2019, Friday." data-url="img/KLN_3731.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4003.jpg" alt="Sri K. Surendra Mohan, 2006 batch IAS Officer of Telangana cadre, has taken charge as Secretary to Governor at Raj Bhavan on 15 Mar 2019, Friday." data-url="img/KLN_4003.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3737.jpg" alt="Sri K. Surendra Mohan, 2006 batch IAS Officer of Telangana cadre, has taken charge as Secretary to Governor at Raj Bhavan on 15 Mar 2019, Friday." data-url="img/KLN_3737.jpg">

    <div class="clearfix"></div>
    <h4>Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2826.jpg" alt="Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday." data-url="img/KLN_2826.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2848.jpg" alt="Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday." data-url="img/KLN_2848.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2866.jpg" alt="Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday." data-url="img/KLN_2866.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2874.jpg" alt="Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday." data-url="img/KLN_2874.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2892.jpg" alt="Business delegation of small and medium enterprises of Tomsk Region led by H.E. Andrey Antonov, Deputy Governor of Tomsk Region called on the Governor Sri E.S.L. Narasimhan at Raj Bhavan on 13-03-2019, Wednesday." data-url="img/KLN_2892.jpg">

    <div class="clearfix"></div>
    <h4>Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan.</h4>
        <img class="fs-gal" src="img/thumb/KLN_265.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_265.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2641.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_2641.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_2654.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_2654.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2689.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_2689.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2681.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_2681.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2673.jpg" alt="Governor Sri E.S.L. Narasimhan graced the occasion of releasing of C.R. Rao Jeevitham: Krishi a biography of Dr. C.R. Rao, distinguished scientist and eminent statistician, translated into Telugu by Dr. Avula Manjulatha, Former Vice Chancellor of Telugu University, from the English version by Nalini Krishnamurthy on 13-03-2019, Wednesday at Raj Bhavan." data-url="img/KLN_2673.jpg">

    <div class="clearfix"></div>
    <h4>The 2nd meeting of the State Managing Committee of Special Fund for Reconstruction and Rehabilitation of Ex-Servicemen, Telangana state, chaired by Governor Sri E.S.L. Narasimhan was held at Raj Bhavan on 12-03-2019,Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2553.jpg" alt="The 2nd meeting of the State Managing Committee of Special Fund for Reconstruction and Rehabilitation of Ex-Servicemen, Telangana state, chaired by Governor Sri E.S.L. Narasimhan was held at Raj Bhavan on 12-03-2019,Tuesday." data-url="img/KLN_2553.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2539.jpg" alt="The 2nd meeting of the State Managing Committee of Special Fund for Reconstruction and Rehabilitation of Ex-Servicemen, Telangana state, chaired by Governor Sri E.S.L. Narasimhan was held at Raj Bhavan on 12-03-2019,Tuesday." data-url="img/KLN_2539.jpg">

    <div class="clearfix"></div>
    <h4>Sri M.V. Rama Raju, Member, AP Public Service Commission met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 11th March 2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2510.jpg" alt="Sri M.V. Rama Raju, Member, AP Public Service Commission met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 11th March 2019, Monday." data-url="img/KLN_2510.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2527.jpg" alt="Sri M.V. Rama Raju, Member, AP Public Service Commission met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 11th March 2019, Monday." data-url="img/KLN_2527.jpg">

    <div class="clearfix"></div>
    <h4>Dr.V. Praveen Rao, Vice Chancellor, Prof. Jayashankar Telangana State Agricultural University called on Hon'ble Governor Sri E.S.L. Narasimhan on 07-03-2019, Thursday at Raj Bhavan. Hon'ble Governor congratulated Dr.V. Praveen Rao, Vice Chancellor , Prof. Jayashankar Telangana State Agricultural University for the "Best Vice Chancellor Award - 2018" conferred on him by the All India Agricultural Students Association and Indian Agricultural Universities Association, New Delhi on February 16, 2019 at a programme held in Jabalpur.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1960.jpg" alt="Dr.V. Praveen Rao, Vice Chancellor, Prof. Jayashankar Telangana State Agricultural University called on Hon'ble Governor Sri E.S.L. Narasimhan on 07-03-2019, Thursday at Raj Bhavan. Hon'ble Governor congratulated Dr.V. Praveen Rao, Vice Chancellor , Prof. Jayashankar Telangana State Agricultural University for the 'Best Vice Chancellor Award - 2018'conferred on him by the All India Agricultural Students Association and Indian Agricultural Universities Association, New Delhi on February 16, 2019 at a programme held in Jabalpur." data-url="img/KLN_1960.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1982.jpg" alt="Dr.V. Praveen Rao, Vice Chancellor, Prof. Jayashankar Telangana State Agricultural University called on Hon'ble Governor Sri E.S.L. Narasimhan on 07-03-2019, Thursday at Raj Bhavan. Hon'ble Governor congratulated Dr.V. Praveen Rao, Vice Chancellor , Prof. Jayashankar Telangana State Agricultural University for the 'Best Vice Chancellor Award - 2018'conferred on him by the All India Agricultural Students Association and Indian Agricultural Universities Association, New Delhi on February 16, 2019 at a programme held in Jabalpur." data-url="img/KLN_1982.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1953.jpg" alt="Dr.V. Praveen Rao, Vice Chancellor, Prof. Jayashankar Telangana State Agricultural University called on Hon'ble Governor Sri E.S.L. Narasimhan on 07-03-2019, Thursday at Raj Bhavan. Hon'ble Governor congratulated Dr.V. Praveen Rao, Vice Chancellor , Prof. Jayashankar Telangana State Agricultural University for the 'Best Vice Chancellor Award - 2018'conferred on him by the All India Agricultural Students Association and Indian Agricultural Universities Association, New Delhi on February 16, 2019 at a programme held in Jabalpur." data-url="img/KLN_1953.jpg">

    <div class="clearfix"></div>
    <h4>The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the "National Security and Strategic Studies" training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2024.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_2024.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1987.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_1987.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1992.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_1992.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2045.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_2045.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2098.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_2098.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2004.jpg" alt="The team of officers led by Shri Abhay Tripathi, Additional Secretary &amp; Faculty-in charge of National Defence College, met the Governor at Raj Bhavan on 07-03-2019, Thursday as part of their visit to Telangana state under the 'National Security and Strategic Studies' training programme at the National Defence College, Ministry of Defence, New Delhi. The team of fifteen officers also consisted of one defence officer each from Australia, Malaysia and Bhutan." data-url="img/KLN_2004.jpg">

    <div class="clearfix"></div>
    <h4>Sri Yogesh Chander Modi, Director General NIA, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28-02-2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1113.jpg" alt="Sri Yogesh Chander Modi, Director General NIA, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28-02-2019, Thursday." data-url="img/KLN_1113.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1122.jpg" alt="Sri Yogesh Chander Modi, Director General NIA, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28-02-2019, Thursday." data-url="img/KLN_1122.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_350.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_350.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0373.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0373.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0403.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0403.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0319.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0319.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0590.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0590.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0413.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0413.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0446.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0446.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0429.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0429.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0462.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0462.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0474.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0474.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0488.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0488.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0504.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0504.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0522.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri Allola Indrakaran Reddy, Sri Talasani Srinivas Yadav, Sri Guntakandla Jagadish Reddy, Sri Eatela Rajendar, Sri Singireddy Niranjan Reddy, Sri Koppula Eshwar, Sri Errabelli Dayakar Rao, Sri V. Srinivas Goud, Sri Vemula Prashanth Reddy and Sri Chamakura Malla Reddy as Members of the Council of Ministers of Telangana Government at a solemn ceremony held at Raj Bhavan at 11.30 AM on 19 Feb 2019, Tuesday." data-url="img/KLN_0522.jpg">

    <div class="clearfix"></div>
    <h4>Sri K. Chandrashekar Rao, Telangana Chief Minister met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15 Feb 2019, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9779.jpg" alt="Sri K. Chandrashekar Rao, Telangana Chief Minister met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15 Feb 2019, Friday." data-url="img/KLN_9779.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9793.jpg" alt="Sri K. Chandrashekar Rao, Telangana Chief Minister met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15 Feb 2019, Friday." data-url="img/KLN_9793.jpg">

    <div class="clearfix"></div>
    <h4>Prof. Sudhakar Yedla, Vice Chancellor, Dravidian University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavn on 14-02-2019, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9716.jpg" alt="Prof. Sudhakar Yedla, Vice Chancellor, Dravidian University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavn on 14-02-2019, Thursday." data-url="img/KLN_9716.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9724.jpg" alt="Prof. Sudhakar Yedla, Vice Chancellor, Dravidian University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavn on 14-02-2019, Thursday." data-url="img/KLN_9724.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9193.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9193.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9202.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9202.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9357.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9357.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9383.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9383.jpg">
        <img class="fs-gal" src="img/thumb/KLN_941.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_941.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9478.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9478.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9491.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9491.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9484.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9484.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9522.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9522.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9563.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9563.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9631.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan attended the Women's Conclave 2019 'SHE Mpower' organised jointly by the Society for Cyberabad Security Council (SCSC) and Cyberabad Police at the HICC Hyderabad on 13-02-2019, Wednesday." data-url="img/KLN_9631.jpg">

    <div class="clearfix"></div>
    <h4>Shri Gajanan Mallya, General Manager, South Central Railway met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019 ,Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8010.jpg" alt="Shri Gajanan Mallya, General Manager, South Central Railway met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019 ,Thursday." data-url="img/KLN_8010.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8001.jpg" alt="Shri Gajanan Mallya, General Manager, South Central Railway met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019 ,Thursday." data-url="img/KLN_8001.jpg">

    <div class="clearfix"></div>
    <h4>Shri V. Nagi Reddy, Telangana State Election Commissioner met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019, Thursday and submitted report on the Gram Panchayat Elections 2019.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8018.jpg" alt="Shri V. Nagi Reddy, Telangana State Election Commissioner met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019, Thursday and submitted report on the Gram Panchayat Elections 2019." data-url="img/KLN_8018.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8026.jpg" alt="Shri V. Nagi Reddy, Telangana State Election Commissioner met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 7th Feb 2019, Thursday and submitted report on the Gram Panchayat Elections 2019." data-url="img/KLN_8026.jpg">

    <div class="clearfix"></div>
    <h4>Justice Sri Jasti Chalameshwar, Retired Supreme Court Judge, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 06-02-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7975.jpg" alt="Justice Sri Jasti Chalameshwar, Retired Supreme Court Judge, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 06-02-2019, Wednesday." data-url="img/KLN_7975.jpg">

    <div class="clearfix"></div>
    <h4>Sri Ch.V.M. Krishna Rao, Resident Editor, The New Indian Express met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-02-2019, Tuesday and presented him a copy of the coffee table book titled 'The Nationalist President - Pranab Mukherjee' Edited by Sri Prabhu Chawla, Editorial Director of The New Indian Express.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7943.jpg" alt="Sri Ch.V.M. Krishna Rao, Resident Editor, The New Indian Express met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-02-2019, Tuesday and presented him a copy of the coffee table book titled 'The Nationalist President - Pranab Mukherjee' Edited by Sri Prabhu Chawla, Editorial Director of The New Indian Express." data-url="img/KLN_7943.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7966.jpg" alt="Sri Ch.V.M. Krishna Rao, Resident Editor, The New Indian Express met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-02-2019, Tuesday and presented him a copy of the coffee table book titled 'The Nationalist President - Pranab Mukherjee' Edited by Sri Prabhu Chawla, Editorial Director of The New Indian Express." data-url="img/KLN_7966.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7957.jpg" alt="Sri Ch.V.M. Krishna Rao, Resident Editor, The New Indian Express met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-02-2019, Tuesday and presented him a copy of the coffee table book titled 'The Nationalist President - Pranab Mukherjee' Edited by Sri Prabhu Chawla, Editorial Director of The New Indian Express." data-url="img/KLN_7957.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7851.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday." data-url="img/KLN_7851.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7884.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday." data-url="img/KLN_7884.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7846.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday." data-url="img/KLN_7846.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7878.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday." data-url="img/KLN_7878.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7888.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed a function organised to release the Autobiography of Sri APVN Sarma, a retired IAS Officer of 1974 batch, titled 'Naruni Sevalo Narayanudu' written by Dr. R. Ananta Padmanabha Rao, held at Durbar Hall, Raj Bhavan on 04-02-2019, Monday." data-url="img/KLN_7888.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted "At Home" on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6734.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6734.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6746.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6746.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6949.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6949.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6943.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6943.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6735.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6735.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6953.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6953.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6985.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6985.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6955.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6955.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6977.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6977.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6993.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6993.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6990.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_6990.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7003.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7003.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7013.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7013.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7006.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7006.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7115.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7115.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7125.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7125.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7127.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7127.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7129.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7129.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7184.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7184.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7265.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7265.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7335.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7335.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7623.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7623.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7502.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7502.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7576.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7576.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7609.jpg" alt="Hon'ble Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan hosted 'At Home' on the occasion of the 70th Republic Day celebrations at Raj Bhavan on 26-01-2019, Saturday." data-url="img/KLN_7609.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan met the officials of College of Air Warfare, Secunderabad on the eve of Republic Day 2019 Celebrations on Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6425.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan met the officials of College of Air Warfare, Secunderabad on the eve of Republic Day 2019 Celebrations on Saturday." data-url="img/KLN_6425.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6275.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan met the officials of College of Air Warfare, Secunderabad on the eve of Republic Day 2019 Celebrations on Saturday." data-url="img/KLN_6275.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6286.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan met the officials of College of Air Warfare, Secunderabad on the eve of Republic Day 2019 Celebrations on Saturday." data-url="img/KLN_6286.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5445.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5445.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5438.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5438.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5461.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5461.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5465.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5465.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5479.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5479.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5499.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5499.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5512.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5512.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5515.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5515.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5586.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5586.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5546.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5546.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5655.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5655.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5543.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5543.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5601.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5601.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5731.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5731.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5736.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5736.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5750.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5750.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5687.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5687.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5679.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5679.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5773.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5773.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5760.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5760.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5789.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5789.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5799.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5799.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5802.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5802.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5820.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5820.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5829.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5829.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5858.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5858.jpg">
        <img class="fs-gal" src="img/thumb/KLN_589.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_589.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5929.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5929.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5907.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5907.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5942.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5942.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5952.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5952.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6046.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6046.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5988.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_5988.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6074.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6074.jpg">
        <img class="fs-gal" src="img/thumb/KLN_609.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_609.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6057.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6057.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6098.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6098.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6014.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6014.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6117.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6117.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6139.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6139.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6131.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6131.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6179.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6179.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6145.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6145.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6186.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated in the Republic Day 2019 celebrations at Secunderabad Parade Grounds on 26th Jan 2019,Saturday." data-url="img/KLN_6186.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5173.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5173.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5164.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5164.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5238.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5238.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5252.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5252.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5258.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5258.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5260.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5260.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5278.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5278.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5269.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5269.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5266.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5266.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5288.jpg" alt="Hon'ble Governor participated as Chief Guest in the National Voters Day-2019 celebrations held at Ravindra Bharathi,Hyderabad on 25-01-2019 Friday." data-url="img/KLN_5288.jpg">

    <div class="clearfix"></div>
    <h4>Air Vice Marshal S.K. Jha, Commandant, College of Air Warfare, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 22nd Jan 2019,Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5009.jpg" alt="Air Vice Marshal S.K. Jha, Commandant, College of Air Warfare, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 22nd Jan 2019,Tuesday." data-url="img/KLN_5009.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4637.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4637.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4659.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4659.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4698.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4698.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4701.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4701.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4684.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4684.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4646.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4646.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4677.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4677.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4721.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4721.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4815.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4815.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4862.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4862.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4878.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4878.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4798.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4798.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4899.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_4899.jpg">
        <img class="fs-gal" src="img/thumb/KLN_481.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Telangana Jagruthi International Youth Conference 2019 held at Gachibowli, Hyderabad on 20-01-2019, Sunday." data-url="img/KLN_481.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4240.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4240.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4252.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4252.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4304.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4304.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4280.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4280.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4318.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4318.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4290.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan addressed the joint session of the Telangana Legislative Council and Telangana Legislative Assembly on 19th Jan 2019,Saturday." data-url="img/KLN_4290.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3528.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/KLN_3528.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3474.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/KLN_3474.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3533.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/KLN_3533.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3517.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/KLN_3517.jpg">
        <img class="fs-gal" src="img/thumb/DSC_8493.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/DSC_8493.jpg">
        <img class="fs-gal" src="img/thumb/DSC_8501.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered the oath to Sri Mumtaz Ahmad Khan, MLA as Pro-tem Speaker of the Telangana Legislative Assembly at a function held at Durbar Hall in Raj Bhavan on16-01-2019, Wednesday." data-url="img/DSC_8501.jpg">

    <div class="clearfix"></div>
    <h4>Shri Ajaib Singh, Director General of Audit (Central), Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-01-2019, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2506.jpg" alt="Shri Ajaib Singh, Director General of Audit (Central), Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-01-2019, Saturday." data-url="img/KLN_2506.jpg">

    <div class="clearfix"></div>
    <h4>Telangana State Public Service Commission Chairman Sri Ghanta Chakrapani and Members of the Commission met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 04-01-2019 , Friday and presented copy of Status Report of the Commission.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2445.jpg" alt="Shri Ajaib Singh, Director General of Audit (Central), Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-01-2019, Saturday." data-url="img/KLN_2445.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2436.jpg" alt="Shri Ajaib Singh, Director General of Audit (Central), Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 05-01-2019, Saturday." data-url="img/KLN_2436.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1170.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1170.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1198.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1198.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1202.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1202.jpg">
        <img class="fs-gal" src="img/thumb/KLN_118.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_118.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1272.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1272.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1256.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1256.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1220.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1220.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1283.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1283.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1299.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1299.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1334.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as the first Chief Justice of the Telangana High Court at a swearing ceremony held at Raj Bhavan, on 01-01-2019, Tuesday." data-url="img/KLN_1334.jpg">

    <div class="clearfix"></div>
    <h4>Veda Pandits of Tirumala and Yadadri Temples offered blessings with Ashirvachanam to Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on the occasion of New Year on 01-01-2019 Tuesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0969.jpg" alt="Veda Pandits of Tirumala and Yadadri Temples offered blessings with Ashirvachanam to Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on the occasion of New Year on 01-01-2019 Tuesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/KLN_0969.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0966.jpg" alt="Veda Pandits of Tirumala and Yadadri Temples offered blessings with Ashirvachanam to Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on the occasion of New Year on 01-01-2019 Tuesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/KLN_0966.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0844.jpg" alt="Veda Pandits of Tirumala and Yadadri Temples offered blessings with Ashirvachanam to Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on the occasion of New Year on 01-01-2019 Tuesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/KLN_0844.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0956.jpg" alt="Veda Pandits of Tirumala and Yadadri Temples offered blessings with Ashirvachanam to Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on the occasion of New Year on 01-01-2019 Tuesday. Officers and staff members of Raj Bhavan greeted the Governor and participated in a cake cutting ceremony held on the occasion." data-url="img/KLN_0956.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0345.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0345.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0299.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0299.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0296.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0296.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0337.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0337.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0405.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0405.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0379.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0379.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0422.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0422.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0491.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0491.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0505.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0505.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0617.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0617.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0573.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0573.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0573.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0573.jpg">
        <img class="fs-gal" src="img/thumb/KLN_064.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_064.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0686.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0686.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0722.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0722.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0756.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0756.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0754.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan visited Sri Lakshmi Narasimha Swamy Temple at Yadadri on 31-12-2018, Monday and had darshan of the deity. The Governor also inspected and reviewed the ongoing development works at the Temple with the officials of Yadagirigutta Temple Development Authority (YTDA) and E.O. of Sri Lakshmi Narasimha Swamy Temple." data-url="img/KLN_0754.jpg">

    <div class="clearfix"></div>
    <h4>Smt. &amp; Sri Justice T.B. Radha Krishnan, Chief Justice designate of Telangana High Court, met Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 31-12-2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0241.jpg" alt="Smt. &amp; Sri Justice T.B. Radha Krishnan, Chief Justice designate of Telangana High Court, met Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 31-12-2018, Monday." data-url="img/KLN_0241.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0244.jpg" alt="Smt. &amp; Sri Justice T.B. Radha Krishnan, Chief Justice designate of Telangana High Court, met Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 31-12-2018, Monday." data-url="img/KLN_0244.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0262.jpg" alt="Smt. &amp; Sri Justice T.B. Radha Krishnan, Chief Justice designate of Telangana High Court, met Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Raj Bhavan on 31-12-2018, Monday." data-url="img/KLN_0262.jpg">

    <div class="clearfix"></div>
    <h4>Shri Satish Mahana, Minister for Industrial Development, Govt. of U.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on on 29-12-2018, Saturday. The Minister for Industrial Development met the Governor as a Special Representative of Govt. of Uttar Pradesh and invited Hon'ble Governor to attend the Prayagraj Kumbh Mela 2019 to be held from January 15, 2019 to March 04, 2019.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9773.jpg" alt="Shri Satish Mahana, Minister for Industrial Development, Govt. of U.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on on 29-12-2018, Saturday. The Minister for Industrial Development met the Governor as a Special Representative of Govt. of Uttar Pradesh and invited Hon'ble Governor to attend the Prayagraj Kumbh Mela 2019 to be held from January 15, 2019 to March 04, 2019." data-url="img/KLN_9773.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9742.jpg" alt="Shri Satish Mahana, Minister for Industrial Development, Govt. of U.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on on 29-12-2018, Saturday. The Minister for Industrial Development met the Governor as a Special Representative of Govt. of Uttar Pradesh and invited Hon'ble Governor to attend the Prayagraj Kumbh Mela 2019 to be held from January 15, 2019 to March 04, 2019." data-url="img/KLN_9742.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9752.jpg" alt="Shri Satish Mahana, Minister for Industrial Development, Govt. of U.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on on 29-12-2018, Saturday. The Minister for Industrial Development met the Governor as a Special Representative of Govt. of Uttar Pradesh and invited Hon'ble Governor to attend the Prayagraj Kumbh Mela 2019 to be held from January 15, 2019 to March 04, 2019." data-url="img/KLN_9752.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9774.jpg" alt="Shri Satish Mahana, Minister for Industrial Development, Govt. of U.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on on 29-12-2018, Saturday. The Minister for Industrial Development met the Governor as a Special Representative of Govt. of Uttar Pradesh and invited Hon'ble Governor to attend the Prayagraj Kumbh Mela 2019 to be held from January 15, 2019 to March 04, 2019." data-url="img/KLN_9774.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5967.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5967.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5899.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5899.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5897.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5897.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5953.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5953.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5908.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5908.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5968.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5968.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5998.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5998.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5989.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5989.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5979.jpg" alt="Hon'ble Governor graced the celebrations at Raj Bhavan on the eve of Christmas on 20th Dec 2018, Thursday." data-url="img/KLN_5979.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble President of India Shri Ram Nath Kovind and First Lady given farewell by Hon'ble Governor Shri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Hakimpet Airport, Hyderabad, on 24-12-2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8846.jpg" alt="Hon'ble President of India Shri Ram Nath Kovind and First Lady given farewell by Hon'ble Governor Shri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Hakimpet Airport, Hyderabad, on 24-12-2018, Monday." data-url="img/KLN_8846.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8861.jpg" alt="Hon'ble President of India Shri Ram Nath Kovind and First Lady given farewell by Hon'ble Governor Shri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Hakimpet Airport, Hyderabad, on 24-12-2018, Monday." data-url="img/KLN_8861.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8763.jpg" alt="Hon'ble President of India Shri Ram Nath Kovind and First Lady given farewell by Hon'ble Governor Shri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan at Hakimpet Airport, Hyderabad, on 24-12-2018, Monday." data-url="img/KLN_8763.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Shri E.S.L. Narasimhan met Hon'ble President of India Shri Ram Nath Kovind and Hon'ble Governor of Maharashtra Shri C. Vidyasgar Rao at Rashtrapathi Nilayam, Hyderabad on 22nd Dec-2018 Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6827.jpg" alt="Hon'ble Governor Shri E.S.L. Narasimhan met Hon'ble President of India Shri Ram Nath Kovind and Hon'ble Governor of Maharashtra Shri C. Vidyasgar Rao at Rashtrapathi Nilayam, Hyderabad on 22nd Dec-2018 Saturday." data-url="img/KLN_6827.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6813.jpg" alt="Hon'ble Governor Shri E.S.L. Narasimhan met Hon'ble President of India Shri Ram Nath Kovind and Hon'ble Governor of Maharashtra Shri C. Vidyasgar Rao at Rashtrapathi Nilayam, Hyderabad on 22nd Dec-2018 Saturday." data-url="img/KLN_6813.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6842.jpg" alt="Hon'ble Governor Shri E.S.L. Narasimhan met Hon'ble President of India Shri Ram Nath Kovind and Hon'ble Governor of Maharashtra Shri C. Vidyasgar Rao at Rashtrapathi Nilayam, Hyderabad on 22nd Dec-2018 Saturday." data-url="img/KLN_6842.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6255.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6255.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6172.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6172.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6090.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6090.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6159.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6159.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6261.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6261.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6295.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6295.jpg">
        <img class="fs-gal" src="img/thumb/KLN_629.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_629.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6352.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6352.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6343.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6343.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6362.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6362.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6436.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_6436.jpg">
        <img class="fs-gal" src="img/thumb/KLN_639.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Ojaswi-Art &amp; Science Exhibition organised at the Govt. High School, Raj Bhavan, Khairatabad, Hyderabad on 21st Dec 2018, Friday. The Governor went round the exhibition and interacted with students with keen interest in the exhibits prepared by them." data-url="img/KLN_639.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 14th Dec 2018,Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4810.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 14th Dec 2018,Friday." data-url="img/KLN_4810.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4807.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport, Hyderabad on 14th Dec 2018,Friday." data-url="img/KLN_4807.jpg">

    <div class="clearfix"></div>
    <h4>IPS Probationers allotted to Telangana state met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 14th Dec 2018,Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4974.jpg" alt="IPS Probationers allotted to Telangana state met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 14th Dec 2018,Friday." data-url="img/KLN_4974.jpg">

    <div class="clearfix"></div>
    <h4>Dr T.S. Ravikumar, Director-cum-Vice Chancellor, Sri Venkateswara Institute of Medical Sciences, Tirupati met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 14th Dec 2018, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4707.jpg" alt="Dr T.S. Ravikumar, Director-cum-Vice Chancellor, Sri Venkateswara Institute of Medical Sciences, Tirupati met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 14th Dec 2018, Friday." data-url="img/KLN_4707.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4715.jpg" alt="Dr T.S. Ravikumar, Director-cum-Vice Chancellor, Sri Venkateswara Institute of Medical Sciences, Tirupati met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 14th Dec 2018, Friday." data-url="img/KLN_4715.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3860.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3860.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3842.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3842.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3840.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3840.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3943.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3943.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3948.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3948.jpg">
        <img class="fs-gal" src="img/thumb/S1.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S1.jpg">
        <img class="fs-gal" src="img/thumb/S2.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S2.jpg">
        <img class="fs-gal" src="img/thumb/S3.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S3.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6169.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6169.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3987.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3987.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4004.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_4004.jpg">
        <img class="fs-gal" src="img/thumb/S5.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S5.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4089.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_4089.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4115.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_4115.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4130.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_4130.jpg">
        <img class="fs-gal" src="img/thumb/S4.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S4.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3865.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/KLN_3865.jpg">
        <img class="fs-gal" src="img/thumb/S7.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S7.jpg">
        <img class="fs-gal" src="img/thumb/S8.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S8.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6161.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6161.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6164.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6164.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6179.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6179.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6166.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6166.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6125.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6125.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6150.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6150.jpg">
        <img class="fs-gal" src="img/thumb/S9.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/S9.jpg">
        <img class="fs-gal" src="img/thumb/DSC_6370.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan administered oath of office and secrecy to Sri K. Chandrashekar Rao, Leader of the TRS Legislature Party as the Chief Minister of Telangana at a solemn ceremony held at Raj Bhavan at 1.25 PM on 13th December 2018, Thursday. Along with him, the Governor also administered oath of office and secrecy to Sri Mohammed Mahmood Ali as Member of the Council of Ministers." data-url="img/DSC_6370.jpg">

    <div class="clearfix"></div>
    <h4>Sri Rajath Kumar, CEO Telangana, Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th December 2018, Wednesday and handed over the List of Elected Representatives of Telangana State Legislative Assembly 2018.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3415.jpg" alt="Sri Rajath Kumar, CEO Telangana, Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th December 2018, Wednesday and handed over the List of Elected Representatives of Telangana State Legislative Assembly 2018." data-url="img/KLN_3415.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3453.jpg" alt="Sri Rajath Kumar, CEO Telangana, Sri S.K. Rudola, Principal Secretary, Election Commission of India met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th December 2018, Wednesday and handed over the List of Elected Representatives of Telangana State Legislative Assembly 2018." data-url="img/KLN_3453.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_213.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_213.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2224.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2224.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2185.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2185.jpg">
        <img class="fs-gal" src="img/thumb/KLN_226.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_226.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2275.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2275.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2291.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2291.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2320.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2320.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2316.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2316.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2342.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2342.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2339.jpg" alt="Hon'ble Governor Shri ESL Narasimhan graced the second convocation of the Professor Jayashankar Telangana State Agricultural University on 09-12-2018, Sunday." data-url="img/KLN_2339.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan offered contribution to Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day 2018 on 7th Dec 2018. Regional Sainik Welfare Officers in AP who have collected maximum contribution were felicitated by the Governor.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2104.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan offered contribution to Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day 2018 on 7th Dec 2018. Regional Sainik Welfare Officers in AP who have collected maximum contribution were felicitated by the Governor" data-url="img/KLN_2104.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2093.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan offered contribution to Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day 2018 on 7th Dec 2018. Regional Sainik Welfare Officers in AP who have collected maximum contribution were felicitated by the Governor" data-url="img/KLN_2093.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2099.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan offered contribution to Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day 2018 on 7th Dec 2018. Regional Sainik Welfare Officers in AP who have collected maximum contribution were felicitated by the Governor" data-url="img/KLN_2099.jpg">
        <img class="fs-gal" src="img/thumb/KLN_210.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan offered contribution to Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day 2018 on 7th Dec 2018. Regional Sainik Welfare Officers in AP who have collected maximum contribution were felicitated by the Governor" data-url="img/KLN_210.jpg">

    <div class="clearfix"></div>
    <h4>Dr. Raja Sadaram, Chief Information Commissioner, Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 06-12-2018, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1945.jpg" alt="Dr. Raja Sadaram, Chief Information Commissioner, Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 06-12-2018, Thursday." data-url="img/KLN_1945.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1932.jpg" alt="Dr. Raja Sadaram, Chief Information Commissioner, Telangana, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 06-12-2018, Thursday." data-url="img/KLN_1932.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0979.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme." data-url="img/KLN_0979.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0983.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme." data-url="img/KLN_0983.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0989.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme." data-url="img/KLN_0989.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0999.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme." data-url="img/KLN_0999.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1004.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan contributed to the Armed Forces Flag Day Fund on the occasion of Armed Forces Flag Day - 2018 at Raj Bhavan on 01-12-2018, Saturday. The Governor also presented Mementos to Regional Sainik Welfare Officers, Rangareddy and Nizamabad districts, who collected maximum contributions for the Armed Forces Flag Day fund. Col. Ramesh Kumar, Director of Sainik Welfare Department, also attended the programme." data-url="img/KLN_1004.jpg">

    <div class="clearfix"></div>
    <h4>Dr. V. Praveen Rao, Vice-Chancellor, Professor Jayashankar Telangana State Agricultural University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28-11-2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9768.jpg" alt="Dr. V. Praveen Rao, Vice-Chancellor, Professor Jayashankar Telangana State Agricultural University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28-11-2018, Wednesday." data-url="img/KLN_9768.jpg">

    <div class="clearfix"></div>
    <h4>Prof. G. Nageswara Rao, Vice-Chancellor, Andhra University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Tue, 27 Nov, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9483.jpg" alt="Prof. G. Nageswara Rao, Vice-Chancellor, Andhra University met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Tue, 27 Nov, Tuesday." data-url="img/KLN_9483.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan received Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport on 27 Nov 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9569.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan received Hon'ble Vice President of India Sri M. Venkaiah Naidu at Begumpet Airport on 27 Nov 2018, Tuesday." data-url="img/KLN_9569.jpg">

    <div class="clearfix"></div>
    <h4>Ms. Karin Stoll, Consul General of the Federal Republic of Germany, Chennai met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 21 Nov,Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_897.jpg" alt="Ms. Karin Stoll, Consul General of the Federal Republic of Germany, Chennai met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 21 Nov,Wednesday." data-url="img/KLN_897.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6050.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6050.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6152.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6152.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6156.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6156.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6282.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6282.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6383.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6383.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6302.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6302.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_6310.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6310.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6198.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6198.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6238.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6238.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6606.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6606.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6610.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6610.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6636.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6636.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6654.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6654.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6655.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6655.jpg">
        <img class="fs-gal" src="img/thumb/DSC_2902.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_2902.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6909.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6909.jpg">
        <img class="fs-gal" src="img/thumb/DSC_2961.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_2961.jpg">
        <img class="fs-gal" src="img/thumb/DSC_3025.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_3025.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7341.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7341.jpg">
        <img class="fs-gal" src="img/thumb/DSC_2921.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_2921.jpg">
        <img class="fs-gal" src="img/thumb/DSC_2942.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_2942.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7043.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7043.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7486.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7486.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7285.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7285.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6742.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6742.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6799.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_6799.jpg">
        <img class="fs-gal" src="img/thumb/DSC_2872.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_2872.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7505.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7505.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7555.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7555.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7577.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7577.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7590.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7590.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7595.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_7595.jpg">
        <img class="fs-gal" src="img/thumb/DSC_3209.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/DSC_3209.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8104.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_8104.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8148.jpg" alt="Hon'ble Governor graced the annual cultural program event held at Raj Bhavan on 17th Nov 2018, Saturday." data-url="img/KLN_8148.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5900.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5900.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5904.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5904.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5909.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5909.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5910.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5910.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5964.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5964.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5937.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5937.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5949.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5949.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5983.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_5983.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6001.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 7th Convocation of National Institute of Pharmaceutical Education and Research (NIPER) at Hyderabad on 14-11-2018, Wednesday. The Governor presented degrees to the students of M.S. (Pharma) and Ph.D. on the occasion." data-url="img/KLN_6001.jpg">

    <div class="clearfix"></div>
    <h4>Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5245.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5245.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5255.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5255.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5263.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5263.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5347.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5347.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5437.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5437.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5475.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5475.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5564.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5564.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5570.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5570.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5593.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5593.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5618.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5618.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5619.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5619.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5634.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5634.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5659.jpg" alt="Governor of A.P. and Telangana Sri E.S.L. Narasimhan, greeted the children from various schools in Hyderabad, Secunderabad, Yadadri-Bhuvanagiri, Suryapet districts in Telangana, Guntur district in Andhra Pradesh, who came to the Raj Bhavan on the occasion of Children's Day on 14th Nov 2018, Wednesday." data-url="img/KLN_5659.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3655.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3655.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3674.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3674.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3647.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3647.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3513.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3513.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3703.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3703.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3710.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3710.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4156.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4156.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3713.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_3713.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4213.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4213.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4392.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4392.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4397.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4397.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4313.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4313.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4428.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4428.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4645.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4645.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4630.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4630.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4714.jpg" alt="Hon'ble Governor Sri ESL Narasimhan participated as Chief Guest at the 2nd annual dance festival programme Kalinga Natyotsav 2018 organised by Kalinga Cultural Trust at Hyderabad on 12th November 2018." data-url="img/KLN_4714.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan inaugurated the Annual Sports events at Raj Bhavan on 29-10-2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2242.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan inaugurated the Annual Sports events at Raj Bhavan on 29-10-2018, Monday." data-url="img/KLN_2242.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2245.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan inaugurated the Annual Sports events at Raj Bhavan on 29-10-2018, Monday." data-url="img/KLN_2245.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2234.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan inaugurated the Annual Sports events at Raj Bhavan on 29-10-2018, Monday." data-url="img/KLN_2234.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2223.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan and Lady Governor Smt. Vimala Narasimhan inaugurated the Annual Sports events at Raj Bhavan on 29-10-2018, Monday." data-url="img/KLN_2223.jpg">

    <div class="clearfix"></div>
    <h4>Sri Santosh Mehra, Director, Telangana State Police Academy met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 29-10-2018 Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2267.jpg" alt="Sri Santosh Mehra, Director, Telangana State Police Academy met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 29-10-2018 Monday." data-url="img/KLN_2267.jpg">

    <div class="clearfix"></div>
    <h4>Sri J. Satyanarayana, Advisor to AP Government and Chairman, UIDAI met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 29th Oct 2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2170.jpg" alt="Sri J. Satyanarayana, Advisor to AP Government and Chairman, UIDAI met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 29th Oct 2018, Monday." data-url="img/KLN_2170.jpg">

    <div class="clearfix"></div>
    <h4>Sri Harpreet Singh, Principal Secretary to Governor administered the Vigilance pledge with the officers and staff members at Raj Bhavan on 29-10-2018, Monday on the occasion of Vigilance Awareness Week 2018. Sri APVN Sarma and Sri AK Mohanty, Advisors to Governor, also participated.</h4>
        <img class="fs-gal" src="img/thumb/KLN_2212.jpg" alt="Sri Harpreet Singh, Principal Secretary to Governor administered the Vigilance pledge with the officers and staff members at Raj Bhavan on 29-10-2018, Monday on the occasion of Vigilance Awareness Week 2018. Sri APVN Sarma and Sri AK Mohanty, Advisors to Governor, also participated." data-url="img/KLN_2212.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2202.jpg" alt="Sri Harpreet Singh, Principal Secretary to Governor administered the Vigilance pledge with the officers and staff members at Raj Bhavan on 29-10-2018, Monday on the occasion of Vigilance Awareness Week 2018. Sri APVN Sarma and Sri AK Mohanty, Advisors to Governor, also participated." data-url="img/KLN_2202.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1430.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1430.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1436.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1436.jpg">
        <img class="fs-gal" src="img/thumb/KLN_143.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_143.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1523.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1523.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1580.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1580.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1482.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1482.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1610.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1610.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1633.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1633.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1649.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1649.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1686.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1686.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1637.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1637.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1639.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1639.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1704.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1704.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1691.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1691.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1742.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1742.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1711.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1711.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1718.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan participated as Chief Guest at the Police Commemoration Day on 21-10-2018 Sunday." data-url="img/KLN_1718.jpg">

    <div class="clearfix"></div>
    <h4>Shri M. Ravi Kumar, Shri B.V. Ramana Kumar and Shri Katta Janardhana Rao, newly appointed Information Commissioners of A.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 16th Oct 2018,Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0642.jpg" alt="Shri M. Ravi Kumar, Shri B.V. Ramana Kumar and Shri Katta Janardhana Rao, newly appointed Information Commissioners of A.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 16th Oct 2018,Tuesday." data-url="img/KLN_0642.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0654.jpg" alt="Shri M. Ravi Kumar, Shri B.V. Ramana Kumar and Shri Katta Janardhana Rao, newly appointed Information Commissioners of A.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 16th Oct 2018,Tuesday." data-url="img/KLN_0654.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0660.jpg" alt="Shri M. Ravi Kumar, Shri B.V. Ramana Kumar and Shri Katta Janardhana Rao, newly appointed Information Commissioners of A.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 16th Oct 2018,Tuesday." data-url="img/KLN_0660.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0647.jpg" alt="Shri M. Ravi Kumar, Shri B.V. Ramana Kumar and Shri Katta Janardhana Rao, newly appointed Information Commissioners of A.P. met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 16th Oct 2018,Tuesday." data-url="img/KLN_0647.jpg">

    <div class="clearfix"></div>
    <h4>A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of "Statue Of Unity", a memorial to Sardar Vallabhbhai Patel, on October 31, 2018.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0531.jpg" alt="A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of 'Statue Of Unity', a memorial to Sardar Vallabhbhai Patel, on October 31, 2018." data-url="img/KLN_0531.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0512.jpg" alt="A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of 'Statue Of Unity', a memorial to Sardar Vallabhbhai Patel, on October 31, 2018." data-url="img/KLN_0512.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0534.jpg" alt="A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of 'Statue Of Unity', a memorial to Sardar Vallabhbhai Patel, on October 31, 2018." data-url="img/KLN_0534.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0539.jpg" alt="A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of 'Statue Of Unity', a memorial to Sardar Vallabhbhai Patel, on October 31, 2018." data-url="img/KLN_0539.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0567.jpg" alt="A Delegation from Gujarat met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 15th Oct 2018,Monday and invited the Governor to attend the Inauguration of 'Statue Of Unity', a memorial to Sardar Vallabhbhai Patel, on October 31, 2018." data-url="img/KLN_0567.jpg">

    <div class="clearfix"></div>
    <h4>Mr. Kojiro Uchiyama, Consul-General of Japan in Chennai met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th Oct 2018,Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0355.jpg" alt="Mr. Kojiro Uchiyama, Consul-General of Japan in Chennai met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th Oct 2018,Friday." data-url="img/KLN_0355.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0350.jpg" alt="Mr. Kojiro Uchiyama, Consul-General of Japan in Chennai met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 12th Oct 2018,Friday." data-url="img/KLN_0350.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9356.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9356.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9361.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9361.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9370.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9370.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9379.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9379.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9384.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9384.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9390.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9390.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9392.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9392.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9407.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9407.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9419.jpg" alt="Hon'ble Governor Shri ESL Narasimhan addressed the participants at the 69th TB seal sale campaign, jointly organised by the TB Associations of Andhra Pradesh and Telangana at the samskruthi community center at Raj Bhavan on 3rd Oct 2018, Wednesday." data-url="img/KLN_9419.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9246.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_9246.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9277.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_9277.jpg">
        <img class="fs-gal" src="img/thumb/KLN_924.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_924.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9261.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_9261.jpg">
        <img class="fs-gal" src="img/thumb/KLN_926.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_926.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9321.jpg" alt="Hon'ble Governor ESL Narasimhan addressed IFS trainees at Raj Bhavan on 3rd Oct 2018." data-url="img/KLN_9321.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan seen welcoming Hon'ble Vice President of India Sri M. Venkaiah Naidu at Hyderabad on 2nd Oct 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9031.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan seen welcoming Hon'ble Vice President of India Sri M. Venkaiah Naidu at Hyderabad on 2nd Oct 2018, Tuesday." data-url="img/KLN_9031.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan visited Bapu Ghat at Langer House, Hyderabad on 2nd Oct 2018 Tuesday and paid tributes to Mahatma Gandhi on his 150th Birth Anniversary.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8699.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited Bapu Ghat at Langer House, Hyderabad on 2nd Oct 2018 Tuesday and paid tributes to Mahatma Gandhi on his 150th Birth Anniversary." data-url="img/KLN_8699.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8959.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan visited Bapu Ghat at Langer House, Hyderabad on 2nd Oct 2018 Tuesday and paid tributes to Mahatma Gandhi on his 150th Birth Anniversary." data-url="img/KLN_8959.jpg">

    <div class="clearfix"></div>
    <h4>Dr. Adnan Altay Altinors, Consul General of the Republic of Turkey in Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 01st Oct 2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8565.jpg" alt="Dr. Adnan Altay Altinors, Consul General of the Republic of Turkey in Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 01st Oct 2018, Monday." data-url="img/KLN_8565.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8560.jpg" alt="Dr. Adnan Altay Altinors, Consul General of the Republic of Turkey in Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 01st Oct 2018, Monday." data-url="img/KLN_8560.jpg">

    <div class="clearfix"></div>
    <h4>Badminton player Ms. Nelakurthi Sikki Reddy, Arjuna Awardee met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-09-2018, Thursday. </h4>
        <img class="fs-gal" src="img/thumb/KLN_8225.jpg" alt="Badminton player Ms. Nelakurthi Sikki Reddy, Arjuna Awardee met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-09-2018, Thursday." data-url="img/KLN_8225.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8230.jpg" alt="Badminton player Ms. Nelakurthi Sikki Reddy, Arjuna Awardee met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-09-2018, Thursday." data-url="img/KLN_8230.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8236.jpg" alt="Badminton player Ms. Nelakurthi Sikki Reddy, Arjuna Awardee met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-09-2018, Thursday." data-url="img/KLN_8236.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8248.jpg" alt="Badminton player Ms. Nelakurthi Sikki Reddy, Arjuna Awardee met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 27-09-2018, Thursday." data-url="img/KLN_8248.jpg">

    <div class="clearfix"></div>
    <h4>H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8093.jpg" alt="H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday." data-url="img/KLN_8093.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8121.jpg" alt="H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday." data-url="img/KLN_8121.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8117.jpg" alt="H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday." data-url="img/KLN_8117.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8105.jpg" alt="H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday." data-url="img/KLN_8105.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8135.jpg" alt="H.E. Ms. Linda Dessau, Hon'ble Governor of Victoria, Australia and Ms. Susan Grace, Australian Consulate General met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 26-09-2018, Wednesday." data-url="img/KLN_8135.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7766.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7766.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7679.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7679.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7741.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7741.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7781.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7781.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7829.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7829.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7880.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7880.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7813.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7813.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7823.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7823.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7904.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7904.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7908.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7908.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7922.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7922.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7970.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan flagged off the Ameerpet-LB Nagar Metro line from Ameerpet, Hyderabad on 24-09-2018, Monday." data-url="img/KLN_7970.jpg">

    <div class="clearfix"></div>
    <h4>Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6461.jpg" alt="Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday." data-url="img/KLN_6461.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6435.jpg" alt="Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday." data-url="img/KLN_6435.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6472.jpg" alt="Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday." data-url="img/KLN_6472.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6398.jpg" alt="Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday." data-url="img/KLN_6398.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6449.jpg" alt="Sri E.S.L. Narasimhan, Hon'ble Governor participated as Chief Guest along with Lady Governor Smt. Vimala Narasimhan, at the World Alzheimer's Day organised jointly by Telangana chapter of Indian Red Cross Society and Nightingales Trust Dementia Day Care Center held at Hitech City, Hyderabad on 21-09-2018, Friday." data-url="img/KLN_6449.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'.</h4>
        <img class="fs-gal sm" src="img/thumb/KLN_5037.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5037.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5030.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5030.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5042.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5042.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5002.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5002.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5062.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5062.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5048.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 11th Meeting of the Asia Network on Corporate Governance of State-owned Enterprises organised by Institute of Public Enterprises in association with OECD and Korea Institute of Public Finance, held at Hyderabad on 6th Sep 2018, Thursday on the theme of 'Responsible Business Conduct in State-owned Enterprises'." data-url="img/KLN_5048.jpg">

    <div class="clearfix"></div>
    <h4>Prof. Appa Rao Podile, Vice Chancellor, University of Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 5th Sep 2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4981.jpg" alt="Prof. Appa Rao Podile, Vice Chancellor, University of Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 5th Sep 2018, Wednesday." data-url="img/KLN_4981.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4982.jpg" alt="Prof. Appa Rao Podile, Vice Chancellor, University of Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 5th Sep 2018, Wednesday." data-url="img/KLN_4982.jpg">

    <div class="clearfix"></div>
    <h4>Dr. Kodela Siva Prasad Rao, Speaker, Andhra Pradesh Legislative Assembly met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28th August 2018 Tuesday. </h4>
        <img class="fs-gal" src="img/thumb/KLN_3426.jpg" alt="Dr. Kodela Siva Prasad Rao, Speaker, Andhra Pradesh Legislative Assembly met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28th August 2018 Tuesday." data-url="img/KLN_3426.jpg">
        <img class="fs-gal" src="img/thumb/KLN_341.jpg" alt="Dr. Kodela Siva Prasad Rao, Speaker, Andhra Pradesh Legislative Assembly met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 28th August 2018 Tuesday." data-url="img/KLN_341.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice-President of India Sri M. Venkaiah Naidu at Begumpet Airport on 28th August 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_3514.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice-President of India Sri M. Venkaiah Naidu at Begumpet Airport on 28th August 2018, Tuesday." data-url="img/KLN_3514.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3575.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan welcomed Hon'ble Vice-President of India Sri M. Venkaiah Naidu at Begumpet Airport on 28th August 2018, Tuesday." data-url="img/KLN_3575.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_4449.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4449.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4521.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4521.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4465.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4465.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4480.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4480.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4558.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4558.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4563.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4563.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4568.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the 93rd Foundation Course for AIS and CCS Officers held at Dr. MCR HRD Institute, Hyderabad, on 27th Aug 2018, Monday." data-url="img/KLN_4568.jpg">
    <div class="clearfix"></div>
    <h4>"AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018."</h4>
        <img class="fs-gal" src="img/thumb/KLN_2426.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2426.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2391.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2391.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2399.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2399.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2406.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2406.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2446.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2446.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2484.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2484.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2501.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2501.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_2525.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2525.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2543.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2543.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2377.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2377.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2551.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2551.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2558.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2558.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2585.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2585.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2590.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2590.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2610.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2610.jpg">
        <img class="fs-gal" src="img/thumb/KLN_261.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_261.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2656.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2656.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2659.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2659.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2679.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2679.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2683.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2683.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2896.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2896.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2904.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2904.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2909.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2909.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2873.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2873.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2626.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2626.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2979.jpg" alt="'AT HOME held at Raj Bhavan, Hyderabad on the occasion of 72nd Independence Day 15th August 2018.'" data-url="img/KLN_2979.jpg">

    <div class="clearfix"></div>
    <h4>Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1310.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1310.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1384.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1384.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1391.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1391.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1400.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1400.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1404.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1404.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1408.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1408.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1413.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1413.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1416.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1416.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1421.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1421.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1423.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1423.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1438.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1438.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1452.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1452.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1459.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1459.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1486.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1486.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1495.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1495.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1813.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1813.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1817.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1817.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1827.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1827.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1850.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1850.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1863.jpg" alt="Governor E.S.L. Narasimhan participated in the 2nd Annual General meeting of the Telangana Chapter of Indian Red Cross society &amp; presented awards, mementos to District Collectors and voluntary organisations on 10.08.2018, Friday." data-url="img/KLN_1863.jpg">

    <div class="clearfix"></div>
    <h4>Brig. B. Chandrasekhar, Chief Postmaster General, Telangana Circle, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 10.08.2018, Friday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_1167.jpg" alt="Brig. B. Chandrasekhar, Chief Postmaster General, Telangana Circle, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 10.08.2018, Friday." data-url="img/KLN_1167.jpg">
        <img class="fs-gal" src="img/thumb/KLN_117.jpg" alt="Brig. B. Chandrasekhar, Chief Postmaster General, Telangana Circle, Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 10.08.2018, Friday." data-url="img/KLN_117.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0807.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0807.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0814.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0814.jpg">
        <img class="fs-gal" src="img/thumb/KLN_081.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_081.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0818.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0818.jpg">
        <img class="fs-gal" src="img/thumb/KLN_089.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_089.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0820.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0820.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0823.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0823.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0827.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0827.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0835.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0835.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0845.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0845.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0872.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0872.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0874.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended the Conference of Vice Chancellors of Telangana State Universities organised by the Telangana State Council of Higher Education at Dr. B.R. Ambedkar University on 08th Aug 2018, Wednesday." data-url="img/KLN_0874.jpg">

    <div class="clearfix"></div>
    <h4>Sri Kadiyam Srihari, Telangana Dy. Chief Minister met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08.08.2018, Wednesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0792.jpg" alt="Sri Kadiyam Srihari, Telangana Dy. Chief Minister met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 08.08.2018, Wednesday." data-url="img/KLN_0792.jpg">

    <div class="clearfix"></div>
    <h4>Visit of Hon'ble President of India Shri Ramnath Kovind to Hyderabad on 4 &amp; 5th August, 2018.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9328.jpg" alt="Visit of Hon'ble President of India Shri Ramnath Kovind to Hyderabad on 4 &amp; 5th August, 2018." data-url="img/KLN_9328.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9330.jpg" alt="Visit of Hon'ble President of India Shri Ramnath Kovind to Hyderabad on 4 &amp; 5th August, 2018." data-url="img/KLN_9330.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9420.jpg" alt="Visit of Hon'ble President of India Shri Ramnath Kovind to Hyderabad on 4 &amp; 5th August, 2018." data-url="img/KLN_9420.jpg">
        <img class="fs-gal" src="img/thumb/DSC_0995.jpg" alt="Visit of Hon'ble President of India Shri Ramnath Kovind to Hyderabad on 4 &amp; 5th August, 2018." data-url="img/DSC_0995.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_9032.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9032.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9043.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9043.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9055.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9055.jpg">
        <img class="fs-gal" src="img/thumb/KLN_908.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_908.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9101.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9101.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9127.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9127.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9209.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9209.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9211.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9211.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9217.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9217.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9228.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9228.jpg">
        <img class="fs-gal" src="img/thumb/KLN_923.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_923.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9237.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9237.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9255.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9255.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9142.jpg" alt="Hon'ble Governor participated in Haritha Haram programme held at Raj Bhavan on 2nd Aug 2018, Thursday." data-url="img/KLN_9142.jpg">

    <div class="clearfix"></div>
    <h4>Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8346.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8346.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8361.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8361.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8384.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8384.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8400.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8400.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8424.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8424.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8501.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8501.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8512.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8512.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8534.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8534.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8543.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8543.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8575.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8575.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8611.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8611.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8620.jpg" alt="Hon' ble Governor participated in green challenge at Raj Bhavan on 31st July 2018, Tuesday." data-url="img/KLN_8620.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_7633.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7633.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7754.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7754.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7762.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7762.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7777.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7777.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7788.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7788.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7792.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7792.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7865.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7865.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7874.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7874.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7923.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7923.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7940.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7940.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7959.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7959.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7997.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_7997.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8003.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8003.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8033.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8033.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8040.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8040.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8059.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8059.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8085.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8085.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8103.jpg" alt="Governor of Andhra Pradesh and Telangana Sri E.S.L. Narasimhan visited his alma mater Little Flower at Chirag Ali Lane, Hyderabad on 31st July 2018,Tuesday." data-url="img/KLN_8103.jpg">

    <div class="clearfix"></div>
    <h4>Prof. Ghanta Chakrapani, Chairman, TSPSC and members met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st july 2018,Tuesday. Hon'ble Governor released the Commission's Annual Report for 2016-17.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8183.jpg" alt="Prof. Ghanta Chakrapani, Chairman, TSPSC and members met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st july 2018,Tuesday. Hon'ble Governor released the Commission's Annual Report for 2016-17." data-url="img/KLN_8183.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8189.jpg" alt="Prof. Ghanta Chakrapani, Chairman, TSPSC and members met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st july 2018,Tuesday. Hon'ble Governor released the Commission's Annual Report for 2016-17." data-url="img/KLN_8189.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8205.jpg" alt="Prof. Ghanta Chakrapani, Chairman, TSPSC and members met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st july 2018,Tuesday. Hon'ble Governor released the Commission's Annual Report for 2016-17." data-url="img/KLN_8205.jpg">

    <div class="clearfix"></div>
    <h4>Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on "BC Note Book : Indian Constitution - Issues relating to Backward Classes" brought out by the Commission.</h4>
        <img class="fs-gal" src="img/thumb/KLN_8129.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8129.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8140.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8140.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8145.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8145.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8158.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8158.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8164.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8164.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8176.jpg" alt="Sri B.S. Ramulu, Chairman, Telangana State Backward Classes Commission along with Members of the Commission and Smt. Anita Rajendra, Member Secretary met the Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 31st July 2018, Tuesday and presented to him a copy of the book on 'BC Note Book : Indian Constitution - Issues relating to Backward Classes' brought out by the Commission." data-url="img/KLN_8176.jpg">

    <div class="clearfix"></div>
    <h4>Prof. U.B. Desai, Director, IIT Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 24th July 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6660.jpg" alt="Prof. U.B. Desai, Director, IIT Hyderabad met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on 24th July 2018, Tuesday." data-url="img/KLN_6660.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_6271.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6271.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6443.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6443.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6292.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6292.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6485.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6485.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6490.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6490.jpg">
        <img class="fs-gal" src="img/thumb/KLN_6551.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan participated as Chief Guest at the Income Tax Day celebrations held at Hyderabad on 24th July 2018, Tuesday." data-url="img/KLN_6551.jpg">

    <div class="clearfix"></div>
    <h4>Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday.</h4>
        <img class="fs-gal" src="img/thumb/KLN_5295.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5295.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5274.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5274.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5312.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5312.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5316.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5316.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5337.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5337.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5344.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5344.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5375.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5375.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5265.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5265.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5207.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5207.jpg">
        <img class="fs-gal" src="img/thumb/KLN_5257.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_5257.jpg">
        <img class="fs-gal" src="img/thumb/KLN_7974.jpg" alt="Governor of Telangana and Andhra Pradesh Sri E.S.L. Narasimhan administered oath of office to Hon'ble Sri Justice Thottathil Bhaskaran Nair Radhakrishnan as Chief Justice of the High Court of Judicature at Hyderabad for the State of Telangana and the State of Andhra Pradesh at a swearing ceremony held at 11.00 am at Raj Bhavan, on 7th July 2018, Saturday." data-url="img/KLN_7974.jpg">

    <div class="clearfix"></div>
    <h4>H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday</h4>
        <img class="fs-gal" src="img/thumb/KLN_4052.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_4052.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4017.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_4017.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4028.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_4028.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3857.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_3857.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3841.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_3841.jpg">
        <img class="fs-gal" src="img/thumb/KLN_4048.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_4048.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3977.jpg" alt="H.E. Governor bids farewell to retiring members at Raj Bhavan on 30th June 2018, Saturday" data-url="img/KLN_3977.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries</h4>
        <img class="fs-gal" src="img/thumb/KLN_3346.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3346.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3605.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3605.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3596.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3596.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3697.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3697.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3494.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3494.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3498.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3498.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3510.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3510.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3526.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3526.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3542.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3542.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3547.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3547.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3562.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3562.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3587.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3587.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3414.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Model Legal Services Camp organised by the Telangana Legal Services Authority at Hyderabad on 30th June 2018, Saturday. On this occasion Hon'ble Governor handed over sewing machines, tricycles to the beneficiaries" data-url="img/KLN_3414.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Seminar on "National Security" at the Sardar Vallabhbhai Patel National Police Academy, on 29.06.2018, Friday</h4>
        <img class="fs-gal" src="img/thumb/KLN_3091.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Seminar on 'National Security' at the Sardar Vallabhbhai Patel National Police Academy, on 29.06.2018, Friday" data-url="img/KLN_3091.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3104.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Seminar on 'National Security' at the Sardar Vallabhbhai Patel National Police Academy, on 29.06.2018, Friday" data-url="img/KLN_3104.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3125.jpg" alt="Hon'ble Governor Sri E.S.L. Narasimhan attended as Chief Guest at the Seminar on 'National Security' at the Sardar Vallabhbhai Patel National Police Academy, on 29.06.2018, Friday" data-url="img/KLN_3125.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday</h4>
        <img class="fs-gal" src="img/thumb/KLN_2671.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2671.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2734.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2734.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2698.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2698.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2752.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2752.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2770.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2770.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2806.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2806.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2882.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2882.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2928.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2928.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2916.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2916.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2963.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2963.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2983.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2983.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2989.jpg" alt="Hon'ble Governor of AP &amp; Telangana Sri ESL Narasimhan, conferred Engineering Degrees to 20 officers of TES-29 (Technical Entry Scheme) Course at the 93rd Convocation Ceremony at Military College of Electronics &amp; Mechanical Engineering (MCEME), Secunderabad on 28th June 2018, Thursday" data-url="img/KLN_2989.jpg">

    <div class="clearfix"></div>
    <h4>Indian Ambassadors to Laos, Seychelles, Finland and Peru met Hon'ble Governor on 27.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Telangana</h4>
        <img class="fs-gal" src="img/thumb/KLN_2451.jpg" alt="Indian Ambassadors to Laos, Seychelles, Finland and Peru met Hon'ble Governor on 27.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Telangana" data-url="img/KLN_2451.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2459.jpg" alt="Indian Ambassadors to Laos, Seychelles, Finland and Peru met Hon'ble Governor on 27.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Telangana" data-url="img/KLN_2459.jpg">

    <div class="clearfix"></div>
    <h4>Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh</h4>
        <img class="fs-gal" src="img/thumb/KLN_2349.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2349.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2354.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2354.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2358.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2358.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2343.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2343.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2375.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2375.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2410.jpg" alt="Indian Ambassadors to Spain, Austria, Vietnam and Kuwait met Hon'ble Governor on 26.06.2018 at Raj Bhavan &amp; discussed investment potential for the state of Andhra Pradesh" data-url="img/KLN_2410.jpg">

    <div class="clearfix"></div>
    <h4>All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018</h4>
        <img class="fs-gal" src="img/thumb/KLN_1835.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_1835.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1888.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_1888.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2070.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_2070.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2107.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_2107.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2133.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_2133.jpg">
        <img class="fs-gal sm" src="img/thumb/KLN_2146.jpg" alt="All India Youth Campaign of Brahma Kumaris visits Raj Bhavan on 23rd June 2018" data-url="img/KLN_2146.jpg">

    <div class="clearfix"></div>
    <h4>4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018</h4>
        <img class="fs-gal" src="img/thumb/KLN_0897.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0897.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0899.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0899.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0907.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0907.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0932.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0932.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0947.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0947.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0950.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0950.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0957.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0957.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0963.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0963.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0973.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_0973.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1002.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1002.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1036.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1036.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1065.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1065.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1089.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1089.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1093.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1093.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1157.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1157.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1161.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1161.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1175.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1175.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1194.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1194.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1197.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1197.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1203.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1203.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1218.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1218.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1240.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan on 21st June 2018" data-url="img/KLN_1240.jpg">

    <div class="clearfix"></div>
    <h4>4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018</h4>
        <img class="fs-gal" src="img/thumb/KLN_1292.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1292.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1294.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1294.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1276.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1276.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1279.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1279.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1280.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1280.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1336.jpg" alt="4th International Yoga Day Celebrations held at Raj Bhavan School on 21st June 2018" data-url="img/KLN_1336.jpg">

    <div class="clearfix"></div>
    <h4>Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day.</h4>
        <img class="fs-gal" src="img/thumb/KLN_0008.jpg" alt="Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day." data-url="img/KLN_0008.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0032.jpg" alt="Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day." data-url="img/KLN_0032.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0093.jpg" alt="Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day." data-url="img/KLN_0093.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0154.jpg" alt="Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day." data-url="img/KLN_0154.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9871.jpg" alt="Blood Donation Camp held at Raj Bhavan on 14th June 2018, Thursday, on the eve of World Blood Donors Day." data-url="img/KLN_9871.jpg">

    <div class="clearfix"></div>
    <h4>Spiritual delegation of Egyptian Quaris led by Moulana Peer Syed Shabbir Naqshbandi, President of All India Religious Leaders Association, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on June 11, 2018</h4>
        <img class="fs-gal" src="img/thumb/KLN_9292.jpg" alt="Spiritual delegation of Egyptian Quaris led by Moulana Peer Syed Shabbir Naqshbandi, President of All India Religious Leaders Association, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on June 11, 2018" data-url="img/KLN_9292.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9303.jpg" alt="Spiritual delegation of Egyptian Quaris led by Moulana Peer Syed Shabbir Naqshbandi, President of All India Religious Leaders Association, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on June 11, 2018" data-url="img/KLN_9303.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9311.jpg" alt="Spiritual delegation of Egyptian Quaris led by Moulana Peer Syed Shabbir Naqshbandi, President of All India Religious Leaders Association, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on June 11, 2018" data-url="img/KLN_9311.jpg">

    <div class="clearfix"></div>
    <h4>Ramzan Iftar hosted at Raj Bhavan on 10-06-2018</h4>
        <img class="fs-gal" src="img/thumb/KLN_8855.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8855.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8865.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8865.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8892.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8892.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8908.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8908.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8920.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8920.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8967.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8967.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9010.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9010.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9012.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9012.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9015.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9015.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9039.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9039.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9061.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9061.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9064.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9064.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9067.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9067.jpg">
        <img class="fs-gal" src="img/thumb/KLN_907.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_907.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9080.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9080.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8652.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8652.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8756.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8756.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8884.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8884.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9145.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9145.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9256.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9256.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8655.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8655.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8761.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8761.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8889.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8889.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9161.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9161.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9259.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9259.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8657.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8657.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8766.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8766.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8901.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8901.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9164.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9164.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9262.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9262.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8658.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8658.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8767.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8767.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8909.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8909.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9186.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9186.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9263.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9263.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8661.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8661.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8772.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8772.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8914.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8914.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9210.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9210.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9264.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9264.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8662.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8662.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8810.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8810.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8918.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8918.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9224.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9224.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9267.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9267.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8671.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8671.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8812.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8812.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8931.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8931.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9236.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9236.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9271.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9271.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8682.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8682.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8817.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8817.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8934.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8934.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9241.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9241.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9272.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9272.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8739.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8739.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8819.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8819.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8950.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8950.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9242.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9242.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9274.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9274.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8742.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8742.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8826.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8826.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8976.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8976.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9243.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9243.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9276.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9276.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8747.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8747.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8830.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8830.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9005.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9005.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9244.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9244.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9279.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9279.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8750.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8750.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8838.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8838.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9019.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9019.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9247.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9247.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9248.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9248.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8753.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8753.jpg">
        <img class="fs-gal" src="img/thumb/KLN_8882.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_8882.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9033.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9033.jpg">
        <img class="fs-gal" src="img/thumb/KLN_9248.jpg" alt="Ramzan Iftar hosted at Raj Bhavan on 10-06-2018" data-url="img/KLN_9248.jpg">

    <div class="clearfix"></div>
    <h4>Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018</h4>
        <img class="fs-gal" src="img/thumb/ugadi4_1.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_1.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_2.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_2.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_3.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_3.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_4.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_4.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_5.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_5.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_6.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_6.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_7.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_7.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_8.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_8.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_9.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_9.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_10.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_10.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_11.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_11.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_12.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_12.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_13.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_13.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_14.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_14.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_15.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_15.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_16.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_16.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_17.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_17.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_18.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_18.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_20.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_20.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_21.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_21.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_22.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_22.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_23.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_23.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_24.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_24.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_25.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_25.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_26.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi3_11.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_27.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi3_12.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_28.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi3_13.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_29.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_29.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_30.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_30.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_31.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_31.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_32.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_32.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_33.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_33.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_34.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_34.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_35.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_35.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_36.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_36.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_37.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_37.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_38.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_38.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_39.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_39.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_40.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_40.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_41.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_41.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_43.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_43.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_44.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_44.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_45.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_45.jpg">
        <img class="fs-gal" src="img/thumb/ugadi4_46.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi4_46.jpg">
        <img class="fs-gal" src="img/thumb/ugadi3_4.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi3_4.jpg">
        <img class="fs-gal" src="img/thumb/ugadi2_7.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi2_7.jpg">
        <img class="fs-gal" src="img/thumb/ugadi1_1.jpg" alt="Pre-Ugadi Celebrations at Raj Bhavan on 17th March, 2018" data-url="img/ugadi1_1.jpg">

    <div class="clearfix"></div>
    <h4>Mr. Kenneth Juster, U.S. Ambassador to India accompanied by Ms. Katherine Hadda, US Consul General, Hyderabad, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Wednesday, 28th, Feb. 2018</h4>
        <img class="fs-gal" src="img/thumb/Visit-5.jpg" alt="Mr. Kenneth Juster, U.S. Ambassador to India accompanied by Ms. Katherine Hadda, US Consul General, Hyderabad, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Wednesday, 28th, Feb. 2018" data-url="img/Visit-5.jpg">
        <img class="fs-gal" src="img/thumb/Visit-6.jpg" alt="Mr. Kenneth Juster, U.S. Ambassador to India accompanied by Ms. Katherine Hadda, US Consul General, Hyderabad, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Wednesday, 28th, Feb. 2018" data-url="img/Visit-6.jpg">
        <img class="fs-gal" src="img/thumb/Visit-7.jpg" alt="Mr. Kenneth Juster, U.S. Ambassador to India accompanied by Ms. Katherine Hadda, US Consul General, Hyderabad, met Hon'ble Governor Sri E.S.L. Narasimhan at Raj Bhavan on Wednesday, 28th, Feb. 2018" data-url="img/Visit-7.jpg">

    <div class="clearfix"></div>
    <h4>His Highness Aga Khan visited Raj Bhavan &amp; met Hon'ble Governor on Tuesday, 27th Feb. 2018</h4>
        <img class="fs-gal" src="img/thumb/Visit-1.jpg" alt="His Highness Aga Khan visited Raj Bhavan &amp; met Hon'ble Governor on Tuesday, 27th Feb. 2018" data-url="img/Visit-1.jpg">
        <img class="fs-gal" src="img/thumb/Visit-2.jpg" alt="His Highness Aga Khan visited Raj Bhavan &amp; met Hon'ble Governor on Tuesday, 27th Feb. 2018" data-url="img/Visit-2.jpg">
        <img class="fs-gal" src="img/thumb/Visit-3.jpg" alt="His Highness Aga Khan visited Raj Bhavan &amp; met Hon'ble Governor on Tuesday, 27th Feb. 2018" data-url="img/Visit-3.jpg">

    <div class="clearfix"></div>
    <h4>"AT HOME" held at Raj Bhavan on the occasion of Republic Day, 2018</h4>
        <img class="fs-gal" src="img/thumb/Home2_1.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_1.jpg">
        <img class="fs-gal" src="img/thumb/Home2_2.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_2.jpg">
        <img class="fs-gal" src="img/thumb/Home2_3.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_3.jpg">
        <img class="fs-gal" src="img/thumb/Home2_4.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_4.jpg">
        <img class="fs-gal" src="img/thumb/Home2_5.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_5.jpg">
        <img class="fs-gal" src="img/thumb/Home2_6.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_6.jpg">
        <img class="fs-gal" src="img/thumb/Home2_7.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_7.jpg">
        <img class="fs-gal" src="img/thumb/Home2_8.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_8.jpg">
        <img class="fs-gal" src="img/thumb/Home2_9.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_9.jpg">
        <img class="fs-gal" src="img/thumb/Home2_10.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_10.jpg">
        <img class="fs-gal" src="img/thumb/Home2_11.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_11.jpg">
        <img class="fs-gal" src="img/thumb/Home2_12.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home2_12.jpg">
        <img class="fs-gal" src="img/thumb/Home1_2.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_2.jpg">
        <img class="fs-gal" src="img/thumb/Home1_3.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_3.jpg">
        <img class="fs-gal" src="img/thumb/Home1_4.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_4.jpg">
        <img class="fs-gal" src="img/thumb/Home1_5.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_5.jpg">
        <img class="fs-gal" src="img/thumb/Home1_6.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_6.jpg">
        <img class="fs-gal" src="img/thumb/Home1_7.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_7.jpg">
        <img class="fs-gal" src="img/thumb/Home1_8.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_8.jpg">
        <img class="fs-gal" src="img/thumb/Home1_9.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_9.jpg">
        <img class="fs-gal" src="img/thumb/Home1_10.jpg" alt="'AT HOME' held at Raj Bhavan on the occasion of Republic Day, 2018" data-url="img/Home1_10.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 </h4>
        <img class="fs-gal" src="img/thumb/Flag3_1.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_1.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_2.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_2.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_3.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_3.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_4.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_4.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_5.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_5.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_6.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_6.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_7.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_7.jpg">
        <img class="fs-gal" src="img/thumb/Flag3_8.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag3_8.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_1.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_1.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_2.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_2.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_3.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_3.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_4.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_4.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_5.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_5.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_6.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_6.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_7.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_7.jpg">
        <img class="fs-gal" src="img/thumb/Flag2_8.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag2_8.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_2.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_2.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_3.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_3.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_4.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_4.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_5.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_5.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_6.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_6.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_7.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_7.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_8.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_8.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_9.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_9.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_10.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_10.jpg">
        <img class="fs-gal" src="img/thumb/Flag1_11.jpg" alt="Hon'ble Governor, Shri E.S.L. Narasimhan unfurled the National Flag on the occasion of Republic Day on 26th January, 2018 " data-url="img/Flag1_11.jpg">

    <div class="clearfix"></div>
    <h4>Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017 </h4>
        <img class="fs-gal" src="img/thumb/Banquet3_1.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_1.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_2.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_2.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_3.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_3.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_4.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_4.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_5.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_5.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_6.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_6.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_7.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_7.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_8.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_8.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_9.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_9.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_10.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_10.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_11.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_11.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_12.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_12.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_13.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_13.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_14.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_14.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_15.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_15.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_16.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_16.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_17.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_17.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_18.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_18.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_19.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_19.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_20.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_20.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_21.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_21.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_22.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_22.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_23.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_23.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_24.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_24.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_25.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_25.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_26.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_26.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_27.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_27.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_28.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_28.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_29.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_29.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_30.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_30.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_31.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_31.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_32.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_32.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_33.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_33.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_34.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_34.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_35.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_35.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_36.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_36.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_37.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_37.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_38.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_38.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_39.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_39.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_40.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_40.jpg">
        <img class="fs-gal" src="img/thumb/Banquet3_41.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet3_41.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_1.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_1.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_2.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_2.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_3.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_3.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_4.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_4.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_5.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_5.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_7.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_7.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_8.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_8.jpg">
        <img class="fs-gal" src="img/thumb/Banquet2_9.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet2_9.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_2.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_2.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_3.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_3.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_4.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_4.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_5.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_5.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_6.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_6.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_7.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_7.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_8.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_8.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_9.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_9.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_10.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_10.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_11.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_11.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_12.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_12.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_13.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_13.jpg">
        <img class="fs-gal" src="img/thumb/Banquet1_14.jpg" alt="Banquet held at Raj Bhavan in the Honour of Hon'ble President of India on 24th December, 2017" data-url="img/Banquet1_14.jpg">

    <div class="clearfix"></div>
    <h4>Christmas celebrations at Raj Bhavan on 20th Dec 2017 </h4>
        <img class="fs-gal" src="img/thumb/KLN_2852.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2852.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2878.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2878.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2884.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2884.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2897.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2897.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2913.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2913.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2953.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_2953.jpg">
        <img class="fs-gal" src="img/thumb/KLN_3012.jpg" alt="Christmas celebrations at Raj Bhavan on 20th Dec 2017" data-url="img/KLN_3012.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017 </h4>
        <img class="fs-gal" src="img/thumb/DEC_7529.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/DEC_7529.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2409.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2409.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2490.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2490.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2495.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2495.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2528.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2528.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2537.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2537.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2586.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2586.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2635.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2635.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2646.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2646.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2086.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2086.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2712.jpg" alt="Hon'ble President visit to Buddha Statue, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2712.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017 </h4>
        <img class="fs-gal" src="img/thumb/KLN_1906.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_1906.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1913.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_1913.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2003.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2003.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2014.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2014.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2022.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2022.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2027.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2027.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0951.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_0951.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2050.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2050.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2075.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2075.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2086.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2086.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2139.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2139.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2161.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2161.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2206.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2206.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2289.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2289.jpg">
        <img class="fs-gal" src="img/thumb/KLN_2305.jpg" alt="Hon'ble President visit to Raj Bhavan School, Hyderabad on 20th Dec, 2017" data-url="img/KLN_2305.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017 </h4>
        <img class="fs-gal" src="img/thumb/KLN_0078.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0078.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0084.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0084.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0805.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0805.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0817.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0817.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0853.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0853.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0863.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0863.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0951.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0951.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0967.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0967.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0974.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0974.jpg">
        <img class="fs-gal" src="img/thumb/KLN_0986.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_0986.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1031.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1031.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1072.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1072.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1129.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1129.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1753.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1753.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1789.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1789.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1828.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1828.jpg">
        <img class="fs-gal" src="img/thumb/KLN_1837.jpg" alt="Hon'ble President visit to World Telugu Conference (Closing Ceremony), Hyderabad on 19th Dec, 2017" data-url="img/KLN_1837.jpg">

    <div class="clearfix"></div>
    <h4>Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017 </h4>
        <img class="fs-gal" src="img/thumb/DSC_3762.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_3762.jpg">
        <img class="fs-gal" src="img/thumb/DSC_3776.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_3776.jpg">
        <img class="fs-gal" src="img/thumb/DSC_3912.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_3912.jpg">
        <img class="fs-gal" src="img/thumb/DSC_9520.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_9520.jpg">
        <img class="fs-gal" src="img/thumb/DSC_9561.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_9561.jpg">
        <img class="fs-gal" src="img/thumb/DSC_9598.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_9598.jpg">
        <img class="fs-gal" src="img/thumb/DSC_9608.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/DSC_9608.jpg">
        <img class="fs-gal" src="img/thumb/GBD_4582.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/GBD_4582.jpg">
        <img class="fs-gal" src="img/thumb/IMG-20171129-WA0035.jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/IMG-20171129-WA0035.jpg">
        <img class="fs-gal" src="img/thumb/metro inauguration hyderabad (9).jpg" alt="Hyderabad Metro Rail inauguration by Hon'ble PM on 28.11.2017" data-url="img/metro inauguration hyderabad (9).jpg">

    <div class="clearfix"></div>
    <h4>Children's Day Celebrations at Raj Bhavan on 14th Nov 2017 </h4>
        <img class="fs-gal" src="img/thumb/1.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/1.jpg">
        <img class="fs-gal" src="img/thumb/2.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/2.jpg">
        <img class="fs-gal" src="img/thumb/3.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/3.jpg">
        <img class="fs-gal" src="img/thumb/4.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/4.jpg">
        <img class="fs-gal" src="img/thumb/5.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/5.jpg">
        <img class="fs-gal" src="img/thumb/6(2).jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/6(2).jpg">
        <img class="fs-gal" src="img/thumb/7(2).jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/7(2).jpg">
        <img class="fs-gal" src="img/thumb/8.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/8.jpg">
        <img class="fs-gal" src="img/thumb/9.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/9.jpg">
        <img class="fs-gal" src="img/thumb/10.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/10.jpg">
        <img class="fs-gal" src="img/thumb/11.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/11.jpg">
        <img class="fs-gal" src="img/thumb/12.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/12.jpg">
        <img class="fs-gal" src="img/thumb/13.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/13.jpg">
        <img class="fs-gal" src="img/thumb/14.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/14.jpg">
        <img class="fs-gal" src="img/thumb/15.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/15.jpg">
        <img class="fs-gal" src="img/thumb/16.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/16.jpg">
        <img class="fs-gal" src="img/thumb/17.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/17.jpg">
        <img class="fs-gal" src="img/thumb/18.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/18.jpg">
        <img class="fs-gal" src="img/thumb/19.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/19.jpg">
        <img class="fs-gal" src="img/thumb/20.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/20.jpg">
        <img class="fs-gal" src="img/thumb/21.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/21.jpg">
        <img class="fs-gal" src="img/thumb/22.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/22.jpg">
        <img class="fs-gal" src="img/thumb/23.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/23.jpg">
        <img class="fs-gal" src="img/thumb/24.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/24.jpg">
        <img class="fs-gal" src="img/thumb/25.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/25.jpg">
        <img class="fs-gal" src="img/thumb/26.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/26.jpg">
        <img class="fs-gal" src="img/thumb/27.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/27.jpg">
        <img class="fs-gal" src="img/thumb/28.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/28.jpg">
        <img class="fs-gal" src="img/thumb/29.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/29.jpg">
        <img class="fs-gal" src="img/thumb/30.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/30.jpg">
        <img class="fs-gal" src="img/thumb/31.jpg" alt="Children's Day Celebrations at Raj Bhavan on 14th Nov 2017" data-url="img/31.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor &amp; Lady Governor with Indian Badminton Stars K.Srikanth and H.S. Prannoy, appreciating their world class achievements at Raj Bhavan on 3rd Nov 2017
    </h4>
        <img class="fs-gal" src="img/thumb/01.jpg" alt="Hon'ble Governor &amp; Lady Governor with Indian Badminton Stars K.Srikanth and H.S. Prannoy, appreciating their world class achievements at Raj Bhavan on 3rd Nov 2017" data-url="img/01.jpg">
        <img class="fs-gal" src="img/thumb/02.jpg" alt="Hon'ble Governor &amp; Lady Governor with Indian Badminton Stars K.Srikanth and H.S. Prannoy, appreciating their world class achievements at Raj Bhavan on 3rd Nov 2017" data-url="img/02.jpg">
        <img class="fs-gal" src="img/thumb/03.jpg" alt="Hon'ble Governor &amp; Lady Governor with Indian Badminton Stars K.Srikanth and H.S. Prannoy, appreciating their world class achievements at Raj Bhavan on 3rd Nov 2017" data-url="img/03.jpg">
        <img class="fs-gal" src="img/thumb/04.jpg" alt="Hon'ble Governor &amp; Lady Governor with Indian Badminton Stars K.Srikanth and H.S. Prannoy, appreciating their world class achievements at Raj Bhavan on 3rd Nov 2017" data-url="img/04.jpg">

    <div class="clearfix"></div>
    <h4>Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017</h4>
        <img class="fs-gal" src="img/thumb/ss1.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss1.jpg">
        <img class="fs-gal" src="img/thumb/ss2.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss2.jpg">
        <img class="fs-gal" src="img/thumb/ss3.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss3.jpg">
        <img class="fs-gal" src="img/thumb/ss4.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss4.jpg">
        <img class="fs-gal sm" src="img/thumb/ss5.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss5.jpg">
        <img class="fs-gal sm" src="img/thumb/ss6.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss6.jpg">
        <img class="fs-gal sm" src="img/thumb/ss7.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss7.jpg">
        <img class="fs-gal sm" src="img/thumb/ss8.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss8.jpg">
        <img class="fs-gal" src="img/thumb/ss9.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss9.jpg">
        <img class="fs-gal" src="img/thumb/ss10.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss10.jpg">
        <img class="fs-gal" src="img/thumb/ss11.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss11.jpg">
        <img class="fs-gal" src="img/thumb/ss12.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss12.jpg">
        <img class="fs-gal" src="img/thumb/ss13.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss13.jpg">
        <img class="fs-gal" src="img/thumb/ss14.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss14.jpg">
        <img class="fs-gal" src="img/thumb/ss15.jpg" alt="Hon'ble Governor Felicitating Ace Badminton Player Sri Kidambi Srikanth at Raj Bhavan on 27th June 2017" data-url="img/ss15.jpg">

    <div class="clearfix"></div>
    <h4>International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017</h4>
        <img class="fs-gal" src="img/thumb/yoga1.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga1.jpg">
        <img class="fs-gal" src="img/thumb/yoga2.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga2.jpg">
        <img class="fs-gal" src="img/thumb/yoga3.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga3.jpg">
        <img class="fs-gal" src="img/thumb/yoga4.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga4.jpg">
        <img class="fs-gal" src="img/thumb/yoga5.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga5.jpg">
        <img class="fs-gal" src="img/thumb/yoga9.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga9.jpg">
        <img class="fs-gal" src="img/thumb/yoga10.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga10.jpg">
        <img class="fs-gal" src="img/thumb/yoga11.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga11.jpg">
        <img class="fs-gal" src="img/thumb/yoga12.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga12.jpg">
        <img class="fs-gal" src="img/thumb/yoga13.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga13.jpg">
        <img class="fs-gal" src="img/thumb/yoga14.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga14.jpg">
        <img class="fs-gal" src="img/thumb/yoga15.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga15.jpg">
        <img class="fs-gal" src="img/thumb/yoga18.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga18.jpg">
        <img class="fs-gal" src="img/thumb/yoga19.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga19.jpg">
        <img class="fs-gal" src="img/thumb/yoga23.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga23.jpg">
        <img class="fs-gal" src="img/thumb/yoga24.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga24.jpg">
        <img class="fs-gal" src="img/thumb/yoga25.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga25.jpg">
        <img class="fs-gal" src="img/thumb/yoga26.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga26.jpg">
        <img class="fs-gal" src="img/thumb/yoga27.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga27.jpg">
        <img class="fs-gal" src="img/thumb/yoga28.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga28.jpg">
        <img class="fs-gal" src="img/thumb/yoga30.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga30.jpg">
        <img class="fs-gal" src="img/thumb/yoga31.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga31.jpg">
        <img class="fs-gal" src="img/thumb/yoga33.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga33.jpg">
        <img class="fs-gal" src="img/thumb/yoga34.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga34.jpg">
        <img class="fs-gal" src="img/thumb/yoga35.jpg" alt="International Yoga Day Celebrations at Raj Bhavan held on 21st June 2017" data-url="img/yoga35.jpg">

    <div class="clearfix"></div>
    <h4>On the occasion of swearing-in-ceremony of the Governor of Telangana State</h4>
        <img class="fs-gal" src="img/thumb/DEV_8387.jpg" alt="On the occasion of swearing-in-ceremony of the Governor of Telangana State" data-url="img/DEV_8387.jpg">
        <img class="fs-gal" src="img/thumb/DEV_8398.jpg" alt="On the occasion of swearing-in-ceremony of the Governor of Telangana State" data-url="img/DEV_8398.jpg">
        <img class="fs-gal" src="img/thumb/DEV_8404.jpg" alt="On the occasion of swearing-in-ceremony of the Governor of Telangana State" data-url="img/DEV_8404.jpg">
        <img class="fs-gal" src="img/thumb/DEV_8408.jpg" alt="On the occasion of swearing-in-ceremony of the Governor of Telangana State" data-url="img/DEV_8408.jpg">
        <img class="fs-gal" src="img/thumb/DEV_8420.jpg" alt="On the occasion of swearing-in-ceremony of the Governor of Telangana State" data-url="img/DEV_8420.jpg">

    <div class="clearfix"></div>
    <h4>On the occasion of swearing-in-ceremony of the Chief Minister of Telangana State</h4>
        <img class="fs-gal" src="img/thumb/DEV_8653.jpg" alt="On the occasion of swearing-in-ceremony of the Chief Minister of Telangana State" data-url="img/DEV_8653.jpg">

    <div class="clearfix"></div>
    <h4>On the occasion of swearing-in-ceremony of the Chief Minister of Andhra Pradesh State</h4>
        <img class="fs-gal" src="img/thumb/DSC_0335.jpg" alt="On the occasion of swearing-in-ceremony of the Chief Minister of Andhra Pradesh State" data-url="img/DSC_0335.jpg">

    <div class="clearfix"></div>
    <h4>On the occasion of swearing-in-ceremony of the protem Speaker &amp; protem Chairman of Telangana State</h4>
        <img class="fs-gal" src="img/thumb/DSC_0025.jpg" alt="On the occasion of swearing-in-ceremony of the protem Speaker &amp; protem Chairman of Telangana State" data-url="img/DSC_0025.jpg">
        <img class="fs-gal" src="img/thumb/DSC_0017.jpg" alt="On the occasion of swearing-in-ceremony of the protem Speaker &amp; protem Chairman of Telangana State" data-url="img/DSC_0017.jpg">

                <div class="fs-gal-view" style="display: none;">
            <h1></h1>
            <div class="fs-gal-prev fs-gal-nav" alt="Previous picture" title="Previous picture"><i class="fa fa-chevron-circle-left fastyar" aria-hidden="true"></i></div>
            <div class="fs-gal-next fs-gal-nav" alt="Next picture" title="Next picture"><i class="fa fa-chevron-circle-right fastyar" aria-hidden="true"></i></div>
            <div class="fs-gal-close" alt="Close gallery" title="Close gallery"><i class="fa fa-times-circle fastyar" aria-hidden="true"></i></div>
            <img class="fs-gal-main" src="" alt="">
        </div> -->
 		
		 <%-- <c:forEach items="${images}" var="image">
			 <div>
			 	<h4>${image.title}</h4>
			 	<c:forEach items="${image.base64Imgs}" var="img">
			 		<img class="fs-gal sm" src="data:image/jpeg;base64,${img}" alt="${image.title}" data-url="data:image/jpeg;base64,${img}">
			 	</c:forEach>
			 </div>	
		 	<div class="clearfix"></div>
		 	<div infinite-scroll='loadMore()' infinite-scroll-distance='2'>
			    <div ng-if="pagedGal.length > 0" ng-repeat="image in pagedGal">
			 		<h4>{{image.title}}</h4>
			 		<img ng-repeat="img in image.base64Imgs" class="fs-gal sm" src="data:image/jpeg;base64,{{img}" alt="${image.title}" data-url="data:image/jpeg;base64,{{img}}">
			 	</div>
		    </div>
		</c:forEach> --%>
		
		<!-- <div infinite-scroll='loadMore()' infinite-scroll-distance='2'>
		    <div ng-if="pagedGal.length > 0" ng-repeat="image in pagedGal">
		 		<h4>{{image.title}}</h4>
		 		<img ng-repeat="img in image.base64Imgs" class="fs-gal sm" src="data:image/jpeg;base64,{{img}}" alt="{{image.title}}" data-url="data:image/jpeg;base64,{{img}}">
		 	</div>
		 	<div class="clearfix"></div>
	    </div> -->
	    <!-- <div ng-if="pagedGal.length > 0" ng-repeat="image in pagedGal">
		 		<h4>{{image.title}}</h4>
		 		<img ng-repeat="img in image.base64Imgs" class="fs-gal sm" src="data:image/jpeg;base64,{{img}}" alt="{{image.title}}" data-url="data:image/jpeg;base64,{{img}}">
	 	</div> -->
	 	<div infinite-scroll='loadMore()' infinite-scroll-distance='2'>
	 		<div ng-if="images.length > 0" ng-repeat="image in images" ng-cloak>
				<h4>{{image.title}}</h4>
		 		<img ng-repeat="img in image.base64Imgs" class="fs-gal sm" src="data:image/jpeg;base64,{{img}}" alt="{{image.title}}" data-url="data:image/jpeg;base64,{{img}}">
			</div>
		</div>
	 	
		
		<div class="fs-gal-view" style="display: none;">
            <h1></h1>
            <div class="fs-gal-prev fs-gal-nav" alt="Previous picture" title="Previous picture"><i class="fa fa-chevron-circle-left fastyar" aria-hidden="true"></i></div>
            <div class="fs-gal-next fs-gal-nav" alt="Next picture" title="Next picture"><i class="fa fa-chevron-circle-right fastyar" aria-hidden="true"></i></div>
            <div class="fs-gal-close" alt="Close gallery" title="Close gallery"><i class="fa fa-times-circle fastyar" aria-hidden="true"></i></div>
            <img class="fs-gal-main" src="" alt="">
        </div>
 </div>          

    
    </div>

            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
<footer id="footer" class="section-bg">

                <div class="row footer">	
                    <div class="">
                        <div class="col-md-12">
                        <p>2020 � Copyright by National Informatics Center</p>	
                           
                        </div>

                    </div>
                </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
	<%-- <div class="modal fade" id="wait_modal" tabindex="-1" role="dialog"
		aria-labelledby="WaitModalLabel" aria-hidden="true" data-backdrop="false">
		<div class="modal-dialog modal-vertical-centered" style="width: 200px; height: 200px">
			<div class="modal-body center">
				<img alt="Wait for Response" src="${pageContext.request.contextPath}/img/loader_wait.gif"/>
			</div>
		</div>
	</div> --%>
    <script>
        function blinker() {
            $('.blink_me').fadeOut(500);
            $('.blink_me').fadeIn(500);
        }
        setInterval(blinker, 1000);
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#myModal-pop").modal('show');
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
$(document).ready(function() {
    var interval = setInterval(function() {
        var momentNow = moment();
        $('#date-part').html(momentNow.format('DD-MMMM-YYYY,') + ' '
                            + momentNow.format('dddd')
                             .substring(0,10).toUpperCase());
        $('#time-part').html(momentNow.format('hh:mm:ss A'));
    }, 100);
    
    $('#stop-interval').on('click', function() {
        clearInterval(interval);
    });
});

 </script>
 <script>
    $(window).load(function(){
        $('.slider').fractionSlider({
            'fullWidth':            true,
            'controls':             true,
            'responsive':           true,
            'dimensions':           "1920,450",
            'timeout' :             5000,
            'increase':             true,
            'pauseOnHover':         true,
            'slideEndAnimation':    false,
            'autoChange':           true
        });
    });
</script>
</body>
</html>
