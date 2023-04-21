<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
</head><body id="page-top">

    <!-- Custom fonts for this template-->
    <link href="assetes/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    
    

    
    

 <!-- <link href="assets/css/index.css" rel="stylesheet" /-->
 <style type="text/css">
.single-col-form
 {
    max-width: 800px;
}
h1 {
    color: #3075BA;
}
h3, h3 {
 color: #3075BA;
    font-size: 1.25rem;
}
.btn:not(:disabled):not(.disabled) {
    cursor: pointer;
}
.pmd-ripple-effect {
    position: relative;
    overflow: hidden;
    -webkit-transform: translate3d(0,0,0);
}
.btn-outline-secondary {
    color: #4caf50;
    border-color: #4caf50;
}
 .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
</style>



<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"><!-- sweetalert for Add new Employee -->

<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>"><!-- sweetalert for Add new Employee -->

<input type="hidden" id="status2" value="<%= request.getAttribute("status2")%>"><!-- sweetalert for Delete -->





<!------------------------------------------------------- Navbar starts ------------------------------------------->


<!--<nav class="navbar navbar-expand-lg navbar-dark gradient-custom">-->
<nav class="navbar navbar-expand-lg bg-gradient-primary">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Navbar brand -->
    <a style="color:white;font-size: 23px;" class="navbar-brand">Employee Management System</a>   
   </div>
</nav>


<!------------------------------------------------- Navbar bar End------------------------------------------------->


<!-------------------------------------------- dashboard lesft side Wrapper---------------------------------------->

    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin_dashboard.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Dashboard</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <!--<a class="nav-link" href="index.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>implent</span></a>-->
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                settings
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link pmd-ripple-effect active" href="AddNewEmployee.jsp">
               		
                	<span class="media-body">ADD New Employee</span>
               </a>
                 <a class="nav-link pmd-ripple-effect active" href="AddDropdownDepartment.jsp">
               		
                	<span class="media-body">ADD Department</span>
               </a>
                      <a class="nav-link pmd-ripple-effect active" href="AddDropdownDepartment.jsp">
               		
                	<span class="media-body">ADD Designation</span>
               </a>
                </a>
                      <a class="nav-link pmd-ripple-effect active" href="AddDropdownDepartment.jsp">
               		
                	<span class="media-body">ADD Reporting Employee</span>
               </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                   <!-- <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Custom Components:</h6>
                        <a class="collapse-item" href="buttons.html">Buttons</a>
                        <a class="collapse-item" href="cards.html">Cards</a>
                    </div>-->
                </div>
            </li>

          
            <!-- Divider -->
            <hr class="sidebar-divider">

        <li class="nav-item">
            <a class="nav-link pmd-ripple-effect" href="leave.jsp">
             <!-- <i class="material-icons pmd-list-icon pmd-sm md-light">
                    date_range
                </i>-->
                <span class="media-body"><b>Leave</b></span>
            </a>
        </li>

            <!--------------------------------------------LOg out-----DASHBOARD------------------------->           
            
             <li class="nav-item"> 
    			<a class="nav-link" style="padding-left:15%; color:white;" href="admin.jsp"><b>Logout</b></a> 
            </li>
            <!--------------------------------------------LOg out-----DASHBOARD----END--------------------->
        </ul>
  <!----------------------------------------------- End of Sidebar -------------------------------------------------------->
        
        
        
        

        <!-- Content Wrapper -->
        
 <!-------------------------- Edit modal -------------------------------------------------------------------------------->
        <div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                
                    <div class="col-sm-6" style="padding:6px;">
						<h2>Employee Details</h2>
						
					</div>
					
                    <div class="col-sm-6" style="padding:13px; right:-425px;">
						
						<!-- <a style="postion:relative;right:1500px;" href="#addEmployeeModals" class="btn btn-success" data-toggle="modal"><i class="material-icons"></i> <span>Add New Employee</span></a>-->
					</div>
                </div>
            </div>
            &nbsp;&nbsp;
              <table class="table table-striped table-hover">
            <tbody>
            
            <%
  				// Connect to database
  					String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
 				    String username = "root";
  					String password = "admin@123";
  					Connection conn = DriverManager.getConnection(url, username, password);
  
 			  // Retrieve data from database
  				Statement stmt = conn.createStatement();
  				String sql = "select * from employee";
  			    ResultSet rs = stmt.executeQuery(sql);
			%>
            
            </tbody>
                <thead>
                    <tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						
                        <th>Name</th>
                        <th>Department</th>                    
						<th>Address</th>
						<th>Mobile No</th>
						<th>Email</th>
                        <th>Password</th>&nbsp;&nbsp;
                        
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>                
       			<% while (rs.next())
       				{ 
       				%>
  					<tr>
  					  <td><%= rs.getInt("Eid") %></td>
  					  
  					  <td><%= rs.getString("Ename") %></td>
     				  <td><%= rs.getString("E_department") %></td>
   					  <td><%= rs.getString("E_Address") %></td>
   					  <td><%= rs.getString("E_PhoneNumber") %></td>
   					 <td><%= rs.getString("E_email") %></td> 
   					 <td><%= rs.getInt("password") %></td>
    				  <!-- <td><a href="editt.jsp?Eid=%= rs.getInt("Eid") %>">Edit</a>&nbsp;&nbsp;  -->
    				  <td><button style="font-size: 12px; padding: 10px;" type="button" class="btn btn-success " data-dismiss="modal" onclick="location.href='editt.jsp?Eid=<%= rs.getInt("Eid") %>'" fdprocessedid="fdyii">Edit</button></td>  				  
    				  <td><button style="font-size: 12px; padding: 10px;" class="btn btn-danger btn-delete" data-item-id="<%= rs.getInt("Eid") %>" data-toggle="modal" data-target="#confirm-delete-modal">Delete</button></td>
    				      				 
  					</tr>
 				    <%
 				    } 
 				 %>
 		     </tbody>
                  
            </table>
              	<div class="clearfix">
                <!-- <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>-->
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item active"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item "><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
             <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright © Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->
    </div>
 <!-------------------------- Edit modal -------------END------------------------------------------------------------------->
        
           
 <!-- ADD NEW USER Modal popup HTML----------------- --------------------NEW Employee ----------------------------0--------------------------------->    
    
    
    	<div id="addEmployeeModals" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form method="post" action="AddNewEmp">
				
					<div class="modal-header">						
						<h4 class="modal-title">Add NEW Employee</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					</div>
					<div class="modal-body">	
					<!-- <div class="form-group">
							<label>Account Number</label>
							<input type="text" name="account_number" class="form-control" required>
						</div>	-->
								
						<div class="form-group">
							<label>Name</label>
							<input type="text" name="username" class="form-control" required="">
						</div>
						<div class="form-group">
							<label>Department</label>
							<input type="text" name="department" class="form-control" required="">
						</div>
						<div class="form-group">
							<label>Address</label>
							<textarea name="address" class="form-control" required=""></textarea>
						</div>
						<div class="form-group">
							<label>Phone</label>
							<input type="text" name="phone" class="form-control" required="">
						</div>	
						<div class="form-group">
							<label>Email</label>
							<input type="email" name="email" class="form-control" required="">
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="text" name="password" class="form-control" required="">
						</div>				
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
						<input type="submit" class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- ADD NEW USER Modal popup HTML----------------- --------------------NEW USER -END---------------------------0--------------------------------->    
    
        
        
        
        	
<!--  Modal popup HTML-----------------Action --------------------Delete Part  ----------------------------2--------------------------------->
   <!-- Delete Modal popup HTML -->
    
    
    <div class="modal fade" id="confirm-delete-modal" tabindex="-1" role="dialog" aria-labelledby="confirm-delete-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="confirm-delete-modal-title">Confirm Delete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                Are you sure you want to delete this item?
            </div>
            <div class="modal-footer">
                <form id="delete-form" method="post" action="deleteemployee">
                    <input type="hidden" id="delete-item-id" name="itemId">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </div>
        </div>
    </div>
</div>
    
    
    <script>
    $(document).ready(function() {
        $('.btn-delete').click(function() {
            var itemId = $(this).data('item-id');
            $('#delete-item-id').val(itemId);
        });
    });   
    </script>
    
    <!--  Modal popup HTML-----------------Action --------------------Delete Part  ----------------------------END--------------------------------->    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
<!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>
    
    
    
    

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    
    
    
<!-- ---------------------------------------------------- javascript sweetalert message -------------------- -->
<!-- JS java Script message  -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
	
	
	<!-- sweetalert------For---------addnew employee----->
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success"){
		swal("congrats","Account as been created Successfully","success");
	}
	</script>
	
  <!-- sweetalert------For---------addnew employee End----->
  
  	
	<!-- sweetalert------For---------update employee details----->
	<script type="text/javascript">
	var status1 = document.getElementById("status1").value;
	if(status1 == "success"){
		swal("congrats","Your Account Updated Successfully","success");
	}
	</script>
	
  <!-- sweetalert------For---------update employee End----->
	
  <!-- sweetalert------For---------Delete User----------------------------------------------------------------------- -->
	
	<script type="text/javascript">
	var status2 = document.getElementById("status2").value;
	if(status2 == "success"){
		swal("congrats"," Your Employee Account as been Deleted","success")
	}
	</script>
	  <!-- sweetalert------For---------Delete User- End---->



</body>
</html>