<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DbConnection"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="java.io.File"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
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
		//MedicineName,CompanyName,MedicineImage,ManufactureDate,ExpireDate,Description
	var MedicineName=document.register.MedicineName.value;
	var CompanyName=document.register.CompanyName.value;
	var MedicineImage=document.register.MedicineImage.value;
	var ManufactureDate=document.register.ManufactureDate.value;
	var ExpireDate=document.register.ExpireDate.value;
	var Description=document.register.Description.value;

		
	if(MedicineName=="" || MedicineName.length>15){
		 alert("Enter Medicine Name");
		  return false;
		}
		
	else if(CompanyName=="" || CompanyName.length>15){
		 alert("Enter Company Name");
		  return false;
		}
	else if(ManufactureDate==""){
		 alert("Select Manufacture Date ");
		 return false;
}

	else if(ExpireDate==""){
		 alert("Select Expire Date");
		 return false;
}
	else if(Description==""){
		 alert("Enter Medicine Description ");
		 return false;
	}
	else{
		alert("Medicine Update successfully...!");
	}
		return true;
	}

    
    </script>

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
<%
  String id;

  if(request.getParameter("Id")!=null){

  	id=(String)request.getParameter("Id");

  }
  else{
  id=(String)request.getAttribute("Id");
 }
  %>

<div id="wrapper">
	
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container navigation">
		
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="AdminHome.jsp">
                    <img src="img/logo.png" alt="" width="150" height="40" />
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
			  <ul class="nav navbar-nav">
				<li class="active"><a href="AdminHome.jsp">Home</a></li>
				<li>
				  <a href="AdminHome.jsp">Employee <b class="caret"></b></a>
				</li>
				<li>
				  <a href="AdminHome.jsp">Medicine <b class="caret"></b></a>
				  </li>
				<li><a href="#facilities">Order</a></li>
				<li><a href="#pricing">Feedback</a></li>
				<li><a href="index.jsp">Logout </a></li>
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
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">Medicio medical group</h2>
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
					<div class="col-lg-6">
						<div class="form-wrapper">
						<div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">
						
							<div class="panel panel-skin">
							<div class="panel-heading">
									<h3 class="panel-title"><span class="fa fa-pencil-square-o"></span> UPDATE MEDICINE DETAILS </h3>
									</div>
									<div class="panel-body">
									 <%@  page  import="java.sql.*"  %>
			<%
      			String Id="", MedicineName="", CompanyName="", MedicineImage="", ManufactureDate="",ExpireDate="", Description="",Amount="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine", "root", "");           
            		String query="select * from addmedicine where id=" + id;

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			Id=rs.getString("Id");
            			MedicineName=rs.getString("MedicineName");
            			CompanyName=rs.getString("CompanyName");
            			MedicineImage=rs.getString("MedicineImage");
            			ManufactureDate=rs.getString("ManufactureDate");
            			ExpireDate=rs.getString("ExpireDate");
            			Description=rs.getString("Description");
              			Amount=rs.getString("Amount");
              	            			
             		}
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        	   }
     		catch(Exception e)
        	{
          	System.out.println(e);
        	}
			%>

									<form role="form" class="lead" action="MedicineUpdate.jsp" method="post" name="register" id="register" onsubmit="return User_Registration()">
										<div class="row">
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<label style="display: none;">Medicine Id</label>
													<input type="text" style="display: none;" name="Id" id="Id" value="<%=Id%>" style="" placeholder="Medicine Name" class="form-control input-md">
												</div>
											</div>
										</div>
							
										<div class="row">
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<label>Medicine Name</label>
													<input type="text" name="MedicineName" id="MedicineName" value="<%=MedicineName%>" placeholder="Medicine Name" class="form-control input-md">
												</div>
											</div>
											<div class="col-xs-6 col-sm-6 col-md-6">
												<div class="form-group">
													<label>Medicine Company Name</label>
													<input type="text" name="CompanyName" id="CompanyName" value="<%=CompanyName%>" placeholder="Medicine Company Name" class="form-control input-md">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
													<label>Medicine Manufacture Date</label>
													<input type="date" name="ManufactureDate" id="ManufactureDate" value="<%=ManufactureDate%>" placeholder="Manufacture Date" class="form-control input-md">
												</div>
											</div>
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
													<label>Expire Date</label>
													<input type="date" name="ExpireDate" id="ExpireDate" value="<%=ExpireDate%>" placeholder="Contact" class="form-control input-md">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-12">
												<div class="form-group">
													<label>Description</label>
													<textarea type="text" name="Description" id="Description" value="<%=Description%>" placeholder="Description" class="form-control input-md"></textarea>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-12">
												<div class="form-group">
													<label>Amount</label>
													<input type="text" name="Amount" id="Amount" value="<%=Amount%>" placeholder="Amount" class="form-control input-md">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
												<button type="submit" value="Submit" class="btn btn-skin btn-block btn-lg">UPDATE</button></div>
											</div>
											<div class="col-xs-6 col-sm-6">
												<div class="form-group">
												<button type="reset" style="background-color:red;" class="btn btn-skin btn-block btn-lg">Cancel</button>
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