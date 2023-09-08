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
        <div class="row">
            <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12"><br>
                    <div class="col-sm-4 col-md-4 col-xl-4 col-lg-4">
                    <img src="img/present_governor.png" name="present_governor" class="animated zoomIn delay-250 present_governor_img1"><br>
					<h3 class="title present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px;"><b>Dr. (Smt.) Tamilisai Soundararajan</b></a></h3>
					</div>
                    <div class="col-sm-8 col-md-8 col-xl-8 col-lg-8">
                        <div class="row">
                                <div class="GovernersProfile"><p><br><br>
                                   <a href="" class="animated zoomIn delay-250"><b>Dr. (Smt.) Tamilisai Soundararajan</b></a> Born on 2nd June 1961, in Nagercoil, Kanya Kumari District, Tamilnadu Dr. (Smt.) Tamilisai Soundararajan took charge as Governor of Telangana on 8th September 2019 and happens to be the 1st woman to hold this Office.
<br><br>
                                    She has a remarkable public &amp; social service background spanning over 20 years.
<br><br>
                                    She also has an illustrious political career in last two decades where she has successfully led the state unit of a political party with noteworthy accomplishments.
<br><br>
                                    Dr. (Smt.) Tamilisai Soundararajan started her career as a medical practitioner after completing her M.B.B.S., P.G. in Gynecology (DGO).
<br><br>

                                    She has undertaken special training on Ultrasound &amp; Fetal Therapy at Toronto, Canada.
<br><br>
                                    She worked as an Assistant Professor (Department of Gynecology at Sri Rama Chandra Medical College &ndash; Chennai) for 7 years &amp; resigned in 2003 for full time political engagements.
<br><br>
                                    She nurtures great devotion towards public service and enhancement of living standards of common people with focus on health and education as a prime agenda.
<br><br><br><br></p>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12 GovernersProfile"><p>

                        She has donned the hat of being a State Head of a political party &amp; steering it with exemplary management skills &amp; pro-people service milieu.
<br><br>
                        Dr. (Smt.) Tamilisai Soundararajan is a proud recipient of an international award titled &ldquo; International Rising Star of the Year &ndash; 2018&rdquo; by multi Ethnic advisory task force, USA under US Congressman Danny.K.Davis for her services to the society especially in the field of Politics, Public and Medical Services.

<br><br>
                        Dr. (Smt.) Tamilisai Soundararajan is known for her strong advocacy towards uplifting living standards of people through better health and preventive care.

<br><br>
                        She is a great admirer of social &amp; cultural strengths of our country and very considerate towards inclusion of values &amp; humility right at basic education system &amp; upwards.

<br><br>
                        Dr. (Smt.) Tamilisai Soundararajan happens to be very focused towards development of society and well-being of citizens even at last mile.
                    </p></div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
										<h3 class="title present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px;"><b> Medicine as Profession &amp; Career:</b></a></h3>
                       
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                        <table class="table table-responsive tablestyle">
                            <thead>
                                <tr>
                                    <th>Description</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Medical Qualification</td>
                                    <td>Doctor (MBBS, DGO)</td>
                                </tr>
                                <tr>
                                    <td>Professional Specialization</td>
                                    <td>Post Graduate in Gynecology</td>
                                </tr>
                                <tr>
                                    <td>Special Training</td>
                                    <td>Sonology &amp; Fetal Therapy (Canada, Australia &amp; London)</td>
                                </tr>
                                <tr>
                                    <td>Work Experience</td>
                                    <td>Worked as Asst. Professor (Department of Gynecology at Sri Rama Chandra Medical College &ndash; Chennai) for 7 years &amp; resigned in 2003 for full time political engagements</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                       
						<h3 class="title present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px;"><b>  Political Career:</b></a></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                        <table class="table table-responsive tablestyle">
                            <thead>
                                <tr>
                                    <th>Description</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Student Leader</td>
                                    <td>Madras Medical College</td>
                                </tr>
                                <tr>
                                    <td>1999 to 2001</td>
                                    <td>South Chennai District Medical Wing Secretary.</td>
                                </tr>
                                <tr>
                                    <td>2001 to 2004</td>
                                    <td>State General Secretary Medical Wing</td>
                                </tr>
                                <tr>
                                    <td>2004 to 2005</td>
                                    <td>Zonal in-charge (3 districts)</td>
                                </tr>
                                <tr>
                                    <td>2005 to 2007</td>
                                    <td>All India Co-convener (Medical Wing or Southern States) &amp; State Spokesperson</td>
                                </tr>
                                <tr>
                                    <td>2007 to 2010</td>
                                    <td>State General Secretary (Tamilnadu BJP parent body) &amp; State Spokesperson</td>
                                </tr>
                                <tr>
                                    <td>2010 to 2013</td>
                                    <td>State Vice President (Tamilnadu BJP parent body) &amp; State Spokesperson</td>
                                </tr>
                                <tr>
                                    <td>2013 to Aug 2014</td>
                                    <td>National Secretary ( All India BJP) &amp; State Spokesperson</td>
                                </tr>
                                <tr>
                                    <td>Aug 2014 till 1st Sep 2019</td>
                                    <td>Tamilnadu State President &ndash; BJP</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
<h3 class="title present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px;"><b>   Personal Contribution</b></a></h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                        <ul class="present_governorli">
                            <li>Vice President of Tamil Literary Forum </li>
                            <li>Contribution for Medical Science (Author of 2 medical books &ldquo;Guidelines to Sonology&rdquo;)</li>
                            <li>
                                2 books on our Honorable Prime Minister Modi Ji
                                <div class="mt-2">
                                </div>
                                (&ldquo;Achievements of Modi Ji &ndash; Tamil&rdquo; &amp; &ldquo; Modi Ji Srilankan Visit&rdquo;)
                                <ul>
                                    <li>A book on &ldquo;How to win Elections&rdquo;</li>
                                    <li>A book on &ldquo;Quotes of Shri Amit Shah Ji&rdquo;</li>
                                    <li>A book in Tamil literature &ldquo;Sips of Tea&rdquo;</li>
                                </ul>
                            </li>
                            <li>Literary &amp; political articles in several Tamil &amp; English Magazine</li>
                            <li>Strong Debater &amp; Orator &ndash; Conducted Programme for Student’s Public speaking Skills &amp; Talent development initiative in a popular Tamil TV Channel for 10 years</li>
                            <li>Social Service activities &ndash; Women Empowerment, Preventive Health Programs &amp; Medical camps for Women</li>
                            <li>Tamil Translator for all our National Leaders speeches</li>
                            <li>Director (Independent Charge), Bharat Petroleum Corporation of India- till 1st Sep 2019. </li>
                            <li>Writer &amp; content contributor with many literary organizations of social repute.</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
					<h3 class="title present_governor"><a href="" class="animated zoomIn delay-250" style="font-size:21px;"><b> Personal Details</b></a></h3>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-xl-12 col-lg-12">
                        <table class="table table-responsive tablestyle">
                            <thead>
                                <tr>
                                    <th>Description</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Date of Birth</td>
                                    <td>2nd June 1961</td>
                                </tr>
                                <tr>
                                    <td>Spouse</td>
                                    <td>Dr. P. Soundararajan</td>
                                </tr>
                                <tr>
                                    <td>Parents Name</td>
                                    <td>
                                        Shri Kumari Ananthan (Father)
                                        <div class="mt-1">
                                        </div>
                                        Smt. Krishna Kumari (Mother)
                                    </td>
                                </tr>
                                <tr>
                                    <td>Children</td>
                                    <td>One Son &amp; One Daughter (Both Medical Professionals)</td>
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
