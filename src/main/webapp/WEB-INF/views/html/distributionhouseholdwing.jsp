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
   
<h4 align="center" style="color:#000080;"><u>DISTRIBUTION OF DUTIES</u> - <u>HOUSEHOLD WING</u></h4><br>
       
        
    <table width="100%" border="0" align="CENTER" cellspacing="0">
<tbody><tr>


<td width="75%" align=" justify" =""=""> 
<p style="text-align:justify">

<b><u><font color="BROWN">JOINT SECRETARY TO GOVERNOR :</font></u></b><br>
</p>
<ol class="ulStyle">
<li>Budget of Raj Bhavan and allied matters.</li>

<li>Supervision and control over Household Section.</li>

<li>Attend to the requirements of the Governor and the Main House.</li>

<li>Maintenance of the Governor's Residential Building.</li>

<li>Supervision over Main House Kitchen / purchases, Household purchases and  Stores, Raj Bhavan Guest House, Raj Bhavan Gardens and Lawns,  
   Garage,Dispensary, Security arrangements, Telephone Exchange, Officers' quarters   and quarters in Raj Bhavan Colony.</li>

<li>Allotment of vehicles, monthly review of vehicles utilization, fuel consumption etc.,</li>


<li>Arrangements during Swearing-in-Ceremonies and any other functions at Raj Bhavan.</li>          


<li>All proposals of DyEE (R&amp;B), DyEE (Elec.) (R&amp;B) and Horticulture Officer.</li>

<li>Entire Household Establishment including  Gazetted Officers.</li>


</ol>

  <p>   <br>
    
    
  <b><u><font color="BROWN">AIDES-DE-CAMP (AsDC):   </font></u></b></p>
   
<p>One ADC in the rank of Major from Indian Army and another ADC in the cadre of Non cadre Additional SP are working as ADCs in Raj Bhavan, Hyderabad. </p>
<ol class="ulStyle">
<li>Attendance on the Governor, family and guests in Raj Bhavan, receiving and seeing off guests and family members of the Governor at Railway Stations or at Airport and at other terminals, as the case may be.</li>
<li>Arrangements of interviews, functions, engagements and visits of Governor and issue of engagement lists.</li>
<li>Drafting up of tour programme and making all arrangements for the movement of the Governor by road, rail or air and making transport arrangements including rail or air ticketing, accommodation scheduling etc.</li>
<li>Maintenance of Visitors Book.</li>
<li>Recreational activities in the Raj Bhavan.</li>
<li>Tour arrangements of the Governor / Governor Spouse in districts and outside the State and Guests in the city.</li>
</ol>
   <br>
    
    <p><b><u><font color="BROWN">CHIEF SECURITY OFFICER:</font></u></b><br></p>
  <p></p>
   
<p style="text-align:justify">  Chief Security Officer to Governor is a DSP rank Officer on deputation from Police Department. The duties and responsibilities are slightly different from 
  the responsibilities of CSO to CM, in view of the fact that in case of Governor there is a separate office of ADC. Keeping this fact in mind various 
  duties and responsibilities of CSO to Governor are indicated below: </p>
<p style="text-align:justify">
  Primarily responsible for the safety and security of the Governor, whether the Governor is inside Raj Bhavan or outside on tour. 
Reconnaissance of the route to and from places where Governor takes part in functions and liaises with the authorities concerned. 
He should visit the function site in advance and see the security arrangements, besides the arrangements for comfortable conduct of the 
Governor to the venue and to the dais. In case, any changes are required in minute-to-minute programme, he should bring such 
contingencies to the notice of ADC on duty for appropriate decision. He should supervise the security arrangements in Raj Bhavan and 
static camps while on tour. He should be easily available to ADC on duty during functions / programmes and appointments of Governor. 
During visits of VIPs supervision of security arrangements inside Raj Bhavan and colony and to inform the ADC about the same. 
Any untoward incident worth reporting be brought to the notice of the ADC on duty, bearing in mind that no trivial reports should be 
magnified and made an issue of. He is incharge of Raj Bhavan guard and responsible for their proper turnout, discipline and work. 
Liaises with the local police authorities about the security arrangements and route bandobust within and outside the city. 
Performs patrolling during day and night rounds every day in Raj Bhavan compound checking the guards and taking prompt action 
in case of any dereliction of duty.
</p>
  
  <p> 
  <br>
  <b><u><font color="BROWN">MANAGER (HOUSEHOLD):  </font></u></b></p>
   
<p style="text-align:justify">
</p><p>Manager is the section head of the Household wing. His duties include - Proper maintenance of the records, registers, as prescribed, 
pertaining to Household Section. Overseeing of Garage maintenance, driver deployment and records thereof. All correspondence emanating 
from the Household wing. All service matters of Gazetted, Non Gazetted and Last Grade employees of Governor's Household Section. 
All files emanating from the Engineering wing, i.e., both Electrical and Civil. All financial sanctions of Household Wing. 
Arrangements for all the functions conducted at Raj Bhavan.
</p>

<p> 
  <br>
  <b><u><font color="BROWN">ASSISTANT COMPTROLLER:  </font></u></b> <br>
  </p>
 
<p style="text-align:justify">
  Up-keep and maintenance of Main House, Guest House and Premises including Colony and Community Hall 
  by proper deployment of sweepers.  Reception and send off of VVIPs, VIPs and Guests and Raj Bhavan and all 
  arrangements for their comfortable stay.  Presence at main house whenever Governor leaves for and returns from tour. 
  Arrangements including catering for banquets / parties / functions organized by Raj Bhavan.  Kitchen and pantry maintenance, 
  upkeep, deployment and control over steward, cooks, butlers and household attendants, making all purchases of all items 
  required for main house. 
</p>
<br>
<p><b><u><font color="BROWN">SENIOR ASSISTANT (CENTRAL STORES ):</font></u></b><br></p>
<ol class="ulStyle">
<p style="text-align:justify">
  </p><li>Correspondence and sanctions pertaining to all purchases relating to Main House, Guest House, 
    Offices both Secretariat Wing and Household Wing including periodicals and News papers etc. </li>
  <li>Centralized procurement and maintenance of all Stores including procurements of vegetables, fruits, 
    groceries, linen, laundry, cleaning, gifts and all other miscellaneous items and material.</li>
  <li>Receipt and issue of stores and processing and settlement of all bills promptly and maintenance of records thereof.</li>
  <li>Correspondence relating of TVs/Audio Systems / Cable / DTH Connections /Treadmill / Telephones, 
    Cellular phones, EPABX, Fax / Xerox Machines of Raj Bhavan.</li>
  <li>Correspondence relating to the Construction of high rise structures coming up around the vicinity of Raj Bhavan 
    and also Community Hall hiring to Raj Bhavan staff and outsiders.</li>
  <li>Correspondence relating to the Office orders.</li>
  <li>Correspondence relating to Stationery, Forms, Printings, purchases etc.</li>
  <li>Correspondence relating to the sanction of Discretionary Grants of Governor and maintenance of its record thereto.</li>
<li>Supervises and coordinates the work relating to all purchases allocated to Steward, House Keeper, Junior Assistant and Laundry Superintendent.</li>
<li>Making out lists of invitees to Breakfast / Lunch / Dinner / At Home / Iftar and other Functions hosted by Governor, invitees list, typing addresses on invitations cards and their distribution.</li>

</ol><br>

<p></p>
<p><b><u><font color="BROWN">HOUSE KEEPER: </font></u></b><br></p>
<ol class="ulStyle">
  <li>Upkeep and maintenance of Main House, Guest House, Darbar Hall, Officers chambers.  Ensure 
    cleanliness in the entire Raj Bhavan premises.</li>
<li>Arrangements in connection with the visits of VVIPS and Guests who are accommodated in Raj Bhavan Guest House
    including placing of updated TV Channel Guide, Telephone Numbers of Officers in the Guest House etc.</li>
<li>Issue of identity cards to the staff members of Raj Bhavan.</li>
<li>Detailing manpower for Governor's tours and for cleaning of entire premises including Guest House rooms.</li>
  <li>Ensuring sofas, carpets and vacuum cleaned. </li>
  <li>Maintenance and upkeep of aquarium etc. </li>
  <li>All arrangements for the movement of the Governor by road, rail or air and making transport arrangements including rail or air ticketing etc.</li>
</ol>

<p>&nbsp;</p>
<p><b><u><font color="BROWN">STEWARD:</font></u></b><br></p>

<p> 
He will be incharge of kitchen and supply of Breakfast/Lunch/Dinner in the Main House and also to Darbar Hall, 
  North Block Guest House. </p> 


<p>&nbsp;</p>
<p><b><u><font color="BROWN">LIBRARIAN GRADE-I:</font></u></b><br>
</p>

 
<ol class="ulStyle">
  <li>Maintenance and up-keep of Raj Bhavan Library; Governor Messages.</li>
  <li>Purchase of Library books, journals etc.</li>
  <li>Correspondence relating to periodicals, journals, magazines and news papers.</li>
  <li>Assisting the Press Secretary in procurement of material for Speeches.</li>
  <li>Subscription to on-line databases.</li>
  <li>Supply of local daily newspapers to Main House and Staff Officers. </li>
  <li>Upkeep of Messages issued by the Governor.</li>
</ol><br>

<p><b><u><font color="BROWN">SENIOR ASSISTANT (TRANSPORT):</font></u></b><br></p>
<ol class="ulStyle">
  <li>Purchases and issues of POL/HSD maintenance of its stock registers. </li>
  <li>Correspondence relating to repairs of Motor Vehicles and purchases.</li>
  <li>Maintenance of Car diaries and log book of RB Vehicles.</li>
  <li>Correspondence relating to the Central Excise Duty on Petrol refund.</li>
  <li>Submission of monthly account of mileage run and POL consumed by RB Vehicles.</li>
  <li>Correspondence relating to allotment of Raj Bhavan quarters. </li>
</ol><br>

<p><b><u><font color="BROWN">LAUNDRY SUPERINTENDENT:</font></u></b><br></p>
<ol class="ulStyle">
  <li>Correspondence relating to purchase of Linen items for use of Raj Bhavan.</li>
  <li>Maintenance of Stock registers of Laundry / Cleaning materials and their issues.</li>
  <li>Supervision of work of Dhobies in Laundry.</li>
</ol><br>

<p><b><u><font color="BROWN">RECORD ASSISTANT: </font></u></b><br></p>
<ol class="ulStyle">
  <li>Distribution and Despatching of Tappals / Maintenance of Office Number book and Office Order book.</li>
  <li>Incharge of Records and Photo copier, Office proceedings / Invitation Cards.</li>
  <li>Supervision of work of Dhobies in Laundry.</li>
  <li>Submission of service stamps register to Assistant Comptroller in the first week of every month.    </li>
<li> Maintenance of postage, Attendance Register and leave account of staff officers / staff of Household Section.</li>
</ol>

  
  <br>
  <p><b><u><font color="BROWN">CLASS-III &amp; IV STAFF:</font></u></b><br></p>
  <br>
  <p><b><u><font color="BROWN">HEAD COOK / COOKS:</font></u></b> <br>
  </p>
 
<p style="text-align:justify">
  The Head Cook &amp; Cooks will be under the control of Steward.
</p>

<p>   <br>
    <b><u><font color="BROWN">HEAD BUTLER / BUTLERS:</font></u></b> <br>
  </p>
 
<p style="text-align:justify">
  The Butlers are assigned the duties of serving breakfast / lunch / dinner to the Hon'ble Governor and family members
  and arranging the table for the same. The Butlers on duty in Guest House will serve the guests. Besides the guests, 
  the Butlers will serve to the visitors of the Governor. They will work under the supervision of Steward. They work in shifts.
  The shift timings assigned for them is 06-00 A.M. to 02-00 P.M. and 02-00 P.M. to 08-00 P.M. or till dinner (whichever is late).
  One Butler shall be available on duty from 09-00 A.M. to 06-00 P.M. as per last appointment time (whichever is later).
</p>

<p>   
  <b><u><font color="BROWN">BEARERS:</font></u></b> <br>
  </p>
 
<p style="text-align:justify">
  The Bearers are incharge of the rooms of Hon'ble Governor, First Lady and Family members in the Main House. 
  Bearers on duty in Guest House are responsible for VIP rooms there. Changing Bed sheets and Curtains, keeping drinking 
  water in the rooms, attending the room bell, getting the clothes washed and ironed by Dhobi are the main functions of Bearer. 
  Besides they should ensure that room is maintained neat, clean and tidy with the help of HHAs. Housekeeper in consultation with 
  Assistant Comptroller and with approval of AsDC shall decide the time for duty for them.
</p>

<p>   <br>
  <b><u><font color="BROWN">JAMEDAR, DAFEDAR, OFFICE SUBORDINATES:</font></u></b> <br>
  </p>
 
<p style="text-align:justify">
  The main duty for them (only at Main House) is to attend the work at Hon'ble Governor's Office and the Office of the AsDC. 
  One of the Jamedar / Dafedar posted at Office of the Governor shall accompany Hon'ble Governor. They shall collect flower bouquets,
  mementoes etc., presented to Hon'ble Governor and place them before ADC for disposal after the function. On the stage he should be
  available to ADC all the time during the function. They shall pull and push the chair of Hon'ble Governor while Hon'ble Governor gets 
  up from the chair. The Housekeeper in consultation with Assistant Comptroller and with 
  approval of ADC decide the timing of duty for them.
</p>

<p>   <b><u><font color="BROWN">ACCOUNTS WING:</font></u></b> <br>
  </p>

<p>   <b><u><font color="BROWN">ACCOUNTS OFFICER:  </font></u></b> <br>
  </p>
 

<ol class="ulStyle">
  <li>Acts as Drawing and Disbursing Officer of both Household and Secretariat wings.</li>
  
  <li>Budget and correspondence relating thereto of Raj Bhavan and allied matters.</li>
  
  <li>GAP Act &amp; Rules, 1987 and its correspondence with the Ministry of Home Affairs, Government of India, New Delhi.</li>
  
  <li>Submission of monthly accounts to the Governor.</li>
  
  <li>Reconciliation of Departmental expenditure figures with the Accountant General and Pay and Accounts Office. </li>
  <li>Checking of expenditure vouchers from the Steward  for Household expenditure Scrutinizing of Abstract Contingent, Pay, 
    Supplementary bills and also T.A. Bills of all Gazetted and Non Gazetted Staff and any other claims and expenditure under all heads of account for drawal. </li>
  <li>Arranging for conduct of completion of Audit of Accounts by Accountant General, Telangana. </li>
  <li>Auditing of Contingent Bills of expenditure under all heads of account for drawal.</li>
  <li>Scrutinizing of all Ledgers, Cash books of Government money and relevant registers maintained by the Cashier, 
    Household and also Secretariat Section. </li>
  <li>Over all Supervision on the purchases made for use in Main House Kitchen, Guest House (North Block &amp; New Guest),
    Household / Secretariat. Gardens. Garage. Dispensary, Laundry.</li>
  <li>All proposals of Deputy Executive Engineer (Civil), Deputy Executive Engineer (Electrical) and Horticulture Officer.</li>
  
</ol>
<br>
<p><b><u><font color="BROWN">ACCOUNTANT GRADE-I: </font></u></b><br></p>
<ol class="ulStyle">
  <li>Preparation of pay bills / supplementary bills / T.A. Bills of Staff    
    Officers / Staff of Household Sections including Daily Wages. </li>
  
  <li>GAP Act &amp; Rules, 1987 and its correspondence with the Ministry of  Home Affairs, Government of India.   </li>
  
  <li>Budget and correspondence relating thereto.</li>
  
  <li>Submission of monthly accounts to the Governor.</li>
  
  <li>Processing of files relating to Household Section on Telephones, POL, Motor Vehicles, Stationery and Library books
    (the expenditure is being met from Secretariat Budget).</li>
  <li>Preparation of Number Statement; Budget and correspondence relating to both Household Wing and Secretariat Wing.</li>
  <li>Checking of expenditure and submission of monthly account expenditure to the Governor  expenditure to the Governor.</li>
  <li>Scrutiny of Pay, TA Bills of all Gazetted and Non Gazetted Staff,  
    Contingent Bills and any other claims and expenditure under all heads of accounts. 
    </li>
  <li>Auditing of bills. </li>
</ol>
<br>
<p><b><u><font color="BROWN">CASHIER:   </font></u></b><br></p>

   <p style="text-align:justify">
  Custody of Silver Articles belonging to Raj Bhavan and issue for Main House use whenever required and receipt and custody 
after use. Custody of cash of permanent advance and amounts drawn on Abstract Contingent Bills for disbursement to the concerned. 
Maintenance of Cash books of Government money and relevant ledgers relating to Household Section. Drawal and accounting and 
accounting of AC bills and maintenance of AC bill register/Cash book etc. 
</p>
<br>
<p><b><u><font color="BROWN">SENIOR ACCOUNTANT:</font></u></b><br></p>

<p style="text-align:justify">
  Preparation of Medical, LTC and TA bills of Staff Officers &amp; Staff of Secretariat &amp; HRD. Preparation of TA Bills in respect of 
Hon'ble Governor / Lady Governor / 
Staff Officers and Staff. Preparation of material for Test Audit by the Accountant General's Audit Party and related correspondence 
thereto. Preparation of contingent bills related to Telephones, Cellular Phones, EPABX and sub mission of bill thereto. 
</p>

<br>
<p><b><u><font color="BROWN">SENIOR ACCOUNTANT (ACCOUNTS):</font></u></b><br></p>

<p style="text-align:justify">
  Preparation of Pay bills / Supplementary bills in respect of Secretariat and Household Establishment (Gazetted / Non Gazetted 
including 
Class IV). Preparation of Bills relating to all Loans and Advances relating to entire Raj Bhavan. Maintenance of Long Roll.

</p>
<br>
<p><b><u><font color="BROWN">JUNIOR ASSISTANT (ACCOUNTS):</font></u></b><br></p>

<p style="text-align:justify">
Preparation of Contingent bills of expenditure under all heads of account for drawal. Bills relating to Raj Bhavan 
Dispensary including sanctions.
</p>

<br>

<p>   <br>
</p><p> <b><u><font color="BROWN">ENGINEERING WING:</font></u></b><br>
</p>
<p> <b><u><font color="BROWN">DEPUTY EXCUTIVE ENGINEER (ELECTRICAL):</font></u></b><br>
</p>

 
<p style="text-align:justify">
 He is assisted by one Assistant Executive Engineer (Electrical), Assistant Wireman and Electrical helpers. All matters relating to 
Electrical installation / Air Conditioning and Electrical Maintenance of Raj Bhavan Buildings and Staff Quarters. Disciplinary control 
of subordinate electrical staff. Coordination with Electrical Authority. Submits Quarterly review of works with reference to 
expenditure to Secretary to Governor through Deputy Secretary.
</p>


<p>   <br>
  <b><u><font color="BROWN">DEPUTY EXCUTIVE ENGINEER (CIVIL):</font></u></b> <br>
  </p>

 
<p style="text-align:justify">
  He is assisted by one Assistant Executive Engineer (Civil).  All matters relating to Civil works including water supply to Sumps / 
  over head tank, repairs to water lines, over head tanks and water connections, cleaning of over head tanks. Disciplinary control
  of  subordinate civil staff.  Submits Quarterly review of works with reference to expenditure should be submitted to Secretary to Governor through Deputy Secretary.
</p>


<p>   <br>
  <b><u><font color="BROWN">HORTICULTURE OFFICER:</font></u></b> <br>
  </p>

 
<p style="text-align:justify">
   Horticulture Officer is responsible for development and upkeep of the gardens of Raj Bhavan.
  He will take instructions from ADC for tasks to be performed in Raj Bhavan Gardens.  
  All the Mali's employed will be working under his command and control.
</p>

<br>



<p></p>
  </td>
</tr>
</tbody></table>

  
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
