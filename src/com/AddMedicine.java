package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;

@WebServlet("/AddMedicine")
public class AddMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddMedicine() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String MedicineName,CompanyName,MedicineImage,ManufactureDate,ExpireDate,Description,Amount;
	

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		MedicineName = request.getParameter("MedicineName");
		CompanyName = request.getParameter("CompanyName");
		MedicineImage = request.getParameter("MedicineImage");
		ManufactureDate = request.getParameter("ManufactureDate");
		ExpireDate = request.getParameter("ExpireDate");
		Description = request.getParameter("Description");
		Amount= request.getParameter("Amount");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `medicine`.`addmedicine` (`MedicineName`, `CompanyName`,`MedicineImage`,`ManufactureDate`,`ExpireDate`, `Description`,`Amount`) VALUES ( '"
					+ MedicineName
					+ "','"
					+ CompanyName + "','"+MedicineImage+"', '" + ManufactureDate + "','" +ExpireDate  + "','" + Description + "','"+Amount+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("AdminHome.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
