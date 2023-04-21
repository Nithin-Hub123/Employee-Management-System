<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
 <%@page import="java.util.List" %>
 <%@page import=" java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ADD Dropdown Items</title>
</head>
<body>

 										 <select  class="form-control">
                                            <option value="-1">----------select----------</option>
                                        
   				 						     <!------Fetch From Database ------->        
  											<%
										
  											try
  											{
  											 String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											 String username = "root";
  											 String password = "admin@123";
 											 Connection conn = DriverManager.getConnection(url, username, password);
  
					    					 // Retrieve data for selected row
  											 PreparedStatement stmt = conn.prepareStatement("select * from employee");
 											 //stmt.setInt(1, Eid);
					   						 ResultSet rs = stmt.executeQuery();
					   						 while (rs.next())
	       									 { 
	       										%>
	  					 						  <option value="<%= rs.getInt("Emp_id") %>"><%= rs.getString("Emp_id")%></option>
                                                <%
             								  }
  											// Close database connection
					   						
  											}
  											 catch (Exception e) 
  											{
  												 e.printStackTrace();
  									             System.out.println(e);
  									        }
 											
           								  %>	
           								  </select>
	      								
                                      </body>
</html>