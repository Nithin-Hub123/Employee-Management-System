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

@WebServlet("/AddDropdowndata")
public class ADDDropdownData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
			
		String department = request.getParameter("department");
		String designation = request.getParameter("designation");
		String reporting_Employee = request.getParameter("Reportingemployee");	
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
			PreparedStatement pst = con.prepareStatement("insert into AddDropdown(Department, Designation,Reporting_Employee)values(?,?,?)");
			pst.setString(1,department);
			pst.setString(2,designation);			
			pst.setString(3,reporting_Employee);
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("AddDropdownDepartment.jsp");
			
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
