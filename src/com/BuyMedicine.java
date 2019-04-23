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

@WebServlet("/BuyMedicine")
public class BuyMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BuyMedicine() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String FirstName,LastName,Address,Contact,Email,MedicineName,CompanyName,MedicineImage,ManufactureDate,ExpireDate,Description,Amount,Status,PaymentStatus;
	

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
		
		FirstName = request.getParameter("FirstName");
		LastName = request.getParameter("LastName");
		Address = request.getParameter("Address");
		Email = request.getParameter("Email");
		Contact = request.getParameter("Contact");
		
		//MId = request.getParameter("MId");
		MedicineName = request.getParameter("MedicineName");
		CompanyName = request.getParameter("CompanyName");
		ManufactureDate = request.getParameter("ManufactureDate");
		ExpireDate = request.getParameter("ExpireDate");
		Amount= request.getParameter("Amount");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `medicine`.`ordermedicine` (`FirstName`,`LastName`,`Address`, `Email`, `Contact`,`MedicineName`, `CompanyName`,`ManufactureDate`,`ExpireDate`,`Amount`,`Status`,`PaymentStatus`) VALUES ( '"
					+ FirstName +"','"+LastName+"','"+Address+"','"+Email+"','"+Contact+"','"+ MedicineName
					+ "','"
					+ CompanyName + "', '" + ManufactureDate + "','" +ExpireDate  + "','"+Amount+"',0,0);");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("UserHome.jsp");
   				SendMail SendMail = new SendMail();
				String sub = "Regarding Medicine Order ";
				String pkey = "Your Medicine Order is Successful.....!<br> Medicine Name :"+MedicineName+"  <br>Price :"+Amount+"";
				SendMail.EmailSending(Email, sub, pkey);
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
