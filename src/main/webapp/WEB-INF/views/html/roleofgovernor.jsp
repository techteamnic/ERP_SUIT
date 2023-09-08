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

<div class="role">    
    <h3 class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;"><b>Functions and Duties of the Governor</b></a></h3>
   <hr> <p style="text-align:justify;">
    The Governor is the Executive Head of the State within the meaning of Article 153 and 154 of the Constitution of India.  Article 154 vests the executive powers of the State in the Governor who exercises it either directly or through officers subordinate to him in accordance with the Constitution. Under Article 163, the Governor as the Constitutional Head exercises all powers under the Constitution on the aid and advice of the Council of Ministers.  It includes summoning and proroguing the Session of the State Legislature, Promulgation of Ordinances, giving assent to the Bills and appointing the Council of Ministers.
    </p>
    <p style="text-align:justify;">
    There are certain functions, which are possibly to be exercised by the Governor in his/her discretion as sending report to the President under Article 356 and reserving Bill for the consideration of the President under Article 254(2).  
    </p><br>

    <b><p align="left">
    <font size="3" color="brown">The Governor is the appointing authority in respect of the following authorities:</font></p></b>



    <ol class="ulStyle">
    <li>Advocate General</li>
    <li>The Lokayukta and Upa Lokayukta</li>
    <li>The State Election Commissioner</li>
    <li>The Chairman and Members of the Human Rights Commission</li>
    <li>The Chairman and Members of Public Service Commission</li>
    <li>The State Chief Information Commissioner and members of Information Commission.</li>
    </ol><br>
    <font size="1" face="verdana" color="navy">

    <b><p align="left">
    <font size="3" color="brown">CONSTITUTIONAL PROVISIONS PERTAINING TO THE OFFICE OF THE GOVERNOR</font></p></b>
    <br>


    <table width="100%" align="CENTER" cellspacing="12" class="table table-bordered">

    <tbody>
	
	<tr>
    <td width="71%" align="left"><font size="2"><a href="#153">THE GOVERNOR</a></font></td>
    <td width="29%" align="left"><font size="2">Art. 153</font></td>
    </tr>

     

    <tr>
    <td width="71%" align="left"><font size="2"><a href="#154">EXECUTIVE POWER</a></font></td>
    <td align="left"><font size="2">Art. 154</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#155">APPOINTMENT</a></font></td>
    <td align="left"><font size="2">Art. 155</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#156">TERM OF OFFICE</a></font></td>
    <td align="left"><font size="2">Art. 156</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#157">QUALIFICATIONS</a></font></td>
    <td align="left"><font size="2">Art. 157</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#158">CONDITIONS OF OFFICE</a></font></td>
    <td align="left"><font size="2">Art. 158</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#159">OATH</a></font></td>
    <td align="left"><font size="2">Art. 159</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#160">FUNCTIONS IN CONTINGENCIES</a></font></td>
    <td align="left"><font size="2">Art. 160</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#161">GRANTING PARDONS</a></font></td>
    <td align="left"><font size="2">Art. 161</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#163">COUNCIL OF MINISTERS</a></font></td>
    <td align="left"><font size="2">Art. 163</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#164">APPOINTMENT OF CHIEF MINISTER</a></font></td>
    <td align="left"><font size="2">Art. 164</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#166">EXECUTIVE ACTION</a></font></td>
    <td align="left"><font size="2">Art. 166</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#167">SEEKING INFORMATION</a></font></td>
    <td align="left"><font size="2">Art. 167</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#171">NOMINATION TO COUNCIL</a></font></td>
    <td align="left"><font size="2">Art. 171</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#174">SUMMONING OF HOUSE</a></font></td>
    <td align="left"><font size="2">Art. 174</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#175">MESSAGES TO THE HOUSE</a></font></td>
    <td align="left"><font size="2">Art. 175</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#176">SPECIAL ADDRESS</a></font></td>
    <td align="left"><font size="2">Art. 176</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#192">DISQUALIFICATION OF MEMBERS OF LEGISLATURE</a></font></td>
    <td align="left"><font size="2">Art. 192</font></td>
    </tr>
     
    <tr>
    <td width="71%"><font size="2"><a href="#200">ASSENT OF BILLS</a></font></td>
    <td><font size="2">Art. 200</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#201">RESERVATION OF BILLS FOR CONSIDERATION OF THE PRESIDENT</a></font></td>
    <td align="left"><font size="2">Art. 201</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#202">FINANCIAL BILLS</a></font></td>
    <td align="left"><font size="2">Art. 202, Art. 203, Art. 204, Art. 205, Art. 206, Art. 207</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#213">ORDINANCES</a></font></td>
    <td align="left"><font size="2">Art. 213</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#217">APPOINTMENT OF JUDGES</a></font></td>
    <td align="left"><font size="2">Art. 217</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#219">OATH BY JUDGES</a></font></td>
    <td align="left"><font size="2">Art. 219</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#356">PRESIDENT'S RULE</a></font></td>
    <td align="left"><font size="2">Art. 356</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#361">IMMUNITIES</a></font></td>
    <td align="left"><font size="2">Art. 361</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#239">SPECIAL RESPONSIBILITIES</a></font></td>
    <td align="left"><font size="2">Art.239, Art.243-I, Art.243-Y, Art.371-D, Art.371-E.</font></td>
    </tr>
     
    <tr>
    <td width="71%" align="left"><font size="2"><a href="#244">THE SCEDULED AND TRIBAL AREAS</a></font></td>
    <td align="left"><font size="2">Art. 244</font></td>
    </tr>
     
    </tbody></table>

    <br>
    <hr width="100%" align="center" color="black">
    <br>


    <table width="100%" border="0" align="CENTER" cellspacing="0">

    <tbody><tr>
    <td>

    <p class="subhead"><b><font size="3" color="brown"><a name="153">THE GOVERNOR</a></font></b></p><a name="153">
    <p style="text-align:justify;"><font size="2" color="navy">
    <b>Article 153. Governors of States.</b> -  There shall be a Governor for each State:<br><br>

    [Provided that nothing in this article shall prevent the appointment of the same person as Governor for two or more States.]<br><br>

    </font></p></a><p class="subhead"><a name="153"><font size="2" color="navy"><b><font size="3" color="brown"></font></b></font></a><font size="2" color="navy"><b><font size="3" color="brown"><a name="154">EXECUTIVE  POWER</a></font></b></font></p><font size="2" color="navy"><a name="154">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 154. Executive power of State.</b>- (1) The executive power of the State shall be vested in the Governor and 
    shall be exercised by him either directly or through officers subordinate to him in accordance with this Constitution.<br><br> 

    (2) Nothing in this article shall- <br><br>
    </p><blockquote>
    (a) be deemed to transfer to the Governor any functions conferred by any existing law on any other authority; or <br><br>

    (b) prevent Parliament or the Legislature of the State from conferring by law functions on any authority subordinate 
    to the Governor.<br><br>
    </blockquote>
    </font>

    </a><p class="subhead"><a name="154"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="155">APPOINTMENT </a></font></b></p><a name="155">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 155. Appointment of Governor.</b>- The Governor of a State shall be appointed by the President by warrant 
    under his hand and seal. <br><br>

    </p></font>
    </a><p class="subhead"><a name="155"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="156">TERM OF OFFICE</a></font></b></p><a name="156">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 156. Term of Office of Governor.</b>- (1) The Governor shall hold office during the pleasure of the President. <br><br>

    (2) The Governor may, by writing under his hand addressed to the President, resign his office. <br><br>

    (3) Subject to the foregoing provisions of this article, a Governor shall hold office for a term of five years from the date on which he enters upon his office: <br><br>

    Provided that a Governor shall, notwithstanding the expiration of his term, continue to hold office until his successor enters upon his office. <br><br>

    </p></font>
    </a><p class="subhead"><a name="156"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="157">QUALIFICATIONS</a></font></b></p><a name="157">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 157.   Qualifications for appointment as Governor.</b>- No person shall  be eligible  for appointment as Governor unless he is a citizen of  India and has completed the age of thirty-five years.<br><br>

    </p></font>
    </a><p class="subhead"><a name="157"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="158">CONDITIONS OF OFFICE</a></font></b></p><a name="158">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 158. Conditions of Governor's office.</b>- (1) The Governor shall not be a member of either House of Parliament or of a House of the Legislature of any State specified in the First Schedule, and if a member of either House of Parliament or of a House of the Legislature of any such State be appointed Governor, he shall be deemed to have vacated his seat in that House on the date on which he enters upon his office as Governor. <br><br>

    (2) The Governor shall not hold any other office of profit. <br><br>

    (3) The Governor shall be entitled without payment of rent to the use of his official residences and shall be also entitled to such emoluments, allowances and privileges as may be determined by Parliament by law and, until provision in that behalf is so made, such emoluments, allowances and privileges as are specified in the Second Schedule. <br><br>

    [(3A) Where the same person is appointed as Governor of two or more States, the emoluments and allowances payable to the Governor shall be allocated among the States in such proportion as the President may by order determine.] <br><br>

    (4) The emoluments and allowances of the Governor shall not be diminished during his term of office.<br><br>


    </p></font></a><font size="2" color="navy">
    </font><p class="subhead"><a name="158"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="159">OATH</a></font></b></p><a name="159">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 159. Oath or affirmation by the Governor.</b>- Every Governor and every person discharging the functions of the Governor shall, before entering upon his office, make and subscribe in the presence of the Chief Justice of the High Court exercising jurisdiction in relation to the State, or, in his absence, the senior most Judge of that Court available, an oath or affirmation in the following form, that is to say- <br><br>

    "I, A. B., do swear in the name of God/solemnly affirm that I will faithfully execute the office of Governor (or discharge the functions of the Governor) of .............(name of the State) and will to the best of my ability preserve, protect and defend the Constitution and the law and that I will devote myself to the service and well-being of the people of .....(name of the State)." <br><br>


    </p></font></a><p class="subhead"><a name="159"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="160">FUNCTIONS IN CONTINGENCIES</a></font></b></p><a name="160">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 160. Discharge of the functions of the Governor in certain contingencies.</b>- The President may make such provision as he thinks fit for the discharge of the functions of the Governor of a State in any contingency not provided for in this Chapter.<br><br>


    </p></font></a><p class="subhead"><a name="160"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="161">GRANTING PARDONS</a></font></b></p><a name="161">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 161. Power of Governor to grant pardons, etc., and to suspend, remit or commute sentences in certain cases.</b>- The Governor of a State shall have the power to grant pardons, reprieves, respites or remissions of punishment or to suspend, remit or commute the sentence of any person convicted of any offence against any law relating to a matter to which the executive power of the State extends.<br><br>



    </p></font></a><p class="subhead"><a name="161"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="163">COUNCIL OF MINISTERS</a></font></b></p><a name="163">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 163. Council of Ministers to aid and advise Governor.- </b>(1) There shall be a Council of Ministers with the Chief Minister at the head to aid and advise the Governor in the exercise of his functions, except in so far as he is by or under this Constitution required to exercise his functions or any of them in his discretion. <br><br>

    (2) If any question arises whether any matter is or is not a matter as respects which the Governor is by or under this Constitution required to act in his discretion, the decision of the Governor in his discretion shall be final, and the validity of anything done by the Governor shall not be called in question on the ground that he ought or ought not to have acted in his discretion. <br><br>

    (3) The question whether any, and if so what, advice was tendered by Ministers to the Governor shall not be inquired into in any court.<br><br>



    </p></font></a><p class="subhead"><a name="163"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="164">APPOINTMENT OF CHIEF MINISTER</a></font></b></p><a name="164">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 164. Other provisions as to Ministers.- </b>(1) The Chief Minister shall be appointed by the Governor and the other Ministers shall be appointed by the Governor on the advice of the Chief Minster, and the Ministers shall hold office during the pleasure of the Governor: <br><br>

    Provided that in the States of Bihar, Madhya Pradesh and Orissa, there shall be a Minister in charge of tribal welfare who may in addition be in charge of the welfare of the Scheduled Castes and backward classes or any other work. <br><br>

    (2) The Council of Ministers shall be collectively responsible to the Legislative Assembly of the State. <br><br>

    (3) Before a Minister enters upon his office, the Governor shall administer to him the oaths of office and of secrecy according to the forms set out for the purpose in the Third Schedule. <br><br>

    (4) A Minister who for any period of six consecutive months is not a member of the Legislature of the State shall at the expiration of that period cease to be a Minister. <br><br>

    (5) The salaries and allowances of Ministers shall be such as the Legislature of the State may from time to time by law determine and, until the Legislature of the State so determines, shall be as specified in the Second Schedule.<br><br>


    </p></font></a><p class="subhead"><a name="164"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="166">EXECUTIVE ACTION</a></font></b></p><a name="166">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 166. Conduct of business of the Government of a State.</b>- (1) All executive action of the Government of a State shall be expressed to be taken in the name of the Governor. <br><br>

    (2) Orders and other instruments made and executed in the name of the Governor shall be authenticated in such manner as may be specified in rules to be made by the Governor, and the validity of an order or instrument which is so authenticated shall not be called in question on the ground that it is not an order or instrument made or executed by the Governor. <br><br>

    (3) The Governor shall make rules for the more convenient transaction of the business of the Government of the State, and for the allocation among Ministers of the said business in so far as it is not business with respect to which the Governor is by or under this Constitution required to act in his discretion.<br><br>


    </p></font></a><p class="subhead"><a name="166"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="167">SEEKING INFORMATION</a></font></b></p><a name="167">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 167. Duties of Chief Minister as respects the furnishing of information to Governor, etc.</b>- It shall be the duty of the Chief Minister of each State- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) to communicate to the Governor of the State all decisions of the Council of Ministers relating to the administration of the affairs of the State and proposals for legislation; <br><br>

    (b) to furnish such information relating to the administration of the affairs of the State and proposals for legislation as the Governor may call for; and <br><br>

    (c) if the Governor so requires, to submit for the consideration of the Council of Ministers any matter on which a decision has been taken by a Minister but which has not been considered by the Council.  <br><br>
    </p></blockquote>

    </font></a><p class="subhead"><a name="167"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="171">NOMINATION TO LEGISLATIVE COUNCIL</a></font></b></p><a name="171">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 171. Composition of the Legislative Councils.</b>- (1) The total number of members in the Legislative Council of a State having such a Council shall not exceed [one third] of the total number of members in the Legislative Assembly of that State:
    Provided that the total number of members in the Legislative Council of a State shall in no case be less than forty. <br><br>

    (2) Until Parliament by law otherwise provides, the composition of the Legislative Council of a State shall be as provided in clause (3). <br><br>

    (3) Of the total number of members of the Legislative Council of a State- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) as nearly as may be, one-third shall be elected by electorates consisting of members of municipalities, district boards and such other local authorities in the State as Parliament may by law specify; <br><br>

    (b) as nearly as may be, one-twelfth shall be elected by electorates consisting of persons residing in the State who have been for at least three years graduates of any university in the territory of India or have been for at least three years in possession of qualifications prescribed by or under any law made by Parliament as equivalent to that of a graduate of any such university; <br><br>

    (c) as nearly as may be, one-twelfth shall be elected by electorates consisting of persons who have been for at least three years engaged in teaching in such educational institutions within the State, not lower in standard than that of a secondary school, as may be prescribed by or under any law made by Parliament; <br><br>

    (d) as nearly as may be, one-third shall be elected by the members of the Legislative Assembly of the State from amongst persons who are not members of the Assembly; <br><br>

    (e) the remainder shall be nominated by the Governor in accordance with the provisions of clause (5). <br><br>
    </p></blockquote>
    <p style="text-align:justify;">
    (4) The members to be elected under sub-clauses (a), (b) and (c) of clause (3) shall be chosen in such territorial constituencies as may be prescribed by or under any law made by Parliament, and the elections under the said sub-clauses and under sub-clause (d) of the said clause shall be held in accordance with the system of proportional representation by means of the single transferable vote. <br><br>

    (5) The members to be nominated by the Governor under sub-clause (e) of clause (3) shall consist of persons having special knowledge or practical experience in respect of such matters as the following, namely:- 
    Literature, science, art, co-operative movement and social service. <br><br>


    </p></font></a><p class="subhead"><a name="171"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="174">SUMMONING OF HOUSE</a></font></b></p><a name="174">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 174. Sessions of the State Legislature, prorogation and dissolution.</b>- (1) The Governor shall from time to time summon the House or each House of the Legislature of the State to meet at such time and place as he thinks fit, but six months shall not intervene between its last sitting in one session and the date appointed for its first sitting in the next session. <br><br>

    (2) The Governor may from time to time- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) prorogue the House or either House; <br><br>

    (b) dissolve the Legislative Assembly.] <br><br>
    </p></blockquote>

    </font></a><p class="subhead"><a name="174"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="175">MESSAGES TO THE HOUSE</a></font></b></p><a name="175">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 175. Right of Governor to address and send messages to the House or Houses.</b>- (1) The Governor may address the Legislative Assembly or, in the case of a State having a Legislative Council, either House of the Legislature of the State, or both Houses assembled together, and may for that purpose require the attendance of members. <br><br>

    (2) The Governor may send messages to the House or Houses of the Legislature of the State, whether with respect to a Bill then pending in the Legislature or otherwise, and a House to which any message is so sent shall with all convenient despatch consider any matter required by the message to be taken into consideration.<br><br>


    </p></font></a><p class="subhead"><a name="175"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="176">SPECIAL ADDRESS</a></font></b></p><a name="176">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 176. Special address by the Governor.</b>- (1) At the commencement of [the first session after each general election to the Legislative Assembly and at the commencement of the first session of each year], the Governor shall address the Legislative Assembly or, in the case of a State having a Legislative Council, both Houses assembled together and inform the Legislature of the causes of its summons. <br><br>

    (2) Provision shall be made by the rules regulating the procedure of the House or either House for the allotment of time for discussion of the matters referred to in such address.<br><br>


    </p></font></a><p class="subhead"><a name="176"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="192">DISQUALIFICATION OF MEMBERS OF LEGISLATURE</a></font></b></p><a name="192">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 192. Decision on questions as to disqualifications of members.</b>- (1) If any question arises as to whether a member of a House of the Legislature of a State has become subject to any of the disqualifications mentioned in clause (1) of article 191, the question shall be referred for the decision of the Governor and his decision shall be final. <br><br>

    (2) Before giving any decision on any such question, the Governor shall obtain the opinion of the Election Commission and shall act according to such opinion. <br><br>


    </p></font></a><p class="subhead"><a name="192"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="200">ASSENT TO BILLS</a></font></b></p><a name="200">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 200. Assent to Bills.</b>- When a Bill has been passed by the Legislative Assembly of a State or, in the case of a State having a Legislative Council, has been passed by both Houses of the Legislature of the State, it shall be presented to the Governor and the Governor shall declare either that he assents to the Bill or that he withholds assent therefrom or that he reserves the Bill for the consideration of the President: <br><br>

    Provided that the Governor may, as soon as possible after the presentation to him of the Bill for assent, return the Bill if it is not a Money Bill together with a message requesting that the House or Houses will reconsider the Bill or any specified provisions thereof and, in particular, will consider the desirability of introducing any such amendments as he may recommend in his message and, when a Bill is so returned, the House or Houses shall reconsider the Bill accordingly, and if the Bill is passed again by the House or Houses with or without amendment and presented to the Governor for assent, the Governor shall not withhold assent therefrom: <br><br>

    Provided further that the Governor shall not assent to, but shall reserve for the consideration of the President, any Bill which in the opinion of the Governor would, if it became law, so derogate from the powers of the High Court as to endanger the position which that Court is by this Constitution designed to fill.<br><br>


    </p></font></a><p class="subhead"><a name="200"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="201">RESERVATION OF BILLS FOR CONSIDERATION OF THE PRESIDENT</a></font></b></p><a name="201">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 201. Bills reserved for consideration.</b>- When a Bill is reserved by a Governor for the consideration of the President, the President shall declare either that he assents to the Bill or that he withholds assent therefrom: <br><br>

    Provided that, where the Bill is not a Money Bill, the President may direct the Governor to return the Bill to the House or, as the case may be, the Houses of the Legislature of the State together with such a message as is mentioned in the first proviso to article 200 and, when a Bill is so returned, the House or Houses shall reconsider it accordingly within a period of six months from the date of receipt of such message and, if it is again passed by the House or Houses with or without amendment, it shall be presented again to the President for his consideration. <br><br>


    </p></font></a><p class="subhead"><a name="201"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="202">FINANCIAL BILLS</a></font></b></p><a name="202">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 202. Annual financial statement.</b>- (1) The Governor shall in respect of every financial year cause to be laid before the House or Houses of the Legislature of the State a statement of the estimated receipts and expenditure of the State for that year, in this Part referred to as the "annual financial statement". <br><br>

    (2) The estimates of expenditure embodied in the annual financial statement shall show separately- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the sums required to meet expenditure described by this Constitution as expenditure charged upon the Consolidated Fund of the State; and <br><br>

    (b) the sums required to meet other expenditure proposed to be made from the Consolidated Fund of the State; and shall distinguish expenditure on revenue account from other expenditure. <br><br>
    </p></blockquote>
    <p style="text-align:justify;">
    (3) The following expenditure shall be expenditure charged on the Consolidated Fund of each State- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the emoluments and allowances of the Governor and other expenditure relating to his office; <br><br>

    (b) the salaries and allowances of the Speaker and the Deputy Speaker of the Legislative Assembly and, in the case of a State having a Legislative Council, also of the Chairman and the Deputy Chairman of the Legislative Council; <br><br>

    (c) debt charges for which the State is liable including interest, sinking fund charges and redemption charges, and other expenditure relating to the raising of loans and the service and redemption of debt; <br><br>

    (d) expenditure in respect of the salaries and allowances of Judges of any High Court; <br><br>

    (e) any sums required to satisfy any judgment, decree or award of any court or arbitral tribunal; <br><br>

    (f) any other expenditure declared by this Constitution, or by the Legislature of the State by law, to be so charged.<br><br>
    </p></blockquote>
    <p style="text-align:justify;">

    <b>Article 203. Procedure in Legislature with respect to estimates.</b>- (1) So much of the estimates as relates to expenditure charged upon the Consolidated Fund of a State shall not be submitted to the vote of the Legislative Assembly, but nothing in this clause shall be construed as preventing the discussion in the Legislature of any of those estimates. <br><br>

    (2) So much of the said estimates as relates to other expenditure shall be submitted in the form of demands for grants to the Legislative Assembly, and the Legislative Assembly shall have power to assent, or to refuse to assent, to any demand, or to assent to any demand subject to a reduction of the amount specified therein. <br><br>

    (3) No demand for a grant shall be made except on the recommendation of the Governor.<br><br>


    <b>Article 204. Appropriation Bills.</b>- (1) As soon as may be after the grants under article 203 have been made by the Assembly, there shall be introduced a Bill to provide for the appropriation out of the Consolidated Fund of the State of all moneys required to meet- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the grants so made by the Assembly; and <br><br>

    (b) the expenditure charged on the Consolidated Fund of the State but not exceeding in any case the amount shown in the statement previously laid before the House or Houses. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) No amendment shall be proposed to any such Bill in the House or either House of the Legislature of the State which will have the effect of varying the amount or altering the destination of any grant so made or of varying the amount of any expenditure charged on the Consolidated Fund of the State, and the decision of the person presiding as to whether an amendment is inadmissible under this clause shall be final. <br><br>

    (3) subject to the provisions of articles 205 and 206, no money shall be withdrawn from the Consolidated Fund of the State except under appropriation made by law passed in accordance with the provisions of this article.<br><br>


    <b>Article 205. Supplementary additional or excess grants.</b>- (1) The Governor shall- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) if the amount authorised by any law made in accordance with the provisions of article 204 to be expended for a particular service for the current financial year is found to be insufficient for the purposes of that year or when a need has arisen during the current financial year for supplementary or additional expenditure upon some new service not contemplated in the annual financial statement for that year, or <br><br>

    (b) if any money has been spent on any service during a financial year in excess of the amount granted for that service and for that year, cause to be laid before the House or the Houses of the Legislature of the State another statement showing the estimated amount of that expenditure or cause to be presented to the Legislative assembly of the State a demand for such excess, as the case may be. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) The provisions of articles 202, 203 and 204 shall have effect in relation to any such statement and expenditure or demand and also to any law to be made authorising the appropriation of moneys out of the Consolidated Fund of the State to meet such expenditure or the grant in respect of such demand as they have effect in relation to the annual financial statement and the expenditure mentioned therein or to a demand for a grant and the law to be made for the authorisation of appropriation of moneys out of the Consolidated Fund of the State to meet such expenditure or grant.<br><br>


    <b>Article 206. Votes on account, votes of credit and exceptional grants.</b>- (1) Notwithstanding anything in the foregoing provisions of this Chapter, the Legislative Assembly of a State shall have power- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) to make any grant in advance in respect of the estimated expenditure for a part of any financial year pending the completion of the procedure prescribed in article 203 for the voting of such grant and the passing of the law in accordance with the provisions of article 204 in relation to that expenditure; <br><br>

    (b) to make a grant for meeting an unexpected demand upon the resources of the State when on account of the magnitude or the indefinite character of the service the demand cannot be stated with the details ordinarily given in an annual financial statement; <br><br>

    (c) to make an exceptional grant which forms no part of the current service of any financial year, and the Legislature of the State shall have power to authorise by law the withdrawal of moneys from the Consolidated Fund of the State for the purposes for which the said grants are made. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) The provisions of articles 203 and 204 shall have effect in relation to the making of any grant under clause (1) and to any law to be made under that clause as they have effect in relation to the making of a grant with regard to any expenditure mentioned in the annual financial statement and the law to be made for the authorisation of appropriation of moneys out of the Consolidated Fund of the State to meet such expenditure.<br><br>


    <b>Article 207. Special provisions as to financial Bills.</b>- (1) A Bill or amendment making provision for any of the matters specified in sub-clauses (a) to (f) of clause (1) of article 199 shall not be introduced or moved except on the recommendation of the Governor, and a Bill making such provision shall not be introduced in a Legislative Council: <br><br>

    Provided that no recommendation shall be required under this clause for the moving of an amendment making provision for the reduction or abolition of any tax. <br><br>

    (2) A Bill or amendment shall not be deemed to make provision for any of the matters aforesaid by reason only that it provides for the imposition of fines or other pecuniary penalties, or for the demand or payment of fees for licences or fees for services rendered, or by reason that it provides for the imposition, abolition, remission, alteration or regulation of any tax by any local authority or body for local purposes. <br><br>

    (3) A Bill which, if enacted and brought into operation, would involve expenditure from the Consolidated Fund of a State shall not be passed by a House of the Legislature of the State unless the Governor has recommended to that House the consideration of the Bill.<br><br>


    </p></font></a><p class="subhead"><a name="202"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="213">LEGISLATIVE POWER  -  ORDINANCES</a></font></b></p><a name="213">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 213. Power of Governor to promulgate Ordinances during recess of Legislature.</b>- (1) If at any time, except when the Legislative Assembly of a State is in session, or where there is a Legislative Council in a State, except when both Houses of the Legislature are in session, the Governor is satisfied that circumstances exist which render it necessary for him to take immediate action, he may promulgate such Ordinances as the circumstances appear to him to require: <br><br>

    Provided that the Governor shall not, without instructions from the President, promulgate any such Ordinance if- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) a Bill containing the same provisions would under this Constitution have required the previous sanction of the President for the introduction thereof into the Legislature; or <br><br>

    (b) he would have deemed it necessary to reserve a Bill containing the same provisions for the consideration of the President; or <br><br>

    (c) an Act of the Legislature of the State containing the same provisions would under this Constitution have been invalid unless, having been reserved for the consideration of the President, it had received the assent of the President. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) An Ordinance promulgated under this article shall have the same force and effect as an Act of the Legislature of the State assented to by the Governor, but every such Ordinance- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) shall be laid before the Legislative Assembly of the State, or where there is a Legislative Council in the State, before both the Houses, and shall cease to operate at the expiration of six weeks from the reassembly of the Legislature, or if before the expiration of that period a resolution disapproving it is passed by the Legislative Assembly and agreed to by the Legislative Council, if any, upon the passing of the resolution or, as the case may be, on the resolution being agreed to by the Council; and <br><br>

    (b) may be withdrawn at any time by the Governor. <br><br>
    </p></blockquote><p style="text-align:justify;">
    Explanation.- Where the Houses of the Legislature of a State having a Legislative Council are summoned to reassemble on different dates, the period of six weeks shall be reckoned from the later of those dates for the purposes of this clause. <br><br>

    (3) If and so far as an Ordinance under this article makes any provision which would not be valid if enacted in an Act of the Legislature of the State assented to by the Governor, it shall be void: <br><br>

    Provided that, for the purposes of the provisions of this Constitution relating to the effect of an Act of the Legislature of a State which is repugnant to an Act of Parliament or an existing law with respect to a matter enumerated in the Concurrent List, an Ordinance promulgated under this article in pursuance of instructions from the President shall be deemed to be an Act of the Legislature of the State which has been reserved for the consideration of the President and assented to by him.<br><br>



    </p></font></a><p class="subhead"><font size="2" color="navy"><a name="213"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="217">APPOINTMENT OF JUDGES OF HIGH COURT</a></font></b></font></p><font size="2" color="navy"><a name="217">
    <font size="2" color="navy"><p style="text-align:justify;">
    <b>Article 217. Appointment and conditions of the office of a Judge of a High Court.</b>- (1) Every Judge of a High Court shall be appointed by the President by warrant under his hand and seal after consultation with the Chief Justice of India, the Governor of the State, and, in the case of appointment of a Judge other than the Chief Justice, the Chief Justice of the High Court, and [shall hold office, in the case of an additional or acting Judge, as provided in article 224, and in any other case, until he attains the age of [sixty-two years]]: <br><br>

    Provided that- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) a Judge may, by writing under his hand addressed to the President, resign his office; <br><br>

    (b) a Judge may be removed from his office by the President in the manner provided in clause (4) of article 124 for the removal of a Judge of the Supreme Court; <br><br>

    (c) the office of a Judge shall be vacated by his being appointed by the President to be a Judge of the Supreme Court or by his being transferred by the President to any other High Court within the territory of India. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) A person shall not be qualified for appointment as a Judge of a High Court unless he is a citizen of India and- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) has for at least ten years held a judicial office in the territory of India; or <br><br>

    (b) has for at least ten years been an advocate of a High Court or of two or more such Courts in succession;<br><br>
    </p></blockquote><p style="text-align:justify;">
    Explanation.- For the purposes of this clause- <br><br>
    </p><blockquote><p style="text-align:justify;">
    [(a) in computing the period during which a person has held judicial office in the territory of India, there shall be included any period, after he has held any judicial office, during which the person has been an advocate of a High Court or has held the office of a member of a tribunal or any post, under the Union or a State, requiring special knowledge of law;] <br><br>

    [(aa)] in computing the period during which a person has been an advocate of a High Court, there shall be included any period during which the person [has held judicial office or the office of a member of a tribunal or any post, under the Union or a State, requiring special knowledge of law] after he became an advocate;]<br><br>

    (b) in computing the period during which a person has held judicial office in the territory of India or been an advocate of a High Court, there shall be included any period before the commencement of this Constitution during which he has held judicial office in any area which was comprised before the fifteenth day of August, 1947, within India as defined by the Government of India Act, 1935, or has been an advocate of any High Court in any such area, as the case may be. <br><br>

    [(3) If any question arises as to the age of a Judge of a High Court, the question shall be decided by the President after consultation with the Chief Justice of India and the decision of the President shall be final.]<br><br>
    </p></blockquote><p style="text-align:justify;">

    </p></font></a><p class="subhead"><a name="217"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="219">OATH BY JUDGES OF HIGH COURT</a></font></b></p><a name="219">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    Article 219. Oath or affirmation by Judges of High Courts.- Every person appointed to be a Judge of a High Court shall, before he enters upon his office, make and subscribe before the Governor of the State, or some person appointed in that behalf by him, an oath or affirmation according to the form set out for the purpose in the Third Schedule.<br><br>


    </p></font></a><p class="subhead"><font size="2" color="navy"><a name="219"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="356">PRESIDENTâ€™S RULE</a></font></b></font></p><font size="2" color="navy"><a name="356">
    <font size="2" color="navy">
    <b>Article 356. Provisions in case of failure of constitutional machinery in States.</b>- (1) If the President, on receipt of a report from the Governor of a State or otherwise, is satisfied that a situation has arisen in which the Government of the State cannot be carried on in accordance with the provisions of this Constitution, the President may by Proclamation- <br><br>
    <blockquote><p style="text-align:justify;">
    (a) assume to himself all or any of the functions of the Government of the State and all or any of the powers vested in or exercisable by the Governor or any body or authority in the State other than the Legislature of the State; <br><br>

    (b) declare that the powers of the Legislature of the State shall be exercisable by or under the authority of Parliament; <br><br>

    (c) make such incidental and consequential provisions as appear to the President to be necessary or desirable for giving effect to the objects of the Proclamation, including provisions for suspending in whole or in part the operation of any provisions of this Constitution relating to any body or authority in the State: <br><br>
    </p></blockquote><p style="text-align:justify;">
    Provided that nothing in this clause shall authorise the President to assume to himself any of the powers vested in or exercisable by a High Court, or to suspend in whole or in part the operation of any provision of this Constitution relating to High Courts. <br><br>

    (2) Any such Proclamation may be revoked or varied by a subsequent Proclamation. <br><br>

    (3) Every Proclamation under this article shall be laid before each House of Parliament and shall, except where it is a Proclamation revoking a previous Proclamation, cease to operate at the expiration of two months unless before the expiration of that period it has been approved by resolutions of both Houses of Parliament: <br><br>

    Provided that if any such Proclamation (not being a Proclamation revoking a previous Proclamation) is issued at a time when the House of the People is dissolved or the dissolution of the House of the People takes place during the period of two months referred to in this clause, and if a resolution approving the Proclamation has been passed by the Council of States, but no resolution with respect to such Proclamation has been passed by the House of the People before the expiration of that period, the Proclamation shall cease to operate at the expiration of thirty days from the date on which the House of the People first sits after its reconstitution unless before the expiration of the said period of thirty days a resolution approving the Proclamation has been also passed by the House of the People. <br><br>

    (4) A Proclamation so approved shall, unless revoked, cease to operate on the expiration of a period of [six months from the date of issue of the Proclamation]: <br><br>

    Provided that if and so often as a resolution approving the continuance in force of such a Proclamation is passed by both Houses of Parliament, the Proclamation shall, unless revoked, continue in force for a further period of [six months] from the date on which under this clause it would otherwise have ceased to operate, but no such Proclamation shall in any case remain in force for more than three years: <br><br>

    Provided further that if the dissolution of the House of the People takes place during any such period of [six months] and a resolution approving the continuance in force of such Proclamation has been passed by the Council of States, but no resolution with respect to the continuance in force of such Proclamation has been passed by the House of the People during the said period, the Proclamation shall cease to operate at the expiration of thirty days from the date on which the House of the People first sits after its reconstitution unless before the expiration of the said period of thirty days a resolution approving the continuance in force of the Proclamation has been also passed by the House of the People: <br><br>

    [Provided also that in the case of the Proclamation issued under clause (1) on the 11th day of May, 1987 with respect to the State of Punjab, the reference in the first proviso to this clause to "three years" shall be construed as a reference to [five years].] <br><br>

    [(5) Notwithstanding anything contained in clause (4), a resolution with respect to the continuance in force of a Proclamation approved under clause (3) for any period beyond the expiration of one year from the date of issue of such Proclamation shall not be passed by either House of Parliament unless- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) a Proclamation of Emergency is in operation, in the whole of India or, as the case may be, in the whole or any part of the State, at the time of the passing of such resolution, and <br><br>

    (b) the Election Commission certifies that the continuance in force of the Proclamation approved under clause (3) during the period specified in such resolution is necessary on account of difficulties in holding general elections to the Legislative Assembly of the State concerned:] <br><br>
    </p></blockquote><p style="text-align:justify;">
    [Provided that nothing in this clause shall apply to the Proclamation issued under clause (1) on the 11th day of May, 1987 with respect to the State of Punjab.]<br><br>


    </p></font></a><p class="subhead"><a name="356"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="361">IMMUNITIES</a></font></b></p><a name="361">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 361. Protection of President and Governors and Rajpramukhs.</b>- (1) The President, or the Governor or Rajpramukh of a State, shall not be answerable to any court for the exercise and performance of the powers and duties of his office or for any act done or purporting to be done by him in the exercise and performance of those powers and duties: <br><br>

    Provided that the conduct of the President may be brought under review by any court, tribunal or body appointed or designated by either House of Parliament for the investigation of a charge under article 61: <br><br>

    Provided further that nothing in this clause shall be construed as restricting the right of any person to bring appropriate proceedings against the Government of India or the Government of a State. <br><br>

    (2) No criminal proceedings whatsoever shall be instituted or continued against the President, or the Governor of a State, in any court during his term of office. <br><br>

    (3) No process for the arrest or imprisonment of the President, or the Governor of a State, shall issue from any court during his term of office. <br><br>

    (4) No civil proceedings in which relief is claimed against the President, or the Governor of a State, shall be instituted during his term of office in any court in respect of any act done or purporting to be done by him in his personal capacity, whether before or after he entered upon his office as President, or as Governor of such State, until the expiration of two months next after notice in writing has been delivered to the President or the Governor, as the case may be, or left at his office stating the nature of the proceedings, the cause of action therefore, the name, description and place of residence of the party by whom such proceedings are to be instituted and the relief which he claims.<br><br>


    </p></font></a><p class="subhead"><a name="361"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="239">SPECIAL RESPONSIBILITIES</a></font></b></p><a name="239">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 239. Administration of Union territories.</b>- (1) Save as otherwise provided by Parliament by law, every Union territory shall be administered by the President acting, to such extent as he thinks fit, through an administrator to be appointed by him with such designation as he may specify. <br><br>

    (2) Notwithstanding anything contained in Part VI, the President may appoint the Governor of a State as the administrator of an adjoining Union territory, and where a Governor is so appointed, he shall exercise his functions as such administrator independently of his Council of Ministers.<br><br>


    <b>Article 243-I. Constitution of Finance Commission to review financial position.</b>- (1) The Governor of a State shall, as soon as may be within one year from the commencement of the Constitution (Seventy-third Amendment) Act, 1992, and thereafter at the expiration of every fifth year, constitute a Finance Commission to review the financial position of the Panchayats and to make recommendations to the Governor as to- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the principles which should govern- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (i) the distribution between the State and the Panchayats of the net proceeds of the taxes, duties, tolls and fees leviable by the State, which may be divided between them under this Part and the allocation between the Panchayats at all levels of their respective shares of such proceeds; <br><br>

    (ii) the determination of the taxes, duties, tolls and fees which may be assigned to, or appropriated by, the Panchayats; <br><br>

    (iii) the grants-in-aid to the Panchayats from the Consolidated Fund of the State; <br><br>
    </p></blockquote><p style="text-align:justify;">
    (b) the measures needed to improve the financial position of the Panchayats; <br><br>

    (c) any other matter referred to the Finance Commission by the Governor in the interests of sound finance of the Panchayats. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) The Legislature of a State may, by law, provide for the composition of the Commission, the qualifications which shall be requisite for appointment as members thereof and the manner in which they shall be selected. <br><br>

    (3) The Commission shall determine their procedure and shall have such powers in the performance of their functions as the Legislature of the State may, by law, confer on them. <br><br>

    (4) The Governor shall cause every recommendation made by the Commission under this article together with an explanatory memorandum as to the action taken thereon to be laid before the Legislature of the State.<br><br>


    <b>Article 243Y. Finance Commission.</b>- (1) The Finance Commission constituted under article 243-I shall also review the financial position of the Municipalities and make recommendations to the Governor as to- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the principles which should govern- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (i) the distribution between the State and the Municipalities of the net proceeds of the taxes, duties, tolls and fees leviable by the State, which may be divided between them under this Part and the allocation between the Municipalities at all levels of their respective shares of such proceeds; <br><br>

    (ii) the determination of the taxes, duties, tools and fees which may be assigned to, or appropriated by, the Municipalities; <br><br>

    (iii) the grants-in-aid to the Municipalities from the Consolidated Fund of the State; <br><br>
    </p></blockquote><p style="text-align:justify;">
    (b) the measures needed to improve the financial position of the Municipalities; <br><br>

    (c) any other matter referred to the Finance Commission by the Governor in the interests of sound finance of the Municipalities. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (2) The Governor shall cause every recommendation made by the Commission under this article together with an explanatory memorandum as to the action taken theron to be laid before the Legislature of the State.<br><br>



    <b>Article 371D. Special provisions with respect to the State of Telangana.</b>- (1) The President may by order made with respect to the State of Telangana provide, having regard to the requirements of the State as a whole, for equitable opportunities and facilities for the people belonging to different parts of the State, in the matter of public employment and in the matter of education, and different provisions may be made for various parts of the State.
    (2) An order made under clause (1) may, in particular,- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) require the State Government to organise any class or classes of posts in a civil service of, or any class or classes of civil posts under, the State into different local cadres for different parts of the State and allot in accordance with such principles and procedure as may be specified in the order the persons holding such posts to the local cadres so organised; <br><br>

    (b) specify any part or parts of the State which shall be regarded as the local area- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (i) for direct recruitment to posts in any local cadre (whether organised in pursuance of an order under this article or constituted otherwise) under the State Government; <br><br>

    (ii) for direct recruitment to posts in any cadre under any local authority within the State; and <br><br>

    (iii) for the purposes of admission to any University within the State or to any other educational institution which is subject to the control of the State Government; <br><br>
    </p></blockquote><p style="text-align:justify;">
    (c) specify the extent to which, the manner in which and the conditions subject to which, preference or reservation shall be given or made- <br><br>
    </p><blockquote>
    (i) in the matter of direct recruitment to posts in any such cadre referred to in sub-clause (b) as may be specified in this behalf in the order; <br><br>

    (ii) in the matter of admission to any such University or other educational institution referred to in sub-clause (b) as may be specified in this behalf in the order, to or in favour of candidates who have resided or studied for any period specified in the order in the local area in respect of such cadre, University or other educational institution, as the case may be. <br><br>
    </blockquote><p style="text-align:justify;">
    </p></blockquote><p style="text-align:justify;">
    (3) The President may, by order, provide for the constitution of an Administrative Tribunal for the State of Telangana to exercise such jurisdiction, powers and authority [including any jurisdiction, power and authority which immediately before the commencement of the Constitution (Thirty-second Amendment) Act, 1973, was exercisable by any court (other than the Supreme Court) or by any tribunal or other authority] as may be specified in the order with respect to the following matters, namely:- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) appointment, allotment or promotion to such class or classes of posts in any civil service of the State, or to such class or classes of civil posts under the State, or to such class or classes of posts under the control of any local authority within the State, as may be specified in the order; <br><br>

    (b) Seniority of persons appointed, allotted or promoted to such class or classes of posts in any civil service of the State, or to such class or classes of civil posts under the State, or to such class or classes of posts under the control of any local authority within the State, as may be specified in the order; <br><br>

    (c) such other conditions of service of persons appointed, allotted or promoted to such class or classes of posts in any civil service of the State or to such class or classes of civil posts under the State or to such class or classes of posts under the control of any local authority within the State, as may be specified in the order. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (4) An order made under clause (3) may- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) authorise the Administrative Tribunal to receive representations for the redress of grievances relating to any matter within its jurisdiction as the President may specify in the order and to make such orders thereon as the Administrative Tribunal deems fit; <br><br>

    (b) contain such provisions with respect to the powers and authorities and procedure of the Administrative Tribunal (including provisions with respect to the powers of the Administrative Tribunal to punish for contempt of itself) as the President may deem necessary; <br><br>

    (c) provide for the transfer to the Administrative Tribunal of such classes of proceedings, being proceedings relating to matters within its jurisdiction and pending before any court (other than the Supreme Court) or tribunal or other authority immediately before the commencement of such order, as may be specified in the order; <br><br>

    (d) contain such supplemental, incidental and consequential provisions (including provisions as to fees and as to limitation, evidence or for the application of any law for the time being in force subject to any exceptions or modifications) as the President may deem necessary. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (5) the order of the Administrative Tribunal finally disposing of any case shall become effective upon its confirmation by the State Government or on the expiry of three months from the date on which the order is made, whichever is earlier: <br><br>

    Provided that the State Government may, by special order made in writing and for reasons to be specified therein, modify or annul any order of the Administrative Tribunal before it becomes effective and in such a case, the order of the Administrative Tribunal shall have effect only in such modified form or be of no effect, as the case may be. <br><br>

    (6) Every special order made by the State Government under the proviso to clause (5) shall be laid, as soon as may be after it is made, before both Houses of the State Legislature. <br><br>

    (7) The High Court for the State shall not have any powers of superintendence over the Administrative Tribunal and no court (other than the Supreme Court) or tribunal shall exercise any jurisdiction, power or authority in respect of any matter subject to the jurisdiction, power or authority of, or in relation to, the Administrative Tribunal. <br><br>

    (8) If the President is satisfied that the continued existence of the Administrative Tribunal is not necessary, the President may by order abolish the Administrative Tribunal and make such provisions in such order as he may deem fit for the transfer and disposal of cases pending before the Tribunal immediately before such abolition. <br><br>

    (9) Notwithstanding any judgment, decree or order of any court, tribunal or other authority,- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) no appointment, posting, promotion or transfer of any person- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (i) made before the 1st day of November, 1956, to any post under the Government of, or any local authority within, the State of Hyderabad as it existed before that date; or <br><br>

    (ii) made before the commencement of the Constitution (Thirty-second Amendment) Act, 1973, to any post under the Government of, or any local or other authority within, the State of Telangana; and <br><br>
    </p></blockquote><p style="text-align:justify;">
    (b) no action taken or thing done by or before any person referred to in sub-clause (a), shall be deemed to be illegal or void or ever to have become illegal or void merely on the ground that the appointment, posting, promotion or transfer of such person was not made in accordance with any law, then in force, providing for any requirement as to residence within the State of Hyderabad or, as the case may be, within any part of the State of Telangana, in respect of such appointment, posting, promotion or transfer. <br><br>
    </p></blockquote><p style="text-align:justify;">
    (10) The provisions of this article and of any order made by the President there under shall have effect notwithstanding anything in any other provision of this Constitution or in any other law for the time being in force.]<br><br>

    <b>Article 371E. Establishment of Central University in Telangana.</b>- Parliament may by law provide for the establishment of a University in the State of Telangana. <br><br>


    </p></font></a><p class="subhead"><a name="239"><b><font size="3" color="brown"></font></b></a><b><font size="3" color="brown"><a name="244">THE SCHEDULED AND TRIBAL AREAS</a></font></b></p><a name="244">
    <font size="2" color="navy">
    <p style="text-align:justify;">
    <b>Article 244. Administration of Scheduled Areas and Tribal Areas.</b>- (1) The provisions of the Fifth Schedule shall apply to the administration and control of the Scheduled Areas and Scheduled Tribes in any State other than the States of Assam Meghalaya, Tripura and Mizoram. <br><br>

    (2) The provisions of the Sixth Schedule shall apply to the administration of the tribal areas in the States of Assam, Meghalaya, Tripura and Mizoram. <br><br>



    </p><p class="subhead"><b><font size="3" color="brown">FIFTH SCHEDULE <br>
    [Article 244(1)]</font></b></p>

    <p style="text-align:justify;">
    Provisions as to the Administration and Control of Scheduled Areas and Scheduled Tribes<br><br>

    </p><p class="subhead"><b><font size="3" color="brown">PART A <br>
    GENERAL</font></b></p>

    <p style="text-align:justify;">
    <b>1. Interpretation.</b>- In this Schedule, unless the context otherwise requires, the expression "State" does not include the States of Assam, Meghalaya, Tripura and Mizoram.<br><br>

    <b>2. Executive power of a State in Scheduled Areas.</b>-Subject to the provisions of this Schedule, the executive power of a State extends to the Scheduled Areas therein.<br><br>

    <b>3. Report by the Governor to the President regarding the administration of Scheduled Areas.</b>- The Governor of each State having Scheduled Areas therein shall annually, or whenever so required by the President, make a report to the President regarding the administration of the Scheduled Areas in that State and the executive power of the Union shall extend to the giving of directions to the State as to the administration of the said areas. <br><br>


    </p><p class="subhead"><b><font size="3" color="brown">PART B<br>
    ADMINISTRATION AND CONTROL OF SCHEDULED AREAS AND SCHEDULED TRIBES</font></b></p>

    <p style="text-align:justify;">
    <b>4. Tribes Advisory Council.</b>- (1) There shall be established in each State having Scheduled Areas therein and, if the President so directs, also in any State having Scheduled Tribes but not Scheduled Areas therein, a Tribes Advisory Council consisting of not more than twenty members of whom, as nearly as may be, three-fourths shall be the representatives of the Scheduled Tribes in the Legislative Assembly of the State:
    Provided that if the number of representatives of the Scheduled Tribes in the Legislative Assembly of the State is less than the number of seats in the Tribes Advisory Council to be filled by such representatives, the remaining seats shall be filled by other members of those tribes.<br><br>

    (2) It shall be the duty of the Tribes Advisory Council to advise on such matters pertaining to the welfare and advancement of the Scheduled Tribes in the State as may be referred to them by the Governor.<br><br>

    (3) The Governor may make rules prescribing or regulating, as the case may be,-<br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) the number of members of the Council, the mode of their appointment and the appointment of the Chairman of the Council and of the officers and servants thereof; <br><br>
    (b) the conduct of its meetings and its procedure in general; and<br><br>
    (c) all other incidental matters.<br><br>
    </p></blockquote><p style="text-align:justify;">
    <b>5. Law applicable to Scheduled Areas.</b>- (1) Notwithstanding anything in this Constitution, the Governor may by public notification direct that any particular Act of Parliament or of the Legislature of the State shall not apply to a Scheduled Area or any part thereof in the State or shall apply to a Scheduled Area or any part thereof in the State subject to such exceptions and modifications as he may specify in the notification and any direction given under this sub-paragraph may be given so as to have retrospective effect.<br><br>

    (2) The Governor may make regulations for the peace and good government of any area in a State which is for the time being a Scheduled Area.<br><br>

    In particular and without prejudice to the generality of the foregoing power, such regulations may- <br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) prohibit or restrict the transfer of land by or among members of the Scheduled Tribes in such area;<br><br>

    (b) regulate the allotment of land to members of the Scheduled Tribes in such area;<br><br>

    (c) regulate the carrying on of business as money-lender by persons who lend money to members of the Scheduled Tribes in such area.<br><br>
    </p></blockquote><p style="text-align:justify;">
    (3) In making any such regulation as is referred to in sub-paragraph (2) of this paragraph, the Governor may repeal or amend any Act of Parliament or of the Legislature of the State or any existing law which is for the time being applicable to the area in question.<br><br>

    (4) All regulations made under this paragraph shall be submitted forthwith to the President and, until assented to by him, shall have no effect.<br><br>

    (5) No regulation shall be made under this paragraph unless the Governor making the regulation has, in the case where there is a Tribes Advisory Council for the State, consulted such Council. <br><br>



    </p><p class="subhead"><b><font size="3" color="brown">PART C <br>
    SCHEDULED AREAS</font></b></p>

    <p style="text-align:justify;">
    <b>6. Scheduled Areas.</b>- (1) In this Constitution, the expression "Scheduled Areas" means such areas as the President may by order declare to be Scheduled Areas.<br><br>
    (2) The President may at any time by order<br><br>
    </p><blockquote><p style="text-align:justify;">
    (a) direct that the whole or any specified part of a Scheduled Area shall cease to be a Scheduled Area or a part of such an area;<br><br>

    [(aa) increase the area of any Scheduled Area in a State after consultation with the Governor of that State;]<br><br>

    (b) alter, but only by way of rectification of boundaries, any Scheduled Area;<br><br>

    (c) on any alteration of the boundaries of a State or on the admission into the Union or the establishment of a new State, declare any territory not previously included in any State to be, or to form part of, a Scheduled Area;<br><br>

    [(d) rescind, in relation to any State or States, any order or orders made under this paragraph, and in consultation with the Governor of the State concerned, make fresh orders redefining the areas which are to be Scheduled Areas;] and any such order may contain such incidental and consequential provisions as appear to the President to be necessary and proper, but save as aforesaid, the order made under sub-paragraph (1) of this paragraph shall not be varied by any subsequent order. <br><br>
    </p></blockquote><p style="text-align:justify;">

    </p><p class="subhead"><b><font size="3" color="brown">PART D <br>
    AMENDMENT OF THE SCHEDULE</font></b></p>

    </font></a><a name="244"><p style="text-align:justify;"><font size="2" color="navy">
    <b>7. Amendment of the Schedule.</b>- (1) Parliament may from time to time by law amend by way of addition, variation or repeal any of the provisions of this Schedule and, when the Schedule is so amended, any reference to this Schedule in this Constitution shall be construed as a reference to such Schedule as so amended.<br><br>

    (2) No such law as is mentioned in sub-paragraph (1) of this paragraph shall be deemed to be an amendment of this Constitution for the purposes of article 368.<br><br>


    </font></p>
    </a></font></font></font></td></tr></tbody></table>








    </font>    
</div>


      					<h3 class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;"><b>FORMER GOVERNORS OF UNIFIED STATE OF ANDHRA PRADESH</b></a></h3>

                            <br>
                           
        <table width="100%" align="Center" class="table table-responsive table-bordered tablestyle">
           <thead>
                <tr>
                    <th width="8%" align="center" class="2">Sl.No.</th>
                    <th width="16%" align="center" class="2">Photograph</th>
                    <th width="37%" align="center" class="2">NAME OF THE GOVERNOR</th>
                    <th align="center" class="2">TENURE</th>
                </tr>
				 </thead>
				 <tbody>
                <tr>
                    <td align="center" class="2">1.</td>
                    <td align="center"><img width="70" height="70" alt="Shri C.M.Trivedi" src="img/cmtrivedi.jpg"></td>
                    <td align="center" class="2">Shri C.M. Trivedi</td>
                    <td align="center" class="2">01-10-1953 to 31-07-1957</td>
                </tr>

            </tbody>
        </table>
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
