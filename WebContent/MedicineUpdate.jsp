<%@  page  import="java.sql.*"  %>

<!--student data updated and store in db -->
<%
			String id=request.getParameter("Id");
 			 String MedicineName = request.getParameter("MedicineName");
			String CompanyName = request.getParameter("CompanyName");
			String ManufactureDate = request.getParameter("ManufactureDate");
			String ExpireDate = request.getParameter("ExpireDate");
			String Description = request.getParameter("Description");
			String Amount = request.getParameter("Amount");
	           
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine", "root", "");           
            String query="Update addmedicine set MedicineName='" + MedicineName + "', CompanyName='" + CompanyName + "', ManufactureDate='" + ManufactureDate + "', ExpireDate='" + ExpireDate + "', Description='" + Description + "',Amount='"+Amount+"' where Id= '"+id+"'"; 
            Statement stmt=con.createStatement();
            stmt.executeUpdate(query);

            stmt.close(); 
            con.close(); 
        }
     catch(Exception e)
        {
          System.out.println(e);
        }
%>
<jsp:forward page="ViewMedicine.jsp"> 
<jsp:param name="Id" value="<%=id %>" /> 
</jsp:forward> 
<script> 
    alert("Medicine Updated Successfully...");
</script>