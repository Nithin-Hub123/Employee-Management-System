package uniqdevloper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/adiminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		String uemail = request.getParameter("username");
		String upwd = request.getParameter("password");
		
		RequestDispatcher dispatcher = null;		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSL=false","root","admin@123");
			PreparedStatement pst = con.prepareStatement("select * from admin where email = ? and password = ? ");
		    pst.setString(1,uemail);
		    pst.setString(2,upwd);
		    ResultSet rs = pst.executeQuery();
		    if (rs.next())
		    {
		    
		    	dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
		    }
		    else
		    {
		    	request.setAttribute("status","failed");
		    	dispatcher = request.getRequestDispatcher("admin.jsp");
		    	 
				
		    }
			dispatcher.forward(request, response);
			
		}
		catch (Exception e)
		{
		   e.printStackTrace();
		}

	
	}

}
