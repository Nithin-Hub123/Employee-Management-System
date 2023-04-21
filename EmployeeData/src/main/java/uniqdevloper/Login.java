package uniqdevloper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String Email = request.getParameter("email");
		String upwd = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSL=false","root","admin@123");
			PreparedStatement pst = con.prepareStatement("select * from employee where E_email = ? and password = ? ");
		    pst.setString(1,Email);
		    pst.setString(2,upwd);
		    ResultSet rs = pst.executeQuery();
		    if (rs.next())
		    {
		    	session.setAttribute("name",rs.getString("Ename"));
		    	session.setAttribute("id",rs.getString("Eid"));
		    	session.setAttribute("Emp_id",rs.getString("Emp_id"));
		    	dispatcher = request.getRequestDispatcher("index.jsp");
		    	
		    }
		    else
		    {
		    	request.setAttribute("status","failed");
		    	dispatcher = request.getRequestDispatcher("login.jsp");  
		    }
			dispatcher.forward(request, response);
			
		}
		catch (Exception e)
		{
		   e.printStackTrace();
		}

	
	}

}
