<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddNew Employee</title>
    <!-- Custom fonts for this template-->
    <link href="assetes/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
<!--  Date-picker CSS and JS files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
 <!--  Date-picker END -->
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

  </style>

</head>
<body id="page-top">
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">

<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>">

<input type="hidden" id="status3" value="<%= request.getAttribute("status3")%>">

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
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin_dashboard.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Employee</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="admin_dashboard.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider --
            <hr class="sidebar-divider">

            <!-- Heading --
            <div class="sidebar-heading">
                settings
            </div>

            <!-- Nav Item - Pages Collapse Menu --
            <li class="nav-item">
                <a class="nav-link pmd-ripple-effect active" href="">
               		
                	<span class="media-body">Account Settings</span>
               </a>
                
                
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                  
                </div>
            </li>-->

          

            <!-- Divider -->
            <hr class="sidebar-divider">

     

            <!--------------------------------------------LOg out-----DASHBOARD------------------------->           
            
             <li class="nav-item"> 
    			<a class="nav-link" Style="padding-left:15%; color:white;" href="logout1"><b>Logout</b></a> 
            </li>
            <!--------------------------------------------LOg out-----DASHBOARD----END--------------------->
        </ul>
        <!-- End of Sidebar -->
        
        
        
        

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
              <!--   <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                
                    <!-- Topbar Navbar 
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                       

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                   <!-- <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>-->
                    
                    
           <!-- ----------------------------------------New EMployee Details -->         
        <div id="content" class="pmd-content inner-page profile-page">
		<div class="cover-content">
			<div class="page-content">
				<div class="d-flex d-flex-row align-items-center mobile-view">
			
				</div>
			</div>	
		</div>
  		<div id="content" class="pmd-content admin section-container">
   		 	 <!-- Title -->
   			 <h1>Add Employee</h1>
   			 <!-- End Title --> 
    		<div class="page-content">
			<div class="pmd-tabs pmd-tabs-dark ">
			<div class="pmd-tab-active-bar" style="width: 93.125px; left: 0px;"></div>
			<ul class="nav nav-tabs" role="tablist" style="width: 325.575px;">
				<li class="nav-item"><a class="nav-link active show" href="#about" aria-controls="about" role="tab" data-toggle="tab" aria-selected="true"><b>About</b></a></li>
				 <li class="nav-item"><a class="nav-link" href="#documents" aria-controls="documents" role="tab" data-toggle="tab" aria-selected="false">Documents</a></li>
				<li class="nav-item"><a class="nav-link" href="#salary" aria-controls="salary" role="tab" data-toggle="tab" aria-selected="false"><b>Salary</b></a></li>
			</ul>
			</div>
		<!-- Tab panes -->
        <div class="tab-content">
            <!-- About Tab -->
            <div role="tabpanel" class="tab-pane active show" id="about">
                <div class="card pmd-card">
                    <form  method="post" action="Addnewemployees" >
                        <div class="card-body">  
                            <!-- Basic Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Employee Personal Information</h3>
                                <div class="row">
                                 <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Employee ID</label>
                                            <input type="text" name="Empid" id="Empid" class="form-control"><span class="pmd-textfield-focused"></span>
                                        </div>
                                   </div>
                                   <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="Name" class="col-form-label control-label">Name</label>
                                            <input type="text" name="Name" id="Name" class="form-control"><span class="pmd-textfield-focused"></span>
                                        </div>
                                   </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Department</label>
                                           <!--  <input type="text" name="department" id="department" class="form-control" ><span class="pmd-textfield-focused"></span>-->
                                            
                                              <select name="department" id="department" class="form-control">
                                             <option value="-1" >----------Select----------</option>
                                             <%										
  											 try
  											 {
  											  String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username = "root";
  											  String password = "admin@123";
 											  Connection conn = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt = conn.prepareStatement(" select Department from AddDropdown");
 											  //stmt.setInt(1, Eid);
					   						  ResultSet rs = stmt.executeQuery();
					   						  while (rs.next())
	       									  { 
	       									 	%>
	  					 						  <option><%= rs.getString("Department")%></option>
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
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                             <label  class="col-form-label control-label">Phone</label>
                                            <input type="tel" name="phone" id="phone" class="form-control" ><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                   
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label class="col-form-label control-label">Password</label>
                                            <input type="text" name="pass" id="pass" class="form-control"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                           <label  class="col-form-label control-label">Personal Email</label>
                                            <input type="email" name="email" id="email"  class="form-control"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label  class="col-form-label control-label">Date of Birth</label>
                                          <!--   <input type="text" name="dob" id="dob" class="form-control"><span class="pmd-textfield-focused"></span>-->
                                            <input type="text" class="form-control datepicker" style="padding:10px;text-align:left;" id="dob" name="dob" required="">
                                        </div>                                        
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <label for="email" class="d-block title-label">Gender</label>
                						 <div class="form-check form-check-inline">
                  						  <input class="form-check-input" type="radio" name="gender" value="Female" />
                   						  <label class="form-check-label">Female</label>
                                    </div>

                  						<div class="form-check form-check-inline">
                  							 <input class="form-check-input" type="radio" name="gender" value="Male" />
                  							 <label class="form-check-label" >Male</label>
                 						 </div>                                        
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-3">
                                        <label for="marital" class="d-block title-label">Marital Status</label>
                                         <div class="form-check form-check-inline">
                  					    <input class="form-check-input" type="radio" name="marital" value="Married" />
                   						 <label class="form-check-label">Married</label>
                  					</div>

                  					<div class="form-check form-check-inline">
                    					<input class="form-check-input" type="radio" name="marital" value="Unmarried" />
                   						 <label class="form-check-label" >Unmarried</label>
                 					 </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label class="col-form-label control-label">Address</label>
                                            <input type="text" name="address" id="address"  class="form-control"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <!-- <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="linkedin" class="col-form-label control-label">LinkedIn Profile</label>
                                            <input type="url" class="form-control" value="" id="linkedin"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="twitter" class="col-form-label control-label">Twitter Profile</label>
                                            <input type="url" class="form-control" value="" id="twitter"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label>Description</label>
                                            <textarea class="form-control"></textarea><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>-->
                                </div>
                            </div>

                        </div>

                        <div class="card-footer pmd-card-border">
                            <button class="btn pmd-ripple-effect btn-primary pmd-btn-raised" type="submit" >Save</button>
                          <!--   <button class="btn pmd-ripple-effect btn-outline-secondary" type="button" fdprocessedid="iopdc">Reset</button>-->
                        </div>
                    </form>
                </div>
            </div>
            
                <!-- Documents Tab -->
            <div role="tabpanel" class="tab-pane" id="documents">

                <!-- Documents -->
                <div class="card pmd-card">
                   <form  method="post" action="EmployeeInformation" >
                    <div class="card-body">
                    <div class="details-tab">
                
                                <h3 class="card-title">Employee Information</h3>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label  class="col-form-label control-label">Employee Enrollment ID</label>
                                           
                                               <select name="empid" id="empid" class="form-control">
                                             <option value="-1" >------------select------------</option>
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
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Date of Joining</label>
                                          <!--  <input type="text" class="form-control" id="joindate-picker" fdprocessedid="e1vsu9"><span class="pmd-textfield-focused"></span>-->
                                           <input type="text" class="form-control datepicker" style="padding:10px;text-align:left;" id="dob" name="dobj" required="">
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label class="col-form-label control-label">Company Email</label>
                                            <input type="email" class="form-control" name="email" id="email" fdprocessedid="fbpxvn"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="advance_department">Department</label>
                                         <!--   <select name="Department" class="form-control" >
                                                <option></option>
                                               
                                            </select>-->
                                            
                                            
                                                  <select name="Department"  class="form-control">
                                             <option value="-1" >------------select------------</option>
                                             <%										
  											 try
  											 {
  											  String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username = "root";
  											  String password = "admin@123";
 											  Connection conn = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt = conn.prepareStatement("select  Department from AddDropdown");
 											  //stmt.setInt(1, Eid);
					   						  ResultSet rs = stmt.executeQuery();
					   						  while (rs.next())
	       									  { 
	       									 	%>
	  					 						  <option><%= rs.getString("Department")%></option>
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
           						           </select><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="advance_designation">Designation</label>
                                          <!--  <select name="Designation" id="advance_designation" class="form-control">
                                          
                                            </select>-->
                                            
                                                 
                                            <select name="Designation"  class="form-control">
                                             <option value="-1" >------------select------------</option>
                                             <%										
  											 try
  											 {
  											  String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username = "root";
  											  String password = "admin@123";
 											  Connection conn = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt = conn.prepareStatement("select Designation from AddDropdown");
 											  //stmt.setInt(1, Eid);
					   						  ResultSet rs = stmt.executeQuery();
					   						  while (rs.next())
	       									  { 
	       									 	%>
	  					 						  <option><%= rs.getString("Designation")%></option>
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
           						           </select><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="reporting">Reporting Employee</label>
                                           <!-- <select name="ReportEmp" id="reporting" class="form-control" fdprocessedid="q0w6jr">
                                            
                                                
                                            </select>-->
                                               <select name="ReportEmp" id="reporting" class="form-control">
                                             <option value="-1" >------------select------------</option>
                                             <%										
  											 try
  											 {
  											  String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username = "root";
  											  String password = "admin@123";
 											  Connection conn = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt = conn.prepareStatement("select Reporting_Employee from AddDropdown");
 											  //stmt.setInt(1, Eid);
					   						  ResultSet rs = stmt.executeQuery();
					   						  while (rs.next())
	       									  { 
	       									 	%>
	  					 						  <option><%= rs.getString("Reporting_Employee")%></option>
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
           						           </select><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-6">
                                        <label for="type" class="d-block title-label">Type of Employee</label>
                                        <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio"  id="full-time" name="type" value="FullTime" class="custom-control-input">
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="full-time">Full Time</label>
                                        </div>
                                        <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio" id="part-time" name="type" value="PartTime" class="custom-control-input">
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="part-time">Part Time</label>
                                        </div>
                                    </div>
                                    
                                  <button class="btn pmd-ripple-effect btn-primary pmd-btn-raised mb-2" type="Submit">Add</button>
                                </div>
                                
                            </div>
                    
                    
                    </div>
                    </form>
                  </div>
                       
                  
                  
                           
                  

            
            </div>
            
            <!--  Document tab End -->


            <!-- Salary Tab -->
            <div role="tabpanel" class="tab-pane" id="salary">
                <!-- Salary Form -->
                <div class="card pmd-card">
                    <div class="card-body">
                       <h3 class="card-title">Salary Information</h3>
                       <div class="details-tab"> 
                        
  					 
   					 <!------Fetch From Database END ------->                                             
                     
                            <form method="post" action="AddSalary" >
                                <div class="row"> 
                                  <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                       
  					  
                                            <label  class="col-form-label control-label">Employee-ID</label>  
                                           
                                           <select name="Select" id="Select" class="form-control">
                                             <option value="-1" >----------select----------</option>
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
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Actual Hourly Salary</label>
                                            <input type="text" class="form-control" name="hourly" id="hourly"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label class="col-form-label control-label">Total Monthly Salary</label>
                                            <input type="text" class="form-control" name="monthly" id="monthly"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label  class="col-form-label control-label">Annual Gross Salary</label>
                                            <input type="text" class="form-control" name="annual" id="annual"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <!--<div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Federal Withholding</label>
                                            <input type="text" class="form-control" name="federal" id="federal"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>-->
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label  class="col-form-label control-label">Medicare</label>
                                            <input type="text" class="form-control" name="medicare" id="medicare"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                   <!-- <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label  class="col-form-label control-label">Social Security</label>
                                            <input type="text" class="form-control" name="social" id="social"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>-->
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label  class="col-form-label control-label">Allowances</label>
                                            <input type="text" class="form-control" name="allowances" id="allowances"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <!--<div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label  class="col-form-label control-label">Add Allowances</label>
                                            <input type="text" class="form-control"name="add-allowances" id="add-allowances"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>-->
                                    <div class="col-12 col-md-6 col-lg-3">
                                      
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 mt-3">
                                        <button class="btn btn-primary pmd-ripple-effect pmd-btn-raised" type="submit">Save</button>
                                        <!--  <button class="btn btn-outline-secondary pmd-ripple-effect" type="submit">Reset</button>-->
                                    </div>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>
  
  
  
  
  
  
  
  
  
  
       
</div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
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
	if(status == "success")
	{
		swal("congrats","Your Account as been  Created Successfully","success");
	}
	</script>
	<!-- sweetalert------For---------addnew employee----->
	
	
	<!-- salary -->
	<script type="text/javascript">
	var status1 = document.getElementById("status1").value;
	if(status1 == "success")
	{
		swal("congrats","Your  Salray Account as been Added Successfully","success");
	}
	</script>	
	<!--  salary-->
		<!--  Add employee document script -->
	<script type="text/javascript">
	var status3 = document.getElementById("status3").value;
	if(status3 == "success")
	{
		swal("congrats"," Details Added Successfully","success");
	}
	</script>	
	<!--  Add employee document script-->
	   <!--  Script for Date Picker -->
   		<script>
		$(document).ready(function(){
			$('.datepicker').datepicker({
				format: 'yyyy-mm-dd',
				startView: 2,
				maxViewMode: 3,
				autoclose: true,
				todayHighlight: true,
				clearBtn: true
			});
		});
	</script>

</body>
</html>