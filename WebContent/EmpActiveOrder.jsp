<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import ="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    <%@  page  import="java.sql.*"  %>
			<%
      			String id=request.getParameter("Id");
			String FirstName="",LastName="",Address="",Contact="",Email="",MedicineName="",CompanyName="",MedicineImage="",ManufactureDate="",ExpireDate="",Description="",Amount="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine", "root", "");           
            		String query="select * from ordermedicine";

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			id=rs.getString("Id");
            			
            			
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
  
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/medicine"
                           user="root"  password=""/>
                           
	<sql:update dataSource="${dbsource}" var="count">
            UPDATE ordermedicine SET PaymentStatus=1
            WHERE id ='${param.id}' 
    </sql:update>
    
	<c:if test="${count>=1}">
           	<%        
           	RequestDispatcher dispatcher =request.getRequestDispatcher("EmpViewOrder.jsp?Id='"+id+"'");
            dispatcher.forward(request,response);
            %>     
    </c:if>
    
</body>
</html>