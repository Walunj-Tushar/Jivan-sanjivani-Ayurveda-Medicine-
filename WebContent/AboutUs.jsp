<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Medicio landing page template for Health niche</title>
	
    <!-- css -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="plugins/cubeportfolio/css/cubeportfolio.min.css">
	<link href="css/nivo-lightbox.css" rel="stylesheet" />
	<link href="css/nivo-lightbox-theme/default/default.css" rel="stylesheet" type="text/css" />
	<link href="css/owl.carousel.css" rel="stylesheet" media="screen" />
    <link href="css/owl.theme.css" rel="stylesheet" media="screen" />
	<link href="css/animate.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet">

	<!-- boxed bg -->
	<link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
	<!-- template skin -->
	<link id="t-colors" href="color/default.css" rel="stylesheet">

<script type="text/javascript">
	function User_Registration()
	{
	var pattern=/[^a-z|^A-Z|^\s]/;
	
	var FirstName=document.register.FirstName.value;
	var LastName=document.register.LastName.value;
	var Contact=document.register.Contact.value;
	var Email=document.register.Email.value;
	var Address=document.register.Address.value;
	var Password=document.register.Password.value;
	var ConfirmPassword=document.register.ConfirmPassword.value;

		
	if(FirstName=="" || FirstName.length>15){
		 alert("Enter first name");
		  return false;
		}
		
	else if(document.getElementById("FirstName").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}

	else if(LastName=="" || LastName.length>15){
		 alert("Enter last name");
		  return false;
		}
	else if(document.getElementById("LastName").value.match(pattern))
	{
	 alert("not allowed space, only allowed Character !");
	  return false;
	}
	if(Address=="" || Address.length>15){
		 alert("Enter Address");
		  return false;
		}
		
	else if(document.getElementById("Address").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}
	var atpos = Email.indexOf("@");
	var dotpos = Email.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=Email.length){
		 alert("Enter Valid Email address!");
		  return false;
		}
	else if(Contact=="" || Contact.length>10||Contact.length<10){
		 alert("Enter your Valid  Contact Number ");
		 return false;
}

	else if(Password.length<1 || Password.length>10){
		 alert("Enter Password  ");
		  return false;
		}
	else if(ConfirmPassword!=Password){
		 alert("Re-Enter Valid  password  ");
		  return false;
		}

	else{
		alert("Registration successfully...!");
	}
	return true;
	}

    
    </script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">

<div id="wrapper">
	
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container navigation">
		
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html">
                    <img src="img/logo.png" alt="" width="150" height="40" />
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			  <ul class="nav navbar-nav">
					<li class="active"><a href="index.jsp">Home</a></li>
				<li><a href="MedicineInfo.jsp">Medicine</a></li>
				<li><a href="AboutUs.jsp">About-Us</a></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">More <b class="caret"></b></a>
				  <ul class="dropdown-menu">
					<li><a href="WatchVideo.jsp">Watch Videos</a></li>
				  </ul>
				</li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Login <b class="caret"></b></a>
				  <ul class="dropdown-menu">
					<li><a href="AdminLogin.jsp">Admin Login</a></li>
					<li><a href="EmployeeLogin.jsp">Employee Login</a></li>
					<li><a href="UserLogin.jsp">User Login</a></li>
				   </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	

	<!-- Section: intro -->
    <section id="intro" class="intro" style="margin-top: -70px !important;">
		<div class="intro-content">
			<div class="container">
				<div class="row">
				<div class="col-lg-6">
					<div class="item"><a href="img/photo/5.jpg" title="This is an image title"  data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg"><img src="img/photo/5.jpg" style="margin-top: 0px;" class="img-responsive " alt="img"></a></div>
                     </div>
					<div class="col-lg-6">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h3 class="h-ultra">JIVANSANJAVANI AYURVEDA</h3>
					</div>
					<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.1s">
					<h4 class="h-light">Provide <span class="color">best quality healthcare</span> for you</h4>
					</div>
						<div class="well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">

						<ul class="lead-list">
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Affordable monthly premium packages</strong><br />Lorem ipsum dolor sit amet, in verterem persecuti vix, sit te meis</span></li>
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Choose your favourite doctor</strong><br />Sit zril sanctus scaevola ei, ea usu movet graeco</span></li>
							<li><span class="fa fa-check fa-2x icon-success"></span> <span class="list"><strong>Only use friendly environment</strong><br />Wisi lobortis eos ex, per at movet delectus, qui no vocent deleniti</span></li>
						</ul>

						</div>
						</div>


					</div>
						
					</div>					
				</div>		
			</div>
		</div>		
    </section>
	
	<!-- /Section: intro -->

	
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>

	<!-- Core JavaScript Files -->
    <script src="js/jquery.min.js"></script>	 
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.appear.js"></script>
	<script src="js/stellar.js"></script>
	<script src="plugins/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/nivo-lightbox.min.js"></script>
    <script src="js/custom.js"></script>


</body>

</html>

</body>
</html>