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

@WebServlet("/AddSalary")
public class AddSalaryy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	
		  String Emp_id = request.getParameter("Select");
		  String Hourly = request.getParameter("hourly");
	      String Monthly = request.getParameter("monthly");	      
	      String Annual = request.getParameter("annual");
	      String Medicare = request.getParameter("medicare"); 
	      
	      
	      String Allowances = request.getParameter("allowances");
	     // String DateofBirth =request.getParameter("DateofBirth");
	     // String Gender =request.getParameter("gender");
	    //  String Marital =request.getParameter("marital");
	      
	     // String Address = request.getParameter("address");
	    //  
	          
	      
	      

	  
	      
	      RequestDispatcher dispatcher = null;
	      Connection con = null;
	    
	      try 
	      {
	          Class.forName("com.mysql.cj.jdbc.Driver");
	          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
	          PreparedStatement pst = con.prepareStatement("insert into salary(Emp_id,Hourly_Salary,Monthly_Salary,AnnualSalary,Medicare,allowances)values(?,?,?,?,?,?)");
	          pst.setString(1,Emp_id);   
	          pst.setString(2,Hourly);
	          pst.setString(3,Monthly);	
	          pst.setString(4,Annual);
	          pst.setString(5,Medicare);
	          pst.setString(6,Allowances);
	          
	         // pst.setString(5,uemail);
	         // pst.setString(6,DateofBirth);
	        //  pst.setString(7,Gender);
	       //   pst.setString(8,Marital);
	          
	         // pst.setString(9,Address);
	                  
	                      
	              
	         // pst.setString(10,formattedDate);//add Current  date&time Format
	          int rowCount = pst.executeUpdate();
	          dispatcher = request.getRequestDispatcher("AddNewEmployee.jsp");
	          
	          if (rowCount > 0) 
	          { 
	              request.setAttribute("status1", "success");                          
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


