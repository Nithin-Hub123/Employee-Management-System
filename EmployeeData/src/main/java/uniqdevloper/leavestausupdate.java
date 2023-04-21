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
import java.sql.SQLException;


@WebServlet("/Leavestausupdate")
public class leavestausupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  int Eid = Integer.parseInt(request.getParameter("eventId"));

			String PU = request.getParameter("payunpay"); 
			String  AppRej= request.getParameter("apprej");
			//String id = request.getParameter("eventId");
			RequestDispatcher dispatcher = null;
			Connection con = null;
	        	try 
	    		{
	        		
	    			Class.forName("com.mysql.cj.jdbc.Driver");
	    		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
	    			PreparedStatement pst = con.prepareStatement("UPDATE employee_leave SET paid_unpaid = ?,Status = ? where Emp_id = ? ");
	    			//pst.setString(1,account_number);
	    			pst.setString(1,PU);
	    			pst.setString(2,AppRej);
	    			//pst.setString(3,id);
	    			pst.setInt(3,Eid);
	    			int rowCount = pst.executeUpdate();
	    			dispatcher = request.getRequestDispatcher("leave.jsp");
	    			
	    			if (rowCount > 0) 
	    			{
	    			   request.setAttribute("status", "success"); 			  			
	    			}
	    			else
	    			{
	    				//request.setAttribute("status", "failed");
	    			}
	    			
	    			dispatcher.forward(request,response);
	    		 }
	    		catch(Exception e)
	    		{
	    			e.printStackTrace();
	    		
	    		}
	    		finally
	    		{
	    			try
	    			{
	    			   con.close();
	    			}
	    			catch (SQLException e)
	    			{
	    				
	    				e.printStackTrace();
	    			}
	    		


	    	}
	    		
	    	}

	    	}
