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


import jakarta.servlet.http.HttpSession;

@WebServlet("/changepassword")
public class chnagepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;     

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		//String uname = (String) request.getSession().getAttribute("name");
			String Eid = (String) request.getSession().getAttribute("id");
		
	
		String currentPassword=request.getParameter("current");
		String Newpass=request.getParameter("new");
		String conpass=request.getParameter("confirm");
	
		//int Eid = Integer.parseInt(request.getParameter("id"));
		  Connection connection = null;
		  PreparedStatement selectStatement = null;
		  ResultSet result = null;
		  PreparedStatement updateStatement = null;	
		  RequestDispatcher dispatcher = null;
	    try 
	    {
	        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSL=false","root","admin@123");
	        String selectSql = "select * from employee where password = ? and Eid = ? ";
	        selectStatement = connection.prepareStatement(selectSql);
	        selectStatement.setString(1,currentPassword);
	        selectStatement.setString(2,Eid);
	        result = selectStatement.executeQuery();	   
            if (result.next())
            {        
            //int account_No = result.getInt("account_number");          
            
            String updateSql = "update employee set password = ? WHERE Eid = ?";
            updateStatement = connection.prepareStatement(updateSql);  
         
            
            updateStatement.setString(1,Newpass);
            
            updateStatement.setString(2,Eid);
           
            int rowsAffected = updateStatement.executeUpdate();
            
			dispatcher = request.getRequestDispatcher("index.jsp");
            if (rowsAffected > 0) 
            {
                
            	request.setAttribute("status", "success"); 		
            } 
            else 
            {
               // response.getWriter().write("error");
            	
            	//request.setAttribute("status","failed");
		    	//dispatcher = request.getRequestDispatcher("login.jsp");
            }
            dispatcher.forward(request,response);

        
        
            
        }
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
		
		
		
		
	