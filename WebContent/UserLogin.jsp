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
function User_Login()
{
	var pattern=/[^a-z|^A-Z|^\s]/;
	var Email=document.login.Email.value;
	var Password=document.login.Password.value;
	
	var atpos = Email.indexOf("@");
	var dotpos = Email.lastIndexOf(".");
	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=Email.length){
		 alert("Enter Valid Email address!");
		  return false;
		}
	else if(Password.length<1 || Password.length>10){
		 alert("Enter Password  ");
		  return false;
		}

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
				</li>	</ul>
				</li>
			  </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	

	<!-- Section: intro -->
    <section id="intro" class="intro">
		<div class="intro-content">
			<div class="container">
				<div class="row">
				
				<div class="col-lg-6">
					<div class="item"><a href="img/photo/5.jpg" title="This is an image title"  data-lightbox-gallery="gallery1" data-lightbox-hidpi="img/works/5@2x.jpg"><img src="img/photo/5.jpg" style="margin-top: -50px;" class="img-responsive " alt="img"></a></div>
                     </div>
					
					<div class="col-lg-6">
						<div class="form-wrapper">
						<div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">
						
							<div class="panel panel-skin">
							<div class="panel-heading">
									<h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>USER LOGIN </h3>
									</div>
									<div class="panel-body">
									<form role="form" class="lead" action="Login" method="post" name="login" id="login" onsubmit="return User_Login()">
										<div class="row">
											
										<div class="row">
											<div class="col-xs-6 col-sm-12">
												<div class="form-group">
													<label>Email</label>
													<input type="email" name="Email" id="Email" class="form-control input-md">
												</div>
											</div>
											<div class="col-xs-6 col-sm-12">
												<div class="form-group">
													<label>Password</label>
													<input type="password" name="Password" id="Password" class="form-control input-md">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
													<button type="submit" value="Submit" class="btn btn-skin btn-block btn-lg">LOGIN</button>
												</div>
											</div>
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
												<button type="reset" style="background-color:red;" class="btn btn-skin btn-block btn-lg">RESET</button>
												</div>
											</div>
										</div>
										<div class="row">
										<div class="col-xs-6 col-sm-3"></div>
											<div class="col-xs-6 col-sm-8">
												<a href="Registration.jsp" style="color: blue;">Click Here For New Registration</a></button>
												</div>
											</div>
										</div>
										
									</form>
								</div>
							</div>				
						
						</div>
						</div>
					</div>					
				</div>		
			</div>
		</div>		
    </section>
	
	<!-- /Section: intro -->



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