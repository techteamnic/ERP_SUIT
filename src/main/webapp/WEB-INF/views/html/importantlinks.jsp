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
						<b>Important Links</b></a></h3>

                          <hr>
                         <div class="contact">    

      <table align="center" class="table table-bordered">
        <tbody>
          <tr>
            <td>Ministry of Law &amp; Justice / Constitutional Act </td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://lawmin.gov.in/">http://lawmin.gov.in/</a></td>
          </tr>
          
          <tr>
            <td>RTI Act-2005</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://rti.gov.in/">http://rti.gov.in/</a></td>
          </tr>
          <tr>
            <td>President of India</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://presidentofindia.nic.in/">http://presidentofindia.nic.in/</a></td>
          </tr>
         <tr>
            <td>Prime Minister of India</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://pmindia.gov.in/en/">http://pmindia.gov.in/en/</a></td>
          </tr>
          <tr>
            <td>Government of India</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://india.gov.in/">http://india.gov.in/</a></td>
          </tr>
         <tr>
            <td>Ministry of Home Affairs</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="https://mha.gov.in/">https://mha.gov.in/</a></td>
          </tr>
         <tr>
            <td>Parliament of India</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://parliamentofindia.nic.in/">http://parliamentofindia.nic.in/</a></td>
          </tr>
          
          <tr>
            <td>Government of Telangana</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://telangana.gov.in/">http://telangana.gov.in/</a></td>
          </tr>
          <tr>
            <td>Telangana State Legislature</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://telanganalegislature.org.in/">http://www.telanganalegislature.org.in/</a></td>
          </tr>
          <tr>
            <td>Supreme Court of India</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="https://sci.gov.in/">https://sci.gov.in/</a></td>
          </tr>
          <tr>
            <td>High Court of Judicature at Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://hc.ts.nic.in/">http://hc.ts.nic.in/</a></td>
          </tr>
           <tr>
            <td>Prof. Jayashankar Telangana State Agriculture University</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://pjtsau.ac.in/">http://pjtsau.ac.in/</a></td>
          </tr>
             <tr>
            <td>Dr. B.R.Ambedkar Open University</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://braou.ac.in/">http://braou.ac.in/</a></td>
          </tr>
          <tr>
            <td>Kakatiya University, Warangal</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://kakatiya.ac.in/">http://kakatiya.ac.in/</a></td>
          </tr>
          <tr>
            <td>Osmania University</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://osmania.ac.in/">http://osmania.ac.in/</a></td>
          </tr>
          <tr>
            <td>Potti Sriramulu Telugu University</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://teluguuniversity.ac.in/">http://teluguuniversity.ac.in/</a></td>
          </tr>
          <tr>
            <td>Telangana University, Nizamabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://telanganauniversity.ac.in/">http://telanganauniversity.ac.in/</a></td>
          </tr>
          <tr>
            <td>Jawaharlal Nehru Technological University, Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://jntuh.ac.in/">http://jntuh.ac.in/</a></td>
          </tr>
           <tr>
            <td>Satavahana University, Karimnagar</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://satavahana.ac.in/">http://satavahana.ac.in/</a></td>
          </tr>
          <tr>
            <td>Mahatma Gandhi University, Nalgonda</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://mguniversity.ac.in/">http://mguniversity.ac.in/</a></td>
          </tr>
          <tr>
            <td>Palamuru University, Mahabubnagar</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://palamuruuniversity.com/">http://palamuruuniversity.com/</a></td>
          </tr>
          <tr>
            <td>Kaloji Narayana Rao University of Health Sciences, Warangal</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://knruhs.in/">http://knruhs.in/</a></td>
          </tr>
          <tr>
            <td>Jawaharlal Nehru Architecture &amp; Fine Arts University, Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://jnafau.ac.in/">http://jnafau.ac.in/</a></td>
          </tr>
           <tr>
            <td>Sri P.V. Narsimha Rao Telangana Veterinary University, Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://tsvu.nic.in/">http://tsvu.nic.in/</a></td>
          </tr>
          <tr>
            <td>Sri Konda Laxman Telangana State Horticultural University, Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://skltshu.ac.in/">http://skltshu.ac.in/</a></td>
          </tr>
           <tr>
            <td>University of Hyderabad</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://uohyd.ac.in/">http://uohyd.ac.in/</a></td>
          </tr>
           <tr>
            <td>The English and Foreign Languages University</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://efluniversity.ac.in/">http://efluniversity.ac.in/</a></td>
          </tr>
           
           
          

            <tr>
            <td>Indian Red Cross Society, Telangana</td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://ircstelangana.org/">http://ircstelangana.org/</a></td>
          </tr>
            
            <tr>
            <td>Sainik Welfare, Telangana </td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://telanganasainik.nic.in/">http://telanganasainik.nic.in/</a></td>
          </tr>
            
             <tr>
            <td>Hind Kusht Nivaran Sangh </td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://hkns.in/">http://hkns.in/</a></td>
          </tr>
            <tr>
            <td>Tuberculosis Association </td>
            
            <td><a target="_blank" rel="noopener noreferrer" href="http://tbassnindia.org/">http://tbassnindia.org/</a></td>
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
