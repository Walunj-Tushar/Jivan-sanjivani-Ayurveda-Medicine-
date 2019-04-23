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

@WebServlet("/AddEmployee")
public class AddEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddEmployee() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String FirstName,LastName,Contact,Email,Address,Photo,AdharNo ,Gender;
	

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
		Gender = request.getParameter("Gender");
		Address = request.getParameter("Address");
		Email = request.getParameter("Email");
		Contact = request.getParameter("Contact");
		Photo = request.getParameter("Photo");
		AdharNo = request.getParameter("AdharNo");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `medicine`.`addemployee` (`FirstName`, `LastName`,`Gender`,`Address`,`Email`, `Contact`,`Photo`,`AdharNo`) VALUES ( '"
					+ FirstName
					+ "','"
					+ LastName + "','"+Gender+"', '" + Address + "','" +Email  + "','" + Contact + "','"+Photo+"','"+AdharNo+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("AdminHome.jsp");
   				
   				SendMail SendMail = new SendMail();
				String sub = "Regarding Employee Registration ";
				String pkey = "Your Employee Registration is Successful.....!<br> Username :"+Email+"  <br>Password :"+Contact+"";
				SendMail.EmailSending(Email, sub, pkey);
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
