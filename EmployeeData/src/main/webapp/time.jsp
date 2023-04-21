<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="assetes/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Edit icons symbol--->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- Edit icons--->
 


</head>
<body><h1>Time Tracking</h1>
  <button id="logout-btn" class="btn btn-warning btn-lg" data-target="#updatelogout" data-toggle="modal">Logout</button>
    <div id="updatelogout" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form method="post" action="logoutStausupdate">
        <div class="modal-header">
          <h4 class="modal-title">Conform Logout</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
            
          <div class="form-group">          
            <label>Employee Id</label>
             <select name="payunpay" id="" class="form-control" required="">
              <option value="-1" >----------Select----------</option>
                  
                                             <%										
  											 try
  											 {
  											  String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username = "root";
  											  String password = "admin@123";
 											  Connection conn = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt = conn.prepareStatement(" select Emp_id from employee");
 											  //stmt.setInt(1, Eid);
					   						  ResultSet rs = stmt.executeQuery();
					   						  while (rs.next())
	       									  { 
	       									 	%>
	  					 						  <option><%= rs.getString("Emp_id")%></option>
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
          </div>      
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-info" value="Logout">
        </div>
      </form>
    </div>
  </div>
</div>

  <div id="logout-modal" class="modal">
    <div class="modal-content">
      <span class="close">&times;</span>
      <p>Are you sure you want to logout?</p>
      <form method="post" action="logout">
        <button type="submit" id="confirm-logout">Yes</button>
        <button type="button" id="cancel-logout">No</button>
      </form>
    </div>
  </div>
</body>
</html>