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

@WebServlet("/addleave")
public class leave extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //add Current  date&time Format
       Date date = new Date();
       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       
     
     
      String name = request.getParameter("Name");
      String Empid = request.getParameter("Empid");   
      String Leavetype = request.getParameter("leavetype");
      String Halfday = request.getParameter("halfday");
      String StartDate = request.getParameter("Sdate");  
      String EndDate = request.getParameter("Edate");
      String Reason =request.getParameter("reason");
      String NoofLeaves =request.getParameter("noofleave");
      
          
      String formattedDate = dateFormat.format(date);
      

  
      
      RequestDispatcher dispatcher = null;
      Connection con = null;
      /*dispatcherconnection con = null;*/
      try 
      {
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
          PreparedStatement pst = con.prepareStatement("insert into employee_leave(Employee,Emp_id,Leavetype,Halfday,Start_date,End_date,Reason,No_of_leaves,Date)values(?,?,?,?,?,?,?,?,?)");
          //PreparedStatement pst = con.prepareStatement("insert into employee_leave(,,,,,,,,paid_unpaid)values(?,?,?,?,?,?,?,?)");
        
          pst.setString(1,name);
          pst.setString(2,Empid);
          pst.setString(3,Leavetype);
          pst.setString(4,Halfday);
          pst.setString(5,StartDate);
          pst.setString(6,EndDate);
          pst.setString(7,Reason);
          pst.setString(8,NoofLeaves);
          pst.setString(9,formattedDate);//add Current  date&time Format
          int rowCount = pst.executeUpdate();
          dispatcher = request.getRequestDispatcher("index.jsp");
          
          if (rowCount > 0) 
          { 
            //  request.setAttribute("status", "success");                          
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


