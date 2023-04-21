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


@WebServlet("/updateuser")
public class userupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//HttpSession session = request.getSession();
				//String userId = (String) session.getAttribute("userId");
			
				  int Eid = Integer.parseInt(request.getParameter("id"));

		    	String ename = request.getParameter("Name"); 
		    	String eemail = request.getParameter("Email");//account_number 
		    	String emobile = request.getParameter("Mobileno");
		    	String Edept = request.getParameter("department");
				//String upwd = request.getParameter("pass");
			
				//String gender = request.getParameter("subjects");
				String addres = request.getParameter("Addres");
				String DOBirth = request.getParameter("dob");
				String Gender = request.getParameter("gender");
				String Marital = request.getParameter("marital");
				RequestDispatcher dispatcher = null;
				Connection con = null;
				

			        	try 
			    		{
			        		
			    			Class.forName("com.mysql.cj.jdbc.Driver");
			    		    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
			    			PreparedStatement pst = con.prepareStatement("UPDATE employee SET Ename = ?,E_email = ?,E_PhoneNumber = ?,E_department = ?,E_Address = ?,DateofBirth = ?,Gender = ?,MaritalStatus = ? where Eid = ? ");
			    			//pst.setString(1,account_number);
			    			pst.setString(1,ename);
			    			pst.setString(2,eemail);
			    			pst.setString(3,emobile);
			    			pst.setString(4,Edept);
			    			pst.setString(5,addres);
			    			pst.setString(6,DOBirth);
			    			pst.setString(7,Gender);
			    			pst.setString(8,Marital);
			    			
			    			//pst.setInt(5,userId);
			    			pst.setInt(9,Eid);
			    			
			    			int rowCount = pst.executeUpdate();
			    			dispatcher = request.getRequestDispatcher("admin_dashboard.jsp");
			    			
			    			if (rowCount > 0) 
			    			{
			    			   request.setAttribute("status1", "success"); 			  			
			    			}
			    			else
			    			{
			    				request.setAttribute("status1", "failed");
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
