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
						<b>Contact Us</b></a></h3>

                          <hr>
                        <div class="contact">    

      
    <table align="right">
        <tbody>
            <tr>
            <td width="100%" align="right">
            <font size="4" face="garamond"><b>
            EPABX No. (040)23310521<br>
            FAX   No. (040)23311260<br>
            FAX No.(ADC). (040)23314777<br>
            email: rajbhavan-hyd(@)gov(dot)in<br>For Hon'ble Governor's appointment, please email to:<br>adc-rbhyd(@)gov(dot)in
            <br><p style="color: #f12522;">* Please Note: Any other/older email id(s) is/are not being monitored w.e.f 1<sup>st</sup> August 2019</p>
            <br>
            </b></font>
            </td>
            <td width="5%"></td>
            </tr>
        </tbody>
    </table>
    <br>
      
    <table width="100%" align="Center" class="table table-responsive table-bordered tablestyle">
     <thead>
            <tr bgcolor="336666">
            <th width="4%" align="center" class="2">Sl.No.</th>
            <th width="25%" align="center" class="2">Name of the Officer</th>
            <th width="25%" align="center" class="2">Designation</th>
            <th width="10%" align="center" class="2">Extn. No.</th>
            </tr>
			     </thead>
			<tbody>
            <tr>
            <td align="center" class="2"><font color="NAVY">1.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. K. Surendra Mohan, IAS</b></font></td>
            <td class="2"><font color="NAVY">Secretary to Governor</font></td>
            <td align="center" class="2"><font color="NAVY">221/202</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">2.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. J. Bhavani Shankar</b></font></td>
            <td class="2"><font color="NAVY">Joint Secretary to Governor (S.S)</font></td>
            <td align="center" class="2"><font color="NAVY">315</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">3.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. C.N. Raghu Prasad</b></font></td>
            <td class="2"><font color="NAVY">Joint Secretary to Governor(H.H)</font></td>
            <td align="center" class="2"><font color="NAVY">320</font></td>
            </tr>

            <!-- <tr>
            <td align="center" class="2"><font color="NAVY">4.</font></td>
            <td class="2"><font color="NAVY"><b>Dr. Krishnanand M</b></font></td>
            <td class="2"><font color="NAVY">Press Secretary to Governor</font></td>
            <td align="center" class="2"><font color="NAVY">316</font></td>
            </tr> -->


            <tr>
            <td align="center" class="2"><font color="NAVY">4.</font></td>
            <td class="2"><font color="NAVY"><b>Maj. Tushar Bhasin</b></font></td>
            <td class="2"><font color="NAVY">ADC to Governor (Army)</font></td>
            <td align="center" class="2"><font color="NAVY">241</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">5.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. K. Narasimha</b></font></td>
            <td class="2"><font color="NAVY">ADC to Governor (Police)</font></td>
            <td align="center" class="2"><font color="NAVY">241</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">6.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. Ch. Seetaramulu</b></font></td>
            <td class="2"><font color="NAVY"> Assistant Secretary to Governor / Liaison Officer </font></td>
            <td align="center" class="2"><font color="NAVY">318</font></td>
            </tr>


            <tr>
            <td align="center" class="2"><font color="NAVY">7.</font></td>
            <td class="2"><font color="NAVY"><b>Dr. S. Dinesh</b></font></td>
            <td class="2"><font color="NAVY">Medical  Officer</font></td>
            <td align="center" class="2"><font color="NAVY">250</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">8.</font></td>
            <td class="2"><font color="NAVY"><b>Dr. Smt. P. Nagamani</b></font></td>
            <td class="2"><font color="NAVY">Lady Medical Officer</font></td>
            <td align="center" class="2"><font color="NAVY">250</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">9.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. E. Kanaka Raju</b></font></td>
            <td class="2"><font color="NAVY">Deputy Executive Engineer (Electrical)</font></td>
            <td align="center" class="2"><font color="NAVY">273</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">10.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. K. Rupkaran</b></font></td>
            <td class="2"><font color="NAVY">Deputy Executive Engineer (R&amp;B)</font></td>
            <td align="center" class="2"><font color="NAVY">203</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">11.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. N. Janaki Ramarao</b></font></td>
            <td class="2"><font color="NAVY">Chief Security Officer</font></td>
            <td align="center" class="2"><font color="NAVY">271</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">12.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. L. Srinivasa Rao</b></font></td>
            <td class="2"><font color="NAVY">Chief Security Officer </font></td>
            <td align="center" class="2"><font color="NAVY">271</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">13.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. V. Srinivas</b></font></td>
            <td class="2"><font color="NAVY">Assistant Director (Horticulture)</font></td>
            <td align="center" class="2"><font color="NAVY">225</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">14.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. Bhuv Seshagiri Rao</b></font></td>
            <td class="2"><font color="NAVY">OSD  to Governor</font></td>
            <td align="center" class="2"><font color="NAVY">242</font></td>
            </tr>
			
			<tr>
            <td align="center" class="2"><font color="NAVY">15.</font></td>
            <td class="2"><font color="NAVY"><b>Smt . N. Sudha</b></font></td>
            <td class="2"><font color="NAVY">Section Officer</font></td>
            <td align="center" class="2"><font color="NAVY">294</font></td>
            </tr>
			
            <tr>
            <td align="center" class="2"><font color="NAVY">16.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. K. Suresh</b></font></td>
            <td class="2"><font color="NAVY">Section Officer</font></td>
            <td align="center" class="2"><font color="NAVY">286</font></td>
            </tr>            

            <tr>
            <td align="center" class="2"><font color="NAVY">17.</font></td>
            <td class="2"><font color="NAVY"><b>Sri S. Rama Chandran</b></font></td>
            <td class="2"><font color="NAVY">Section Officer</font></td>
            <td align="center" class="2"><font color="NAVY">293</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">18.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. Z. Herold David</b></font></td>
            <td class="2"><font color="NAVY">Assistant Comptroller</font></td>
            <td align="center" class="2"><font color="NAVY">229</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">19.</font></td>
            <td class="2"><font color="NAVY"><b>Smt. J. Poonam</b></font></td>
            <td class="2"><font color="NAVY">AEE (Elec.) (R&amp;B)</font></td>
            <td align="center" class="2"><font color="NAVY">270</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">20.</font></td>
            <td class="2"><font color="NAVY"><b>Smt. G. Rajini</b></font></td>
            <td class="2"><font color="NAVY">AEE (R&amp;B)</font></td>
            <td align="center" class="2"><font color="NAVY">236</font></td>
            </tr>
			
			<tr>
            <td align="center" class="2"><font color="NAVY">21.</font></td>
            <td class="2"><font color="NAVY"><b>Sri Mohd Sami Ur Rahaman</b></font></td>
            <td class="2"><font color="NAVY">AEE (R&B)</font></td>
            <td align="center" class="2"><font color="NAVY">203</font></td>
            </tr>
			
            <tr>
            <td align="center" class="2"><font color="NAVY">22.</font></td>
            <td class="2"><font color="NAVY"><b>Smt. P. Sailaja</b></font></td>
            <td class="2"><font color="NAVY">AO (FAC )</font></td>
            <td align="center" class="2"><font color="NAVY">294</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">23.</font></td>
            <td class="2"><font color="NAVY"><b>Smt. V. Sarada</b></font></td>
            <td class="2"><font color="NAVY">STO (Accounts)</font></td>
            <td align="center" class="2"><font color="NAVY">275</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">24.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. D.K. Bhattacharjee</b></font></td>
            <td class="2"><font color="NAVY">Manager (HH)</font></td>
            <td align="center" class="2"><font color="NAVY">319</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">25.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. S.M. Jahangir</b></font></td>
            <td class="2"><font color="NAVY">Accountant Grade-I</font></td>
            <td align="center" class="2"><font color="NAVY">228</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">26.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. G. Srinivasulu</b></font></td>
            <td class="2"><font color="NAVY">Cashier</font></td>
            <td align="center" class="2"><font color="NAVY">228</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">27.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. K. Amarnath</b></font></td>
            <td class="2"><font color="NAVY">Assistant Section Officer</font></td>
            <td align="center" class="2"><font color="NAVY">222</font></td>
            </tr>

            <tr>
            <td align="center" class="2"><font color="NAVY">28.</font></td>
            <td class="2"><font color="NAVY"><b>Sri  K. Yogendhar</b></font></td>
            <td class="2"><font color="NAVY">Assistant Section Officer (I/c)</font></td>
            <td align="center" class="2"><font color="NAVY">277</font></td>
            </tr>

            
            <tr>
            <td align="center" class="2"><font color="NAVY">29.</font></td>
            <td class="2"><font color="NAVY"><b>Sri. S. Sai Avinash</b></font></td>
            <td class="2"><font color="NAVY">Librarian</font></td>
            <td align="center" class="2"><font color="NAVY">211</font></td>
            </tr>
        </tbody>
    </table>
<br>
<p style="text-align:justify">
<b>Postal Address: </b><br>
The Secretary to Governor,<br>
Raj Bhavan, Telangana,<br>Hyderabad-500041.

</p>
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
	      <script type="text/javascript" src="js/lan.js"></script>
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
