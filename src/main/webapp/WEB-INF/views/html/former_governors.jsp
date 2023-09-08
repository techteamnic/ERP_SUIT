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
      					<h3 class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;"><b>FORMER GOVERNORS OF UNIFIED STATE OF ANDHRA PRADESH</b></a></h3>

                          <hr>
                           
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
                <tr>
                    <td align="center" class="2">2.</td>
                    <td align="center"><img width="70" height="80" alt="Shri Bhimsen Sachar" src="img/bhimsensachar.jpg"></td>
                    <td align="center" class="2">Shri Bhimsen Sachar</td>
                    <td align="center" class="2">01-08-1957 to 07-09-1962</td>
                </tr>
                <tr>
                    <td align="center" class="2">3.</td>
                    <td align="center"><img width="70" height="70" alt="Gen. S.M.Shrinagesh" src="img/gen.shrinagesh.jpg"></td>
                    <td align="center" class="2">Gen. S.M. Shrinagesh</td>
                    <td align="center" class="2">08-09-1962 to 03-05-1964</td>
                </tr>
                <tr>
                    <td align="center" class="2">4.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Pattom A. Thanu Pillai" src="img/thanupillai.jpg"></td>
                    <td align="center" class="2">Shri Pattom A. Thanu Pillai</td>
                    <td align="center" class="2">04-05-1964 to 10-04-1968</td>
                </tr>
                <tr>
                    <td align="center" class="2">5.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Khandubhai Kasanji Desai" src="img/khandubaidesai.jpg"></td>
                    <td align="center" class="2">Shri Khandubhai Kasanji Desai</td>
                    <td align="center" class="2">11-04-1968 to 25-01-1975</td>
                </tr>
                <tr>
                    <td align="center" class="2">6.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Justice S.Obul Reddy" src="img/obulreddy.jpg"></td>
                    <td align="center" class="2">Shri Justice S.Obul Reddy</td>
                    <td align="center" class="2">25-01-1975 to 09-01-1976</td>
                </tr>
                <tr>
                    <td align="center" class="2">7.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Mohanlal Sukhaida" src="img/sukhadia.jpg"></td>
                    <td align="center" class="2">Shri Mohanlal Sukhadia</td>
                    <td align="center" class="2">10-01-1976 to 15-06-1976</td>
                </tr>
                <tr>
                    <td align="center" class="2">8.</td>
                    <td align="center"><img width="70" height="70" alt="Shri R.D. Bhandare" src="img/rdbandare.jpg"></td>
                    <td align="center" class="2">Shri R.D. Bhandare</td>
                    <td align="center" class="2">16-06-1976 to 16-02-1977</td>
                </tr>
                <tr>
                    <td align="center" class="2">9.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Justice B.J. Dewan" src="img/bjdiwan.jpg"></td>
                    <td align="center" class="2">Shri Justice B.J. Diwan</td>
                    <td align="center" class="2">17-02-1977 to 04-05-1977</td>
                </tr>
                <tr>
                    <td align="center" class="2">10.</td>
                    <td align="center"><img width="70" height="70" alt="Smt. Sharada Mukherjee" src="img/shardamukherjee.jpg"></td>
                    <td align="center" class="2">Smt. Sharada Mukherjee</td>
                    <td align="center" class="2">05-05-1977 to 14-08-1978</td>
                </tr>
                <tr>
                    <td align="center" class="2">11.</td>
                    <td align="center"><img width="70" height="70" alt="Shri K.C. Abraham" src="img/kcabraham.jpg"></td>
                    <td align="center" class="2">Shri K.C. Abraham</td>
                    <td align="center" class="2">15-08-1978 to 14-05-1983</td>
                </tr>
                <tr>
                    <td align="center" class="2">12.</td>
                    <td align="center"><img width="70" height="70" alt="Shri Ram Lal" src="img/ramlal.jpg"></td>
                    <td align="center" class="2">Shri Ram Lal</td>
                    <td align="center" class="2">15-08-1983 to 29-08-1984</td>
                </tr>
                <tr>
                    <td align="center" class="2">13.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Dr.Shankar Dayal Sharma" src="img/shankardayalsharma.jpg"></td>
                    <td align="center" class="2">Dr. Shankar Dayal Sharma</td>
                    <td align="center" class="2">29-08-1984 to 26-11-1985</td>
                </tr>
                <tr>
                    <td align="center" class="2">14.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Smt Kumudben Manishankar Joshi" src="img/kumudjoshi.jpg"></td>
                    <td align="center" class="2">Smt. Kumudben Manishankar Joshi</td>
                    <td align="center" class="2">26-11-1985 to 07-02-1990</td>
                </tr>
                <tr>
                    <td align="center" class="2">15.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri Krishan Kant" src="img/krishankant.jpg"></td>
                    <td align="center" class="2">Shri Krishan Kant</td>
                    <td align="center" class="2">07-02-1990 to 21-08-1997</td>
                </tr>
                <tr>
                    <td align="center" class="2">16.</td>
                    <td align="center">
                    <img src="img/Ramanujam.jpg" height="70" width="70" alt="Shri G. Ramanujam"></td>
                    <td align="center" class="2">Shri G. Ramanujam <br>
                         (Governor of Orissa)</td>
                    <td align="center" class="2">22-08-1997 to 23-11-1997</td>
                </tr>
                <tr>
                    <td align="center" class="2">17.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Dr.C.Rangarajan" src="img/rangarajan.jpg"></td>
                    <td align="center" class="2">Dr. C. Rangarajan</td>
                    <td align="center" class="2">24-11-1997 to 03-01-2003</td>
                </tr>
                <tr>
                    <td align="center" class="2">18.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri Surjit Singh Barnala" src="img/barnala.jpg"></td>
                    <td align="center" class="2">Shri Surjit Singh Barnala</td>
                    <td align="center" class="2">03-01-2003 to 03-11-2004</td>
                </tr>
                <tr>
                    <td align="center" class="2">19.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri Sushilkumar Shinde" src="img/shinde.jpg"></td>
                    <td align="center" class="2">Shri Sushilkumar Shinde</td>
                    <td align="center" class="2">04-11-2004 to 04-01-2006</td>
                </tr>
                <tr>
                    <td align="center" class="2">20.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri Rameshwar Thakur" src="img/thakur.png"></td>
                    <td align="center" class="2">Shri Rameshwar Thakur</td>
                    <td align="center" class="2">04-01-2006 to 21-08-2007</td>
                </tr>
                <tr>
                    <td align="center" class="2">21.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri Narayan Datt Tiwari" src="img/ndtiwari.jpg"></td>
                    <td align="center" class="2">Shri Narayan Datt Tiwari</td>
                    <td align="center" class="2">22-08-2007 to 27-12-2009</td>
                </tr>
                <tr>
                    <td align="center" class="2">22.</td>
                    <td align="center">
                    <img width="70" height="70" alt="Shri E.S.L. Narasimhan" src="img/narasimhan.jpg"></td>
                    <td align="center" class="2">Shri E.S.L. Narasimhan</td>
                    <td align="left" class="2">
                    	<ul>
                    		a. Governor of Unified State of Andhra Pradesh 
                    		<br> 28-12-2009 to 01-06-2014 <br>
                            b. Common Governor to State(s) of Andhra Pradesh &amp; Telangana 
                            <br> 02-06-2014 to 23-07-2019 <br>
                            c. Governor of State of Telangana  
                            <br> 24-07-2019 to 07-09-2019 <br>

                        <ul>
                    </ul></ul></td>
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
