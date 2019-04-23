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

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserRegistration() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String FirstName,LastName,Address,Contact,Email,Password,ConfirmPassword ;
	

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
		Password = request.getParameter("Password");
		ConfirmPassword = request.getParameter("ConfirmPassword");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `medicine`.`userregistration` (`FirstName`,`LastName`,`Address`, `Email`, `Contact`,`Password`,`ConfirmPassword`) VALUES ( '"
					+ FirstName
					+ "','"
					+ LastName + "','"+Address+"','" + Email + "','" + Contact + "','"+Password+"','"+ConfirmPassword+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("index.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
