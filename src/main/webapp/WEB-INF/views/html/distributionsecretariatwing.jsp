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
						<b>GOVERNOR'S SECRETARIAT, RAJ BHAVAN, HYDERABAD</b></a></h3>

                          <hr>
                           <div class=" wing">    


  <h3 align="center" style="color:#000080;">DISTRIBUTION OF DUTIES</h3>
     <table width="100%" border="0" align="CENTER" cellspacing="0">
<tbody><tr>


<td width="75%" align=" justify" =""=""> 
<p style="text-align:justify;">

<b><u><font color="BROWN">SECRETARY TO GOVERNOR:  </font></u></b><br>
</p>
<p style="text-align:justify;">
Secretary to Governor is the Head of the Governor's Secretariat including Household Wing of Raj Bhavan, Hyderabad and is 
responsible for over all administration, superintendence and control of Governor's Secretariat including Household Wing of Raj Bhavan.
The Secretary to Governor  also  assists Hon'ble Governor in the proper discharge of all his Constitutional and other Statutory 
duties and obligations.  Ensures  proper protocol to Hon'ble Governor and the visiting dignitaries. 
</p>

<br>

<h4><u>SECRETARIAT WING</u></h4>
<br>

<p><b><u><font color="BROWN">JOINT SECRETARY TO GOVERNOR:</font> </u></b><br></p>
<br><p style="text-align:justify;">
Assists Hon'ble Governor and the Secretary to Governor in the proper discharge of their duties and obligations on the following subjects:</p>

<ol class="ulStyle">
<li>Supervision and control over Secretariat Section.</li>
<li>Constitutional, Statutory and Official functions of the Governor.</li>
<li>All matters related to Universities for which Governor is the Chancellor. </li>
<li>Sanction of leave etc. of High Court Judges, Lok  Ayukta and  Upa 
     Lok Ayukta, Chairman, Administrative Tribunal, Chief Information 
    Commissioner, Chairman and members of Electricity Regulatory Commission etc.  </li>
<li>Appointment of Special Secretary, Secretary, Joint Secretary, Deputy 
    Secretary, Assistant Secretary in the State Legislature, summoning and 
    Prorogation of  State Legislative Assembly and Council.   </li>
<li>Monthly report to the President of India and State Administrative Report.</li>
<li>Governors' Conferences, Swearing Ceremonies, At Home Functions etc.  </li>
<li>Matters relating to Salar Jung Museum / Indian Red Cross Society / St. John Ambulance Association / 
Rajya Sainik Board / Bharat Scouts and Guides / Cyclone Relief  / Tuberculosis Association / Hind Kusht Nivaran Sangh, etc.</li>
<li>Organisations with which the Governor is associated as Honorary President / Chairman.</li>
</ol>

<br>

<p><b><u><font color="BROWN">PRESS SECRETARY TO GOVERNOR:</font> </u></b><br></p>
<ol class="ulStyle">
<li>Media coordination, material for draft speech, etc. relating to the    
     functions to be attended by the Governor and accompany him. </li>
<li>Drafting messages for the Governor.</li>
<li>Issue of Press Releases.</li>
<li>Processing Teleprinter Messages.</li>
<li>Bringing important events to the notice of Secretary to Governor / Governor immediately.  </li>
<li>Liaison with Press, Information Department, Press Information Bureau, All India Radio and any other information Media.</li>
<li>Raj Bhavan Library.</li>
</ol>
<br>

<p><b><u><font color="BROWN">LIAISON OFFICER/ ASSISTANT SECRETARY TO GOVERNOR:</font>  </u></b><br></p>

<ol class="ulStyle">
<li>Processing of all files received from Secretariat / Legislature / Judiciary / Universities and submitted to Deputy Secretary / 
Joint Secretary to Governor. </li>
<li>Processing of routine petitions received  from general public. </li>
<li>Matters relating to Salar Jung Museum / Indian Red Cross Society / St. John Ambulance Association / Rajya Sainik Board / 
Bharat Scouts and Guides / Cyclone Relief / Tuberculosis Association / Hind Kusht Nivaran Sangh, etc. </li>
<li>All matters of organisations  with which the Governor is associated as Honorary President / Chairman. </li>
<li>All the establishment matters of Secretariat Section and Household Section. </li>
<li>Sanction of leave etc. of High Court Judges,  Lok Ayukta and Upa Lok Ayukta Chairman, Administrative Tribunal, Chairman, 
Electricity Regulatory Commission etc. </li>
</ol>
<br>


<p><b><u><font color="BROWN">PRIVATE SECRETARY / OSD TO GOVERNOR: </font> </u></b><br></p>
<p style="text-align:justify;">

The functions of Private Secretary are to assist the Hon'ble  Governor and maintain the record of his correspondence, notes, 
discussion with various people, instructions, directions and orders given by him and to attend the correspondence of personal nature
and with the high official dignitaries. 

</p>
<br>

<p><b><u><font color="BROWN">PERSONAL ASSISTANT TO GOVERNOR: </font> </u></b><br></p>
<p style="text-align:justify;">

The Personal Assistant is entrusted with the work of providing Secretariat assistance to  Hon'ble Governor.  
He is also responsible for keeping important and secret personal papers of the Hon'ble Governor. 

</p>
<br>


<p><b><u><font color="BROWN">SECTION OFFICER -1 </font> </u></b><br></p>
<p style="text-align:justify;">
The following subjects are being dealt by the Section Officer with the assistance of two Assistant Section Officers:
</p>

<ol class="ulStyle">
<li>Establishment Matters of Governor's Secretariat and Governor's Household Wings.  </li>
<li>State Universities. </li>
<li>Monthly report of Telangana.</li>
</ol>
<br>

<p><b><u><font color="BROWN">SECTION OFFICER -2 </font></u></b><br></p>
<p style="text-align:justify;">
The following subjects are being dealt by the Section Officer-2 with the assistance of two Assistant Section Officers:</p>
<ol class="ulStyle">
<li>All Government files of Telangana.</li>
<li>Matters relating to High Court of Judicature at Hyderabad for the State of Telangana.</li>
<li>Matters relating to Legislatures.</li>
<li>Matters relating to Constitutional and Statutory Bodies.</li>
<li>Organisations to which the Hon'ble Governor is Chairman / President / Patron, such as, IRCS, Salar Jung Museum, TB Association, KHNS, BS&amp;G, Sainic Welfare, etc).</li>
<li>Conference of Governors.</li>
<li>Monthly report of Telangana.</li>
<li>Reorganisation Act and any other related work from time to time.</li>
<li>Constitutional and Statutory bodies / CAG etc.</li>
<li>Matter relating to Fifth Schedule to the Constitution of India.</li>
<li>Important Memoranda presented by Peoples representatives, reputed voluntary and Non-Governmental Organisations.</li>
<li>Swearing-in-Ceremonies.</li>
</ol>
<br>

<p><b><u><font color="BROWN">SECTION OFFICER -3 </font></u></b><br></p>
<p style="text-align:justify;">
The following subjects are being dealt by the Section Officer-3 with the assistance of two Assistant Section Officers:</p>
<ol class="ulStyle">
<li>All petitions received from general public of Telangana and other States.</li>
<li>RTI applications monitoring and periodical reports.</li>
<li>Engineering Wing files / Correspondence.</li>
<li>e-office related files. </li>
</ol>
<br><br>
<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 1</font></u></b><br></p>
<ol class="ulStyle">
<li>ASO-1 will look after all the establishment and service matters of both Gazetted and non Gazetted officers and staff including drivers, last grade employees of both Governor's Secretariat and Household Sections of Raj Bhavan.</li>
<li>Maintenance of Service Registers of all the members of Secretariat / Household staff; correspondence relating to appointments, transfers, sanction of increments, earned and casual leave, disciplinary matters, correspondence with the Government or any organization regarding service matters and pension etc.</li>
</ol>
<br>

<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 2 </font> </u></b><br></p>
<ol class="ulStyle">
<li>Tour programmes of the Hon'ble Governor, the Lady Governor. </li>
<li>Universities of Both the States, Awards, Greetings relating to New Year / Republic Day / Independence Day and other festive occasions. </li>
</ol>
<br>


<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 3 </font> </u></b><br></p>

<ol class="ulStyle">
<li>All Loans, advances, pension proposals, recoveries etc., of Employees of Governor's Secretariat and Governor's Household. </li>
<li>Constitutional, Statutory bodies / CAG Reports etc., All Government / High Court files of both the States, Legislature matters of both the States. </li>
</ol>
<br>

<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 4 </font></u></b><br></p>

<p>Petitions received from Andhra Pradesh, RTI applications and appeals thereon.</p>

<br>

<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 5 </font></u></b><br></p>


<p>Petitions received from Telangana State and other States (except (AP), RTI applications and appeals thereon. RTI periodical reports.</p>


<br>

<p><b><u><font color="BROWN">ASSISTANT SECTION OFFICER- 6 </font></u></b><br></p>


<p>Organisations with which the Hon'ble Governor is associated with (such as IRCS, SJM, Special fund for Ex-Servicemen, St. John Ambulance Association, BS&amp;G, HKNS, TB Association etc.), e-office issues.</p>


<br>

<p><b><u><font color="BROWN">RONEO DUPLICATING OPERATOR </font></u></b><br></p>

<ol class="ulStyle">
<li>Maintenance of Stock files / records / record room.</li>
<li>Inward, outward tappal and dispatch.</li>
<li>Maintenance and distribution of tappals through registers prescribed.</li>
<li>Maintenance of postage, Attendance Register and leave account of staff officers / staff of Secretariat wing.</li>
<li>Maintenance and upkeep of Xerox machine installed at office.  Taking out photo copies as required.</li>
<li>Stitching of files.</li>
<li>Posting of turn duties on Holidays to staff including office subordinates, household attendants and maintenance of registers. Posting of regular duties to Telephone Operators.</li>
</ol>
<br>

 </td>
</tr>
</tbody></table>  
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
