<%@  page  import="java.sql.*"  %>
<%
  String id;

  if(request.getParameter("Id")!=null){

  	id=(String)request.getParameter("Id");

  }
  else{
  id=(String)request.getAttribute("Id");
 }
  %>

<!--student data updated and store in db -->
<%
			String MedicineName = request.getParameter("MedicineName");
			String CompanyName = request.getParameter("CompanyName");
			String ManufactureDate = request.getParameter("ManufactureDate");
			String ExpireDate = request.getParameter("ExpireDate");
			String Description = request.getParameter("Description");
           
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/medicine", "root", "");           
            String query="Delete from addmedicine where Id= '"+id+"'"; 
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
    alert("Medicine Deleted Successfully...");
</script>