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
	var pattern=/[^a-z|^A-Z|^\s]/;
	
	var FirstName=document.register.FirstName.value;
	var LastName=document.register.LastName.value;
	var Contact=document.register.Contact.value;
	var Email=document.register.Email.value;
	var Address=document.register.Address.value;
	var Photo=document.register.Photo.value;
	var AdharNo=document.register.AdharNo.value;

		
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

	else if(Photo==""){
		 alert("Add Photo  ");
		  return false;
		}
	else if(AdharNo=="" || AdharNo.length>12||AdharNo.length<12){
		 alert("Enter your Valid  Adhar Number ");
		 return false;
	}
	else{
		alert("Employee Added successfully...!");
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
				<li>
				  <a href="AdminHome.jsp">Order <b class="caret"></b></a>
				  </li>
				<li><a href="ViewFeedback.jsp">Feedback</a></li>
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
					<div class="col-lg-12">
					<div class="wow fadeInDown" data-wow-offset="0" data-wow-delay="0.1s">
					<h2 class="h-ultra">Medicine Details</h2>
					</div>
						<div class="well well-trans">
						<div class="wow fadeInRight" data-wow-delay="0.1s">
				<table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr>
						        <th>ID</th>
                               <th>Medicine Name</th>
                               <th>Company Name</th>
                               <th>Medicine Image </th>
                               <th>Manufacture Date</th>
                               <th>Expire Date</th>
                               <th>Description</th>
                               <th>Price</th>
                               <th>Action</th>                   
                              									
                          </tr>
                  </thead>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "medicine";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addmedicine";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
	
	Blob image=resultSet.getBlob("MedicineImage");
	byte[] imgData =image.getBytes(1,(int)image.length());
	String imgDataBase64 = new String(Base64.getEncoder().encode(imgData));
	
%>
<tr>
<td>
<%=resultSet.getString("Id") %>
</td>
<td>
<%=resultSet.getString("MedicineName") %></td>
<td><%=resultSet.getString("CompanyName") %></td>
<td>
<img src="data:image/jpg;base64,<%=imgDataBase64 %>" alt="no image"  width="150px" height="100px"/>
</td>
<td>
<%=resultSet.getString("ManufactureDate") %>
</td>
<td>
<%=resultSet.getString("ExpireDate") %></td>
<td>
<%=resultSet.getString("Description") %></td>
<td>
<%=resultSet.getString("Amount") %></td>
 <td><button><a href="UpdateMedicine.jsp?Id=<%=resultSet.getString("Id") %>" style="color:green;"><i class="fa fa-edit"></i> Edit</a></button><br><br>
 <button><a href="DeleteMedicine.jsp?Id=<%=resultSet.getString("Id") %>" style="color:red;"><i class="fa fa-edit"></i> Delete</a></button> </td>
								       		
</tr>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

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
 <!-- Javascripts-->
    <script src="Table/js/jquery-2.1.4.min.js"></script>
    <script src="Table/js/bootstrap.min.js"></script>
    <script src="Table/js/plugins/pace.min.js"></script>
    <script src="Table/js/main.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="Table/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="Table/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
  

</body>

</html>

</body>
</html>