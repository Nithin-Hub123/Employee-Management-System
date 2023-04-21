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
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;



@WebServlet("/logoutStausupdate")
public class loginlogouttimetracking extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  Date date = new Date();
	       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			       String Empid = request.getParameter("payunpay");
			       String formattedDate = dateFormat.format(date);
			       String logoutDatetime = dateFormat.format(date);
		
			  Connection connection = null;
			  PreparedStatement selectStatement = null;
			  ResultSet result = null;
			  PreparedStatement updateStatement = null;	
			  RequestDispatcher dispatcher = null;
		    try 
		    {
		        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSL=false","root","admin@123");
		        String selectSql =  "UPDATE login_logout SET logout_time = ?,logoutDatetime = ? WHERE Emp_id = ? and logout_time is null";
		        selectStatement = connection.prepareStatement(selectSql);
		        selectStatement.setString(1,formattedDate);
		        selectStatement.setString(2,logoutDatetime);
		        selectStatement.setString(3,Empid);
		        //selectStatement.setString(2,Eid);
		        int rowsAffected = selectStatement.executeUpdate();
		       // result = selectStatement.executeQuery();	   
	
	           
	            
				dispatcher = request.getRequestDispatcher("sessionlogson.jsp");
	            if (rowsAffected > 0) 
	            {
	                
	            	request.setAttribute("status1", "success"); 		
	            } 
	            else 
	            {
	               // response.getWriter().write("error");
	            	
	            	//request.setAttribute("status1","failed");
			    	//dispatcher = request.getRequestDispatcher("login.jsp");
	            }
	            dispatcher.forward(request,response);

	        
	        
	            
	        
		    }
	        catch (SQLException e)
		    {
		        e.printStackTrace();
		    }
		    finally
		    {
		        try
		        {
		            if (result != null) result.close();
		            if (selectStatement != null) selectStatement.close();
		            if (updateStatement != null) updateStatement.close();
		            if (connection != null) connection.close();
		        } catch (SQLException e)
		        {
		            e.printStackTrace();
		        }
		    }
		       	
			
		}
	}
			
			