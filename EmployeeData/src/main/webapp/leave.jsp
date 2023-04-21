<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leave management</title>
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
 
<!--  Date-picker CSS and JS files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
 <!--  Date-picker END -->
 <!-- <link href="assets/css/index.css" rel="stylesheet" /-->
</head>
<body id="page-top">
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<!------------------------------------------------------- Navbar starts ------------------------------------------->
<!--<nav class="navbar navbar-expand-lg navbar-dark gradient-custom">-->
<nav class="navbar navbar-expand-lg bg-gradient-primary">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Navbar brand -->
    <a style="color:white;font-size: 30px;" class="navbar-brand" href="#">Employee Management System</a>     
  </div>
    <!-- Collapsible wrapper -->
  </div>
  
</nav>
<!-------------------------------------------------------- Navbar bar End-------------------------------------- -->


    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="leave.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Employee Leave</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="admin_dashboard.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

         
            <hr class="sidebar-divider">    
            <!--------------------------------------------LOg out-----DASHBOARD------------------------->           
            
             <li class="nav-item"> 
    			<a class="nav-link" Style="padding-left:15%; color:white;" href="logout1"><b>Logout</b></a> 
            </li>
            <!--------------------------------------------LOg out-----DASHBOARD----END--------------------->
        </ul>
        <!-- End of Sidebar -->
        
        <!-- Conatiner Leave ---->
        
        <div id="content" class="pmd-content inner-page admin">

    <!-- Title -->
    <!-- <h1 id="leave">Leave</h1>-->
    <!-- End Title -->
    <!--breadcrum start-->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb pmd-breadcrumb mb-0">
            <li class="breadcrumb-item">
                <a href="admin_dashboard.jsp">Dashboard</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Leave</li>
        </ol>
    </nav>
    <!--breadcrum end-->
    
    <section class="component-section" id="employee">
        <table class="table pmd-table table-hover pmd-table-card">
                <thead class="thead-light">
                    <tr>
                    	<th>Id</th>
                        
                        <th>Employee-ID</th>
                        <th>Employee-Name</th>
                        <th>Leave Type</th>
                        <th>Half Day</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                        <th>Reason</th>
                        <th>No of Leave</th>
                        <th>Paid / Unpaid</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                 <%
  				// Connect to database
  					String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
 				    String username = "root";
  					String password = "admin@123";
  					Connection conn = DriverManager.getConnection(url, username, password);
  
 			  // Retrieve data from database
  				Statement stmt = conn.createStatement();
  				String sql = "select * from employee_leave";
  			    ResultSet rs = stmt.executeQuery(sql);
			%>
					<% while (rs.next())
       				{ 
       				%>
  					<tr>
  					<td><%= rs.getString("id") %></td>
  					<td><%= rs.getString("Emp_id") %></td>
  					<td><%= rs.getString("Employee") %></td>
  					<td><%= rs.getString("Leavetype") %></td>
  					<td><%= rs.getString("Halfday") %></td>
  					<td><%= rs.getString("Start_date") %></td>
  					<td><%= rs.getString("End_date") %></td>
  				    <td><%= rs.getString("Reason") %></td>
  				    <td><%= rs.getString("No_of_leaves") %></td>
  				    <td><%= rs.getString("paid_unpaid") %></td>
  				    <td><%= rs.getString("Status") %></td>
    				  <!-- <td><a href="editt.jsp?Eid=%= rs.getInt("Eid") %>">Edit</a>&nbsp;&nbsp;  -->
    				  <!--<td><button style="font-size: 12px; padding: 10px;" type="button" class="btn btn-success " data-dismiss="modal" onclick="location.href='editt.jsp?Eid=%= rs.getInt("Emp_id") %>'" fdprocessedid="fdyii">Aprove /Reject</button></td>
    				  <td><button style="font-size: 12px; padding: 10px;" type="button" class="btn btn-success " href="#editEmployeeModal" data-toggle="modal"
    				  data-dismiss="modal"  fdprocessedid="fdyii">Aprove /Reject</button></td>-->
    				    
    				 <th> <button style="font-size: 12px; padding: 10px;"  class="open-homeEvents btn btn-success" data-id="<%= rs.getInt("Emp_id") %>"  data-toggle="modal" data-target="#editEmployeeModal"><b>Approve / Reject</b></button></th> 
    		
    		
    		
    		<!-- eidt  type ------
    		<td><a href="#editEmployeeModal" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a></td>-->  				  
			 
  					</tr>
 				    <%
 				    } 
 				 %>
                </tbody>
        </table>
    </section>
</div>
        <!-- Conatiner Leave End -->
               
<!-- Modal -->
       
       <div id="editEmployeeModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <form method="post" action="Leavestausupdate">
        <div class="modal-header">
          <h4 class="modal-title">Leave Status</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                     
                <input type="hidden" class="form-control" name="eventId" id="eventId"/>
           </div>
          <div class="form-group">          
            <label>Paid / Unpaid</label>
             <select name="payunpay" id="" class="form-control" required="">
              <option value="-1" >----------Select----------</option>
              <option>Paid</option>
			  <option>Unpaid</option>      
		    </select>
          </div>
          <div class="form-group">
            <label>Status</label>
            <select name="apprej" id="" class="form-control" required="">
              <option value="-1" >----------Select----------</option>
              <option>Approve</option>
			  <option>Reject</option>      
		    </select>                                          
                                
          </div>
         
      
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
          <input type="submit" class="btn btn-info" value="Update">
        </div>
      </form>
    </div>
  </div>
</div>
<!-- modal end -->    
<script type="text/javascript">$(document).on("click", ".open-homeEvents", function () {
     var eventId = $(this).data('id');
     $(".modal-body #eventId").val( eventId );
});</script>  



<!-- ---------------------------------------------------- javascript sweetalert message -------------------- -->
<!-- JS java Script message  -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
	
	
	<!-- sweetalert------For---------update--leave--status----->
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success")
	{
		swal("congrats","Updates Done Successfully","success");
	}
	</script>
	 <!--<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error");
	}
	</script>-->
	
  <!-- sweetalert------For---------update--leave--status End----->
        

</body>
</html>