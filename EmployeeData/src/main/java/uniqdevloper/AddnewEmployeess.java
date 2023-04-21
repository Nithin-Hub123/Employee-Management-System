package uniqdevloper;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
//import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.text.SimpleDateFormat;

@WebServlet("/Addnewemployees")
public class AddnewEmployeess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //add Current  date&time Format
       Date date = new Date();
       SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
       
      String formattedDate = dateFormat.format(date);
      
      String Emp_id = request.getParameter("Empid");
      String name = request.getParameter("Name");
      String Department = request.getParameter("department");
      String umobile = request.getParameter("phone");
      String pwd = request.getParameter("pass");  
      String uemail = request.getParameter("email");
      String DateofBirth =request.getParameter("dob");
      String Gender =request.getParameter("gender");
      String Marital =request.getParameter("marital");
      
      String Address = request.getParameter("address");
      
          
      
      

  
      
      RequestDispatcher dispatcher = null;
      Connection con = null;
      /*dispatcherconnection con = null;*/
      try 
      {
          Class.forName("com.mysql.cj.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp?useSSl=false","root","admin@123");
          PreparedStatement pst = con.prepareStatement("insert into employee(Emp_id,Ename,E_department,E_PhoneNumber,password,E_email,DateofBirth,Gender,MaritalStatus,E_Address,Created_Date)values(?,?,?,?,?,?,?,?,?,?,?)");
          pst.setString(1,Emp_id);
          pst.setString(2,name);
          pst.setString(3,Department);
          pst.setString(4,umobile);
          pst.setString(5,pwd);
          pst.setString(6,uemail);
          pst.setString(7,DateofBirth);
          pst.setString(8,Gender);
          pst.setString(9,Marital);
          
          pst.setString(10,Address);
                  
                      
              
          pst.setString(11,formattedDate);//add Current  date&time Format
          int rowCount = pst.executeUpdate();
          dispatcher = request.getRequestDispatcher("AddNewEmployee.jsp");
          
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































