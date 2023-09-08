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
      					<h4><div class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;">
						<b>STATEMENT SHOWING THE SCALE OF PAY AND BASIC PAY OF THE STAFF OFFICERS / STAFF OF GOVERNOR'S SECRETARIAT, RAJ BHAVAN, HYDERABAD</b></a></h4>

                          <hr>
                           
<div class=" wing">    


    <table width="100%" align="Center" class="table table-responsive table-bordered tablestyle">
     <thead>
        
            <tr bgcolor="336666">
            <th width="4%" align="center" class="2">Sl. No.</th>
            <th width="25%" align="center" class="2">Name &amp; Designation </th>
            <th width="15%" align="center" class="2">Scale of Pay in Rs.</th>
            <th width="10%" align="center" class="2">Basic Pay in Rs.</th>
            </tr>
  </thead>
  <tbody>
            <tr>
            <td align="center">1.</td>
            <td align="left">Sri K. Surendra Mohan, IAS <br>Secretary to Governor</td>    
            <td align="center">(Central Government)</td>
            <td align="center">1,30,600/-</td>
            </tr>

            <tr>
            <td align="center">2.</td>
            <td align="left">Sri J. Bhavani Shankar  <br>Joint Secretary to Governor</td>
            <td align="center">52590-103290</td>
            <td align="center">69,750/-</td>
            </tr>

            <tr>
            <td align="center">3.</td>
            <td align="left">Sri C.N. Raghu Prasad <br>Deputy Secretary to Governor</td>
            <td align="center">73270-108330</td>
            <td align="center">1,10,850/-</td>
            </tr>

            <tr>
            <td align="center">4.</td>
            <td align="left">Sri Ch. Seetaramulu <br>Assistant Secretary / Liaison Officer </td>
            <td align="center">46060-98440</td>
            <td align="center">69,750/-</td>
            </tr>

            <tr>
            <td align="center">5.</td>
            <td align="left">Dr Krishnanand M<br>Press Secretary to Governor (I/C)</td>
            <td align="center"></td>
            <td align="center"></td>
            </tr>


            <tr>
            <td align="center">6.</td>
            <td align="left">Smt. P. Sailaja <br>Accounts Officer (FAC)</td>
            <td align="center">28940-78910</td>
            <td align="center">36,070/-</td>
            </tr>

            <tr>
            <td align="center">7.</td>
            <td align="left">Sri K. Suresh <br>Section Officer </td>
            <td align="center">37100-91450</td>
            <td align="center">40,270/-</td>
            </tr>

            <tr>
            <td align="center">8.</td>
            <td align="left">Sri S. Rama Chandran <br>Section Officer</td>
            <td align="center">26600-77030</td>
            <td align="center">49,800/-</td>
            </tr>

            <tr>
            <td align="center">9.</td>
            <td align="left">Sri S.P.V.S. Chalapathi Rao <br>Assistant Section Officer  </td>
            <td align="center">28940-78910</td>
            <td align="center">42,490/-</td>
            </tr>

            <tr>
            <td align="center">10.</td>
            <td align="left">Sri K. Amarnath <br>Assistant Section Officer</td>
            <td align="center">29760-80930</td>
            <td align="center">49,870/-</td>
            </tr>



            <tr>
            <td align="center">11.</td>
            <td align="left">Smt. V. Sarada  <br>Senior Accountant</td>
            <td align="center">23100-67990</td>
            <td align="center">35,120/-</td>
            </tr>

            <tr>
            <td align="center">12.</td>
            <td align="left">Sri P.N. Maddaiah <br>Roneo Operator </td>
            <td align="center">15030-46060</td>
            <td align="center">30,580/-</td>
            </tr>


            <tr>
            <td align="center">13.</td>
            <td align="left">Sri B. Anandappa <br>Jamedar</td>
            <td align="center">14600-44870</td>
            <td align="center">42,490/-</td>
            </tr>

            <tr>
            <td align="center">14.</td>
            <td align="left">Sri Syed Amjad Hussain <br>Jamedar</td>
            <td align="center">14600-44870</td>
            <td align="center">38,130/-</td>
            </tr>


            <tr>
            <td align="center">15.</td>
            <td align="left">Sri M. Raj Kumar<br>Dafedar</td>
            <td align="center">13390-41380</td>
            <td align="center">31,460/-</td>

            </tr>
            <tr>
            <td align="center">16.</td>
            <td align="left">Sri D. Sridhar <br>Office Subordinate</td>
            <td align="center">15030-46060</td>
            <td align="center">35,120/-</td>
            </tr>

            <tr>
            <td align="center">17.</td>
            <td align="left">Smt. B. Jyothi <br>Office Subordinate</td>
            <td align="center">14600-44870</td>
            <td align="center">26,600/-</td>
            </tr>


            <tr>
            <td align="center">18.</td>
            <td align="left">Sri M. Venu Gopal <br>Office Subordinate</td>
            <td align="center">13390-41380</td>
            <td align="center">24,440/-</td>
            </tr>

            <tr>
            <td align="center">19.</td>
            <td align="left">Sri B. Sekhar<br>Office Subordinate</td>
            <td align="center">13390-41380</td>
            <td align="center">19,500/-</td>
            </tr>

            <tr>
            <td align="center">20.</td>
            <td align="left">Sri K.S. Raju<br>Office Subordinate</td>
            <td align="center">13000-40270</td>
            <td align="center">13,780/-</td>
            </tr>

            <tr>
            <td align="center">21.</td>
            <td align="left">Sri K. Naresh Kumar <br>Office Subordinate</td>
            <td align="center">13000-40270</td>
            <td align="center">13,000/-</td>
            </tr>

            <tr>
            <td align="center">22.</td>
            <td align="left">Sri T. Pratap Kumar<br>Office Subordinate</td>
            <td align="center">13000-40270</td>
            <td align="center">13,000/-</td>
            </tr>

            <tr>
            <td align="center">23.</td>
            <td align="left">Sri Syed Shahbaz<br>Office Subordinate</td>
            <td align="center">13000-40270</td>
            <td align="center">13,000/-</td>
            </tr>

            <tr>
            <td align="center">24.</td>
            <td align="left">Kum. B. Swathi <br>Office Subordinate</td>
            <td align="center">13000-40270</td>
            <td align="center">13,000/-</td>
            </tr>

        </tbody>
    </table>
    
    <h4 align="center" style="color:#000080;">STATEMENT SHOWING THE SCALE OF PAY AND BASIC PAY OF ADVIORS TO GOVERNOR AND STAFF OFFICERS OF THE OFFICE ADVISORS TO GOVERNOR </h4> 
     
    <table width="100%" align="Center" class="table table-responsive table-bordered tablestyle">
     <thead>
        
            <tr bgcolor="336666">
            <th width="4%" align="center" class="2">Sl. No.</th>
            <th width="25%" align="center" class="2">Name &amp; Designation</th>
            <th width="15%" align="center" class="2">Scale of Pay in Rs.</th>
            <th width="10%" align="center" class="2">Basic Pay in Rs.</th>
            </tr>
			  </thead>
<tbody>
            <tr>
            <td align="center">1.</td>
            <td align="left">Sri A.P.V.N. Sarma, IAS (Retd.)<br>Advisor to Governor</td>
            <td align="center">(Central Government)</td>
            <td align="center">1,12,500/-</td>
            </tr>

            <tr>
            <td align="center">2.</td>
            <td align="left">Sri A.K. Mohanthy, IPS (Retd.)<br>Advisor to Governor</td>
            <td align="center">(Central Government)</td>
            <td align="center">1,19,500/-</td>
            </tr>

            <tr>
            <td align="center">3.</td>
            <td align="left">Smt. J. Swarna Rekha<br>Deputy Secretary to Advisors to Governor</td>
            <td align="center">-</td>
            <td align="center">-</td>
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
