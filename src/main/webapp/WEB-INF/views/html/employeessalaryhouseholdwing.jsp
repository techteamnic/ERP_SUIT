<!DOCTYPE html>
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
   
  <meta http-equiv="Content-Security-Policy" content="default-src 'none'; script-src 'self' 'unsafe-inline'; connect-src 'self'; img-src 'self' data:; style-src 'self' 'unsafe-inline'; font-src 'self';">
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
						<b>STATEMENT SHOWING THE SCALE OF PAY AND BASIC PAY OF STAFF OFFICERS / STAFF OF GOVERNOR'S HOUSEHOLD, RAJ BHAVAN, HYDERABAD</b></a></h3>

                          <hr>
                           <div class=" wing">    

      
    <table width="100%" align="Center" class="table table-responsive table-bordered tablestyle">
     <thead>
<tr bgcolor="336666">
<th width="4%" align="center" class="2">Sl.No.</th>
<th width="25%" align="center" class="2">Name &amp; Designation</th>
<th width="15%" align="center" class="2">Scale of Pay </th>
<th width="10%" align="center" class="2">Basic Pay in Rs.</th>
</tr>
 </thead>
<tbody>
<tr>
<td align="center">1.</td>
<td align="left">Maj. Tushar Bhasin<br>ADC to Governor</td>
<td align="center">(Central Government)</td>
<td align="center">-</td>
</tr>

<tr>
<td align="center">2.</td>
<td align="left">Sri. K. Narasimha <br>ADC to Governor</td>
<td align="center">-</td>
<td align="center">59,890/-</td>
</tr>

<tr>
<td align="center">3.</td>
<td align="left">Sri. E. Kanaka Raju <br>Deputy Executive Engineer (Electrical) </td>
<td align="center">42490-96110</td>
<td align="center">67,990/-</td>
</tr>

<tr>
<td align="center">4.</td>
<td align="left">Sri. K. Rupkaran <br>Deputy Executive Engineer (R&amp;B) </td>
<td align="center">42490-96110</td>
<td align="center">55,410/-</td>
</tr>

<tr>
<td align="center">5.</td>
<td align="left">Dr.(Smt.) P. Nagamani<br>Women Assistant Surgeon</td>
<td align="center">42490-96110</td>
<td align="center">64,670/-</td>
</tr>

<tr>
<td align="center">6.</td>
<td align="left">Sri. Z. Herold David <br>Assistant Comptroller </td>
<td align="center">37100-91450</td>
<td align="center">49,870/-</td>
</tr>

<tr>
<td align="center">7.</td>
<td align="left">Sri. D.K.Bhattacharjee <br>Manager (FAC)</td>
<td align="center">28940-78910</td>
<td align="center">42,490/-</td>
</tr>

<tr>
<td align="center">8.</td>
<td align="left">Sri. S.M. Jahangir <br>Accountant Gr. I</td>
<td align="center">28940-78910</td>
<td align="center">37,100/-</td>
</tr>

<tr>
<td align="center">9.</td>
<td align="left">Sri. G. Srinivasulu <br>Cashier</td>
<td align="center">28940-78910</td>
<td align="center">31,460/-</td>
</tr>

<tr>
<td align="center">10.</td>
<td align="left">Sri. T. Sriramulu <br>Senior Assistant </td>
<td align="center">26600-77030</td>
<td align="center">43,680/-</td>
</tr>

<tr>
<td align="center">11.</td>
<td align="left">Sri. T. Mohd. Imtiaz<br>Senior Assistant</td>
<td align="center">26600-77030</td>
<td align="center">29,760/-</td>
</tr>

<tr>
<td align="center">12.</td>
<td align="left">Sri. S. Manoj Krishna<br>Senior Assistant </td>
<td align="center">26600-77030</td>
<td align="center">28,120/-</td>
</tr>

<tr>
<td align="center">13.</td>
<td align="left">Sri. N. Balakrishna<br>Steward </td>
<td align="center">21230-63010</td>
<td align="center">24,440/-</td>
</tr>

<tr>
<td align="center">14.</td>
<td align="left">Smt. P.K. Hemalatha <br>Junior Assistant</td>
<td align="center">17890-53950</td>
<td align="center">44,870/-</td>
</tr>

<tr>
<td align="center">15.</td>
<td align="left">Sri. R. Isaac <br>Junior Assistant</td>
<td align="center">16400-49870</td>
<td align="center">34,170/-</td>
</tr>

<tr>
<td align="center">16.</td>
<td align="left">Sri. Mohd. Farooq <br>Telephone Operator</td>
<td align="center">19500-58330</td>
<td align="center">37,100/-</td>
</tr>

<tr>
<td align="center">17.</td>
<td align="left">Sri. B. Venugopal <br>Telephone Operator</td>
<td align="center">16400-49870</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">18.</td>
<td align="left">Sri. M.A. Mahmood <br>Telephone Operator</td>
<td align="center">16400-49870</td>
<td align="center">25,840/-</td>
</tr>

<tr>
<td align="center">19.</td>
<td align="left">Sri. N. Narsing Rao<br>Garage Supervisor</td>
<td align="center">18400-55410</td>
<td align="center">40,270/-</td>
</tr>

<tr>
<td align="center">20.</td>
<td align="left">Sri. Abdul Salam <br>Driver</td>
<td align="center">17890-53950</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">21.</td>
<td align="left">Sri. K. Rajesh <br>Driver</td>
<td align="center">16400-49870</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">22.</td>
<td align="left">Sri. M. Hari Kanth <br>Driver</td>
<td align="center">15460-47330</td>
<td align="center">23,100/-</td>
</tr>

<tr>
<td align="center">23.</td>
<td align="left">Sri. G.B. Narsing Rao <br>Driver</td>
<td align="center">16400-49870</td>
<td align="center">29,760/-</td>
</tr>

<tr>
<td align="center">24.</td>
<td align="left">Sri. P. Bojjalaiah <br>Driver</td>
<td align="center">16400-49870</td>
<td align="center">28,940/-</td>
</tr>

<tr>
<td align="center">25.</td>
<td align="left">Sri. C. Rama Krishna <br>Motor Cycle Messenger</td>
<td align="center">15030-46060</td>
<td align="center">23,100/-</td>
</tr>

<tr>
<td align="center">26.</td>
<td align="left">Sri. T.P. Rama Krishna <br>Record Assistant</td>
<td align="center">15030-46060</td>
<td align="center">30,580/-</td>
</tr>

<tr>
<td align="center">27.</td>
<td align="left">Smt. B. Vembu <br>Despatch Clerk</td>
<td align="center">13390-41380</td>
<td align="center">27,360/-</td>
</tr>

<tr>
<td align="center">28.</td>
<td align="left">Sri. A. Nagaraj<br>Jamedar</td>
<td align="center">14600-44870</td>
<td align="center">42,490/-</td>
</tr>

<tr>
<td align="center">29.</td>
<td align="left">Sri. G. Narisimulu <br>Daffedar</td>
<td align="center">13390-41380</td>
<td align="center">30,580/-</td>
</tr>

<tr>
<td align="center">30.</td>
<td align="left">Sri. Mohd. Ilyas Ali Khan <br>Office Subordinate</td>
<td align="center">14600-44870</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">31.</td>
<td align="left">Sri. Mohd. Kaleemuddin <br>Office Subordinate</td>
<td align="center">13390-41380</td>
<td align="center">23,740/-</td>
</tr>

<tr>
<td align="center">32.</td>
<td align="left">Sri. T. Arun Kumar <br>Office Subordinate</td>
<td align="center">13390-41380</td>
<td align="center">23,100/-</td>
</tr>

<tr>
<td align="center">33.</td>
<td align="left">Smt. D. Anasuya <br>Office Subordinate</td>
<td align="center">13390-41380</td>
<td align="center">18,950/-</td>
</tr>

<tr>
<td align="center">34.</td>
<td align="left">Sri. R. Mallesh <br>Carpenter</td>
<td align="center">13780-42490</td>
<td align="center">15,030/-</td>
</tr>


<tr>
<td align="center">35.</td>
<td align="left">Sri. M. Narender <br>Painter &amp; Polisher</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">36.</td>
<td align="left">Sri. A. Chandra Mohan <br>Cleaner</td>
<td align="center">14600-44870</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">37.</td>
<td align="left">Sri. P.V.Raju <br>Cleaner</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">38.</td>
<td align="left">Sri. K. Satyanarayana <br>Cleaner</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">39.</td>
<td align="left">Sri. Syed Azid <br>Man-Mazdoor</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">40.</td>
<td align="left">Sri. B. Ramesh <br>Man-Mazdoor</td>
<td align="center">14600-44870</td>
<td align="center">25,140/-</td>
</tr>

<tr>
<td align="center">41.</td>
<td align="left">Sri. K. Krishna Murthy <br>Helper Grade-II</td>
<td align="center">13390-41380</td>
<td align="center">29,760/-</td>
</tr>

<tr>
<td align="center">42.</td>
<td align="left">Sri. G. Sri.nivas <br>Helper Grade-II</td>
<td align="center">13390-41380</td>
<td align="center">24,440/-</td>
</tr>

<tr>
<td align="center">43.</td>
<td align="left">Sri. S.U. Ramchander <br>Head Butler</td>
<td align="center">16400-49870</td>
<td align="center">43,680/-</td>
</tr>

<tr>
<td align="center">44.</td>
<td align="left">Sri. N. Ravinder Raj <br>Butler</td>
<td align="center">16400-49870</td>
<td align="center">42,490/-</td>
</tr>

<tr>
<td align="center">45.</td>
<td align="left">Sri. G. Sudhakar <br>Butler</td>
<td align="center">15460-47330</td>
<td align="center">42,490/-</td>
</tr>


<tr>
<td align="center">46.</td>
<td align="left">Sri. S. Amjad <br>Butler</td>
<td align="center">15460-47330</td>
<td align="center">42,490/-</td>
</tr>

<tr>
<td align="center">47.</td>
<td align="left">Sri. M. Sunder Raj <br>Bearer</td>
<td align="center">16400-49870</td>
<td align="center">40,270/-</td>
</tr>

<tr>
<td align="center">48.</td>
<td align="left">Sri. K.V. Narayana <br>Bearer</td>
<td align="center">16400-49870</td>
<td align="center">42,490/-</td>
</tr>

<tr>
<td align="center">49.</td>
<td align="left">Sri. N. Arjun Kumar <br>Bearer</td>
<td align="center">15460-47330</td>
<td align="center">30,580/-</td>
</tr>

<tr>
<td align="center">50.</td>
<td align="left">Sri. Syed Mukthar <br>Bearer</td>
<td align="center">15460-47330</td>
<td align="center">36,070/-</td>
</tr>

<tr>
<td align="center">51.</td>
<td align="left">Sri. Syed Riyaz <br>Bearer</td>
<td align="center">15460-47330</td>
<td align="center">31,460/-</td>
</tr>

<tr>
<td align="center">52.</td>
<td align="left">Sri. Y. Kumara Swamy <br>Head Cook</td>
<td align="center">21230-63010</td>
<td align="center">36,030/-</td>
</tr>

<tr>
<td align="center">53.</td>
<td align="left">Sri. V. Ravi Kishore <br>Cook</td>
<td align="center">18400-55410</td>
<td align="center">21,820/-</td>
</tr>

<tr>
<td align="center">54.</td>
<td align="left">Sri. R. Sri. Sai Vara Prakash <br>Cook</td>
<td align="center">18400-55410</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">55.</td>
<td align="left">Sri. A. Gangabapu <br>Cook</td>
<td align="center">18400-55410</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">56.</td>
<td align="left">Sri. M. Venkateshwarlu <br>Tailor</td>
<td align="center">15030-46060</td>
<td align="center">37,100/-</td>
</tr>

<tr>
<td align="center">57.</td>
<td align="left">Sri. D. Venkatesh Babu <br>Dhoby</td>
<td align="center">15030-46060</td>
<td align="center">37,130/-</td>
</tr>

<tr>
<td align="center">58.</td>
<td align="left">Sri. T. Appa Rao <br>Dhoby</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">59.</td>
<td align="left">Smt C. Lavanya <br>Dhoby</td>
<td align="center">14600-44870</td>
<td align="center">25,140/-</td>
</tr>

<tr>
<td align="center">60.</td>
<td align="left">Sri. M. Nagesh Kumar <br>Dhoby</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">61.</td>
<td align="left">Sri. M. Joseph <br>Household Attendant</td>
<td align="center">13390-41380</td>
<td align="center">25,840/-</td>
</tr>

<tr>
<td align="center">62.</td>
<td align="left">Smt. Khairunnisa <br>Household Attendant</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">63.</td>
<td align="left">Smt. K. Padmavathi <br>Household Attendant</td>
<td align="center">14600-44870</td>
<td align="center">29,760/-</td>
</tr>

<tr>
<td align="center">64.</td>
<td align="left">Sri. B. Narsing <br>Household Attendant</td>
<td align="center">14600-44870</td>
<td align="center">28,120/-</td>
</tr>

<tr>
<td align="center">65.</td>
<td align="left">Sri. J. Srinivas <br>Household Attendant</td>
<td align="center">14600-44870</td>
<td align="center">26,600/-</td>
</tr>

<tr>
<td align="center">66.</td>
<td align="left">Sri. G. Kodanda Ramudu <br>Household Attendant</td>
<td align="center">13390-41380</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">67.</td>
<td align="left">Sri. Mohd. Issak <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">68.</td>
<td align="left">Sri. M. Mahendar <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">69.</td>
<td align="left">Sri. Y. Eswar Rao <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">70.</td>
<td align="left">Sri. K.V. Sravan Kumar <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">71.</td>
<td align="left">Sri. G. Sainath <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">72.</td>
<td align="left">Sri. J. Anil Kumar <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">13,780/-</td>
</tr>

<tr>
<td align="center">73.</td>
<td align="left">Sri. T. Srinivas <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">13,780/-</td>
</tr>

<tr>
<td align="center">74.</td>
<td align="left">Sri. M. Kamalakar <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">13,780/-</td>
</tr>

<tr>
<td align="center">75.</td>
<td align="left">Sri. B. Vasudeva Rao <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">13,780/-</td>
</tr>

<tr>
<td align="center">76.</td>
<td align="left">Sri. M. Srinath <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">13,000/-</td>
</tr>

<tr>
<td align="center">77.</td>
<td align="left">Smt. Shahjahan <br>Household Attendant</td>
<td align="center">14600-44870</td>
<td align="center">23,740/-</td>
</tr>

<tr>
<td align="center">78.</td>
<td align="left">Smt. S. Sindhu <br>Household Attendant</td>
<td align="center">13000-40270</td>
<td align="center">18,400/-</td>
</tr>

<tr>
<td align="center">79.</td>
<td align="left">Smt. Ganga Bai <br>Sweeper</td>
<td align="center">14600-44870</td>
<td align="center">28,940/-</td>
</tr>

<tr>
<td align="center">80.</td>
<td align="left">Sri. Liakhat Ali <br>Sweeper</td>
<td align="center">14600-44870</td>
<td align="center">25,140/-</td>
</tr>

<tr>
<td align="center">81.</td>
<td align="left">Sri. P. Laxminarayana <br>Sweeper</td>
<td align="center">14600-44870</td>
<td align="center">25,140/-</td>
</tr>

<tr>
<td align="center">82.</td>
<td align="left">Smt. B. Bhavani <br>Sweeper</td>
<td align="center">14600-44870</td>
<td align="center">23,740/-</td>
</tr>

<tr>
<td align="center">83.</td>
<td align="left">Smt. P. Anantha Laxmi <br>Sweeper</td>
<td align="center">13390-41380</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">84.</td>
<td align="left">Sri. Anwar Pasha <br>Sweeper</td>
<td align="center">13390-41380</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">85.</td>
<td align="left">Smt. E. Kotamma <br>Sweeper</td>
<td align="center">13390-41380</td>
<td align="center">18,950/-</td>
</tr>

<tr>
<td align="center">86.</td>
<td align="left">Smt. K. Jamuna <br>Sweeper</td>
<td align="center">13390-41380</td>
<td align="center">18,950/-</td>
</tr>

<tr>
<td align="center">87.</td>
<td align="left">Smt. N. Kalavathi <br>Sweeper</td>
<td align="center">13000-40270</td>
<td align="center">14,170/-</td>
</tr>

<tr>
<td align="center">88.</td>
<td align="left">Smt P. Chandrika <br>Sweeper</td>
<td align="center">13000-42070</td>
<td align="center">13,000/-</td>
</tr>

<tr>
<td align="center">89.</td>
<td align="left">Smt. B. Swaroopa <br>Ayah</td>
<td align="center">15030-46060</td>
<td align="center">39,160/-</td>
</tr>

<tr>
<td align="center">90.</td>
<td align="left">Sri. Mohd. Sharif <br>Mali</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">91.</td>
<td align="left">Sri. G. Kumara Swamy <br>Mali</td>
<td align="center">15030-46060</td>
<td align="center">38,130/-</td>
</tr>

<tr>
<td align="center">92.</td>
<td align="left">Sri. Mohd. Kabeer <br>Mali</td>
<td align="center">14600-44870</td>
<td align="center">31,460/-</td>
</tr>

<tr>
<td align="center">93.</td>
<td align="left">Sri. M. Srinivas <br>Mali</td>
<td align="center">13390-41380</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">94.</td>
<td align="left">Sri. Shaik Siraj Ali <br>Mali</td>
<td align="center">13390-41380</td>
<td align="center">22,460/-</td>
</tr>

<tr>
<td align="center">95.</td>
<td align="left">Sri. N. Ravi Nagesh <br>Mali</td>
<td align="center">13390-41380</td>
<td align="center">20,050/-</td>
</tr>

<tr>
<td align="center">96.</td>
<td align="left">Sri. D. Neelakantam <br>Mali</td>
<td align="center">13000-40270</td>
<td align="center">15,030/-</td>
</tr>

<tr>
<td align="center">97.</td>
<td align="left">Sri. G. Mohan Varma <br>Mali</td>
<td align="center">13390-41380</td>
<td align="center">18,950/-</td>
</tr>

<tr>
<td align="center">98.</td>
<td align="left">Smt. C. Sumathi <br>Mali</td>
<td align="center">13000-40270</td>
<td align="center">15,460/-</td>
</tr>

<tr>
<td align="center">99.</td>
<td align="left">Kum. B. Renuka <br>Mali</td>
<td align="center">13000-40270</td>
<td align="center">13,780/-</td>
</tr>

<tr>
<td align="center">100.</td>
<td align="left">Kum. Y. Sampoorna <br>Mali</td>
<td align="center">13000-40270</td>
<td align="center">13,000/-</td>
</tr>

<tr>
<td align="center">101.</td>
<td align="left">Smt. K. Anitha <br>Pharmacist Grade-II</td>
<td align="center">23100-67990</td>
<td align="center">40,270/-</td>
</tr>

<tr>
<td align="center">102.</td>
<td align="left">Smt. P. Laxmi Bhagyam <br>Mid-Wife (ANM)</td>
<td align="center">23100-67990</td>
<td align="center">48,600/-</td>
</tr>

<tr>
<td align="center">103.</td>
<td align="left">Sri. M. Rangaswamy <br>Male Nursing Orderly</td>
<td align="center">14600-44870</td>
<td align="center">39,160/-</td>
</tr>

<tr>
<td align="center">104.</td>
<td align="left">Smt. T. Hemalatha <br>Sweeper</td>
<td align="center">14600-44870</td>
<td align="center">25,140/-</td>
</tr>

</tbody>
</table>
    <br>
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
                        <p>2020 © Copyright by National Informatics Center</p>	
                           
                        </div>

                    </div>
                </div>
  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
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
</body>
</html>
