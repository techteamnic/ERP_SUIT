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
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <meta name="description" content="3D Thumbnail Hover Effects" />
  <meta name="keywords" content="3d, 3dtransform, hover, effect, thumbnail, overlay, curved, folded" />

  <link href="img/satyamevajayate.png" rel="icon">

  <script type="text/javascript" src="vendor/js/jquery.min.js"></script>
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/font-awesome/css/font-awesome.min.css"
        rel="stylesheet" type="text/css">
  <link href="vendor/css/font-awesome.min.css" rel="stylesheet">
  <link href="vendor/css/animate.css" rel="stylesheet">
  <link href="vendor/css/style.css" rel="stylesheet">

  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">

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
        <div class=" bgc">
                    <div class="gallery">
                        <div class="col-md-12">
                            <div class="panel">
                                <div class="panel-gallery">
<div class="container-fluid">


<div class="col-md-offset-1 col-md-10">
      					<h3 class="subhead present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px; text-align:center;">
						<b>LIST OF SECRETARIES/ PRL.SECRETARIES/ SPECIAL CHIEF SECRETARIES<br>TO GOVERNOR AND THEIR TENURE</b></a></h3>

                          <hr>
                           
<div class="role">    



    <table align="Center" class="table table-responsive table-bordered tablestyle">
     <thead>
        
<tr>
            
<th class="2" width="5%" align="center">Sl.No.</th>
            
<th class="2" width="50%" align="center">NAME</th>
            
<th class="2" width="18%" align="center">FROM</th>
            
<th class="2" width="18%" align="center">TO</th>
        
</tr>
</thead>
     <tbody>   
<tr>
            
<td class="2" align="center">1.</td>
            
<td class="2">Shri D.R. Sundaram, IAS</td>
            
<td class="2" align="center">01.10.1953</td>
            
<td class="2" align="center">05.08.1956</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">2.</td>
            
<td class="2">Shri S.R. Rama Murthy, IAS</td>
            
<td class="2" align="center">06.08.1956</td>
            
<td class="2" align="center">19.08.1958</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">3.</td>
            
<td class="2">Shri B.N. Jaisimha, IAS</td>
            
<td class="2" align="center">20.08.1958</td>
            
<td class="2" align="center">01.06.1960</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">4.</td>
            
<td class="2">Shri Syed Hashim Ali, IAS</td>
            
<td class="2" align="center">02.06.1960</td>
            
<td class="2" align="center">09.01.1963</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">5.</td>
            
<td class="2">Shri MHK Gahznavi, M.A.B.L.</td>
            
<td class="2" align="center">10.01.1963</td>
            
<td class="2" align="center">15.09.1963</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">6.</td>
            
<td class="2">Shri Gurudas, IAS</td>
            
<td class="2" align="center">16.09.1963</td>
            
<td class="2" align="center">22.06.1964</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">7.</td>
            
<td class="2">Shri K. Subrahmanyam, IAS</td>
            
<td class="2" align="center">23.06.1964</td>
            
<td class="2" align="center">06.10.1965</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">8.</td>
            
<td class="2">Shri Dilsukhram, IAS</td>
            
<td class="2" align="center">13.10.1965</td>
            
<td class="2" align="center">19.10.1966</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">9.</td>
            
<td class="2">Shri D. Suryanarayana Swamy, B.A,B.L.</td>
            
<td class="2" align="center">20.10.1966</td>
            
<td class="2" align="center">31.01.1968</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">10.</td>
            
<td class="2">Shri Bharat Chand Khanna, IAS</td>
            
<td class="2" align="center">01.02.1968</td>
            
<td class="2" align="center">21.06.1972</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">11.</td>
            
<td class="2">Shri S. Santhanam, IAS</td>
            
<td class="2" align="center">22.06.1972</td>
            
<td class="2" align="center">22.01.1975</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">12.</td>
            
<td class="2">Shri M.V. Rao, IAS</td>
            
<td class="2" align="center">23.01.1975</td>
            
<td class="2" align="center">31.08.1975</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">13.</td>
            
<td class="2">Shri S. Narayanan, IAS</td>
            
<td class="2" align="center">01.09.1975</td>
            
<td class="2" align="center">02.07.1976</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">14.</td>
            
<td class="2">Shri R.K.R. Gonela, IAS</td>
            
<td class="2" align="center">03.07.1976</td>
            
<td class="2" align="center">18.09.1977</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">15.</td>
            
<td class="2">Shri Mohan Kanda, IAS</td>
            
<td class="2" align="center">19.09.1977</td>
            
<td class="2" align="center">04.06.1979</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">16.</td>
            
<td class="2">Shri S.V. Subramaniyam, IAS</td>
            
<td class="2" align="center">05.06.1979</td>
            
<td class="2" align="center">06.04.1983</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">17.</td>
            
<td class="2">Shri M.V. Natarajan, IAS</td>
            
<td class="2" align="center">07.04.1983</td>
            
<td class="2" align="center">31.08.1984</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">18.</td>
            
<td class="2">Shri V. Chandra Mouli, IAS</td>
            
<td class="2" align="center">01.09.1984</td>
            
<td class="2" align="center">26.05.1989</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">19.</td>
            
<td class="2">Shri G. Suryanarayana</td>
            
<td class="2" align="center">26.05.1989</td>
            
<td class="2" align="center">15.12.1989</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">20.</td>
            
<td class="2">Shri B.V. Rama Rao, IAS</td>
            
<td class="2" align="center">15.12.1989</td>
            
<td class="2" align="center">06.02.1990</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">21.</td>
            
<td class="2">Shri P. Sitapati, IAS</td>
            
<td class="2" align="center">07.02.1990</td>
            
<td class="2" align="center">31.01.1991</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">22.</td>
            
<td class="2">Shri A.N. Tiwari, IAS</td>
            
<td class="2" align="center">20.02.1991</td>
            
<td class="2" align="center">04.09.1993</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">23.</td>
            
<td class="2">Shri Jayaprakash Narayan, IAS</td>
            
<td class="2" align="center">04.09.1993</td>
            
<td class="2" align="center">16.12.1994</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">24.</td>
            
<td class="2">Shri A.N. Tiwari, IAS</td>
            
<td class="2" align="center">16.12.1994</td>
            
<td class="2" align="center">22.08.1997</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">25.</td>
            
<td class="2">Shri M. Rama Babu, IAS</td>
            
<td class="2" align="center">23.08.1997</td>
            
<td class="2" align="center">19.12.1997</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">26.</td>
            
<td class="2">Shri K.C. Misra, IAS</td>
            
<td class="2" align="center">19.12.1997</td>
            
<td class="2" align="center">05.07.1999</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">27.</td>
            
<td class="2">Shri S. Anwar, IAS</td>
            
<td class="2" align="center">05.07.1999</td>
            
<td class="2" align="center">31.08.2005</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">28.</td>
            
<td class="2">Shri K. Sahadeva Reddy</td>
            
<td class="2" align="center">31.08.2005</td>
            
<td class="2" align="center">12.10.2005</td>
        
</tr>
    
    
<tr>
            
<td class="2" align="center">29.</td>
            
<td class="2">Shri S. Anwar, IAS</td>
            
<td class="2" align="center">12.10.2005</td>
            
<td class="2" align="center">05.11.2005</td>
        
</tr>
        
<tr>
            
<td class="2" align="center">30.</td>
            
<td class="2">Shri M.G. Gopal, IAS</td>
            
<td class="2" align="center">05.11.2005</td>
            
<td class="2" align="center">17.03.2009</td>
        
</tr>
    
<tr>
            
<td class="2" align="center">31.</td>
            
<td class="2">Dr N. Ramesh Kumar, IAS</td>
            
<td class="2" align="center">17.03.2009</td>
            
<td class="2" align="center">31.03.2016</td>
        
</tr>

<tr>
            
<td class="2" align="center">32.</td>
            
<td class="2">Shri Harpreet Singh, IAS</td>
            
<td class="2" align="center">01.04.2016</td>
            
<td class="2" align="center">14.03.2019</td>
        
</tr>



    
    
</tbody>
</table>
<br>  </div>
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


      <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="vendor/js/pdfview.js"></script>
    <script type="text/javascript" src="vendor/js/lan.js"></script>
  		<script src="vendor/js/easy-ticker.js" type="text/javascript"></script>
	<script type="text/javascript" src="vendor/js/ticker.js"></script>
	
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
		<script src="js/easy-ticker.js" type="text/javascript"></script>
	<script type="text/javascript" src="js/ticker.js"></script>
    <script type="text/javascript" src="js/pignose.calendar.full.min.js"></script>
	 <script src="js/wow.min.js"></script>
	  <script src="js/main.js"></script>
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
