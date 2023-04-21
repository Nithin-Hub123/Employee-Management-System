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

//import java.text.SimpleDateFormat;
//import java.util.Date;

@WebServlet("/EmployeeInformation")
public class Addemployeeinforamtion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  //add Current  date&time Format
	    // Date date = new Date();
		 //SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		 
		//String formattedDate = dateFormat.format(date);
		String Emp_id = request.getParameter("empid");
		String DateofJoin = request.getParameter("dobj");
		String Email = request.getParameter("email");
		String department = request.getParameter("Department");
		String designation = request.getParameter("Designation");		
		String reportEmp = request.getParameter("ReportEmp");
		
		String TypeofEMp = request.getParameter("type");
		RequestDispatcher dispatcher = null;
		Connection con = null;
	
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
		    PreparedStatement pst = con.prepareStatement("insert into employeedoc(Emp_id,Date_Of_Joining,Company_Email,Department,Designation,Reporting_Employee,Type_of_Employe)values(?,?,?,?,?,?,?)");
		  
			pst.setString(1,Emp_id);
			pst.setString(2,DateofJoin);			
			pst.setString(3,Email);
			pst.setString(4,department);			
			pst.setString(5,designation);
			
			pst.setString(6,reportEmp);		
			pst.setString(7,TypeofEMp);		
			
			//pst.setString(7,formattedDate);//add Current  date&time Format
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("AddNewEmployee.jsp");
			
			if (rowCount > 0) 
			{ 
				request.setAttribute("status3", "success"); 			  	  			
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
