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
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/loginlogouttimeTrack")
//@WebServlet("/lg")

public class loginlogouttimetraking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  Date date = new Date();
	       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	       
	       String Empid = request.getParameter("EmpId");
	       String formattedDate = dateFormat.format(date);
	       String loginDatetime = dateFormat.format(date);
	       String logoutDatetime = dateFormat.format(date);
	       RequestDispatcher dispatcher = null;
	       Connection con = null;
	       Connection connection = null;
	       //PreparedStatement updateStatement = null;
	       /*dispatcherconnection con = null;*/
	       try 
	       {
	           Class.forName("com.mysql.cj.jdbc.Driver");
	           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
	          if(Empid !=null) {
	           PreparedStatement pst = con.prepareStatement("insert into login_logout(Emp_id,login_time,loginDatetime)values(?,?,?)");
	           pst.setString(1,Empid);	         
	           pst.setString(2,formattedDate);
	           pst.setString(3,loginDatetime);
	           int rowCount = pst.executeUpdate();
	           dispatcher = request.getRequestDispatcher("sessionlogson.jsp");
	           
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
	         else 
	         {
	         
	         }
	           
	           
	           // String updateSql = "UPDATE login_logout SET logout_time = ? logoutDatetime = ? WHERE Emp_id = ? AND logout_time IS NULL";
	          //  updateStatement = connection.prepareStatement(updateSql);  
	           // updateStatement.setString(1,formattedDate);
	           // updateStatement.setString(2,logoutDatetime);
	           // updateStatement.setString(3,Empid);
	          //  int rowsAffected = updateStatement.executeUpdate();
	        
	           //long timeWorked = checkoutTime - checkinTime;
               // dispatcher = request.getRequestDispatcher("sessionlogson.jsp");
	          //  if (rowsAffected > 0) 
	          //  {
	                
	            	//request.setAttribute("status", "success"); 		
	         //   } 
	          //  else 
	            //{
	               // response.getWriter().write("error");
	           // }
	      
	          // dispatcher.forward(request,response);
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
