
<%
if(session.getAttribute("name")== null) {

 response.sendRedirect("login.jsp");
 }
%>

<%
if(session.getAttribute("id")== null) {

 //response.sendRedirect("login.jsp");
 }
%>
<%
if(session.getAttribute("Emp_id")== null) {

 //response.sendRedirect("login.jsp");
 }
%>
  <%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Custom fonts for this template-->
    <link href="assetes/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    
        
<!-- textbox links  and Script-->
<link href="https://opensource.propeller.in/components/textfield/css/textfield.css" rel="stylesheet">
<!-- Propeller Global js --> 
<script src="https://opensource.propeller.in/components/global/js/global.js"></script>

<!-- Propeller textfield js -->
<script type="text/javascript" src="https://opensource.propeller.in/components/textfield/js/textfield.js"></script>
<!-- textbox links  and Script-end->

 <!-- <link href="assets/css/index.css" rel="stylesheet" /-->
 
 
 
 <!-- CSS -->
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">-->

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 
<!--  Date-picker CSS and JS files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
 <!--  Date-picker END -->

 
</head>
<body id="page-top">


<input type="hidden" id="status" value="<%= request.getAttribute("status")%>"><!-- sweetalert for Add new Employee -->


<!------------------------------------------------------- Navbar starts ------------------------------------------->
<nav class="navbar navbar-expand-lg navbar-dark bg-gradient-primary">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Navbar brand -->
    <a style="color:white;font-size: 35px;" class="navbar-brand" href="#">Wellcome</a>  
    
    <a class="nav-link py-3 px-0 px-lg-3 " Style="padding-left:15%; color:white; font-size: 35px;" href="logout"><%=session.getAttribute("name") %></a>
   <!--  <a class="nav-link py-3 px-0 px-lg-3 " Style="padding-left:15%; color:white; font-size: 35px;" >%=session.getAttribute("id") %></a>-->
   
  <!--   <a class="nav-link" Style="padding-left:15%; color:white;" href="logout1"><b>Logout</b></a>-->  
   
    </div>
    <!-- Collapsible wrapper -->
  </div>
  
</nav>
<!-------------------------------------------------------- Navbar bar End-------------------------------------- -->



<!--------------------------------------------------------- Page Wrapper ------------------------------------------------------>
<div id="wrapper">


        <!-------------------------- Sidebar --------------------------------------------------------->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Employee</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                settings
            </div>
            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                    <a class="nav-link pmd-ripple-effect active" href="#accountsetting">
                       <span class="media-body">Account Settings</span>
                    </a>
              
            </li>

          

            <!-- Divider -->
            <hr class="sidebar-divider">          
            <!--------------------------------------------LOg out-----DASHBOARD------------------------->  
             <li class="nav-item"> 
    			<a class="nav-link" Style="padding-left:15%; color:white;" href="logout1"><b>Logout</b></a> 
            </li>
            <!--------------------------------------------LOg out-----DASHBOARD----END--------------->
               
       

            <!-- Nav Item - Tables -->
          <!--   <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span></a>
            </li>

            <!-- Divider 
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) 
           <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>-->

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                   <!-- <h1 class="h3 mb-4 text-gray-800">Blank Page</h1>-->
                    
                    
           <!-- ----------------------------------------New EMployee Details -->         
        <div id="content" class="pmd-content inner-page profile-page">
		<div class="cover-content">
			<div class="page-content">
				
				<!--  new can thing add -->
				
			</div>	
		</div>
		
		
		<!---------------------------------------------New Tab Panle ---------------------------  -->
		
<div class="container">
  <ul class="nav nav-tabs">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#tab1">EMPLOYEE DEATILS</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" id="accountsetting" data-toggle="tab" href="#tab2">Settings</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#tab3">Salary</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#tab4">leave</a>
    </li>
  </ul>
   <!--------------------------------------- Tab panes ------------------------------------------------------------------>
  <div class="tab-content">
    <div id="tab1" class="tab-pane fade show active">
     <div class="tab-content">
          <!----- About Tab ---1-->
           <div class="card-body p-4 p-md-5">
             <h3 class="mb-4 ">  Employee Personal Information</h3>
             
           	 <!-- <button type="button" class="btn-close"><a href="home.jsp">&times</a></button>-->
   	 		 <tbody> 
   				  	     <!------Fetch From Database ------->        
  						<%
						//int Eid = Integer.parseInt(request.getParameter("Eid"));
  						String uname = (String) request.getSession().getAttribute("name");
  						String Eid = (String) request.getSession().getAttribute("id");
  						String Emp_Id = (String) request.getSession().getAttribute("Emp_id");
  				
  						// Connect to database
  						String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  						String username = "root";
  						String password = "admin@123";
 						Connection conn = DriverManager.getConnection(url, username, password);
  
					    // Retrieve data for selected row
  						PreparedStatement stmt = conn.prepareStatement("select Ename,E_department,E_Address,E_PhoneNumber,E_email,DateofBirth,Gender,MaritalStatus from employee WHERE Ename = ? and Eid = ? and Emp_id = ?");
 						 					    	
  					    stmt.setString(1,uname);	
  					    stmt.setString(2, Eid);
  					    stmt.setString(3, Emp_Id);
					    ResultSet rs = stmt.executeQuery();
  
  						// Get data from result set
 						 if (rs.next()) 
 						 {
					   //int account_No = rs.getInt("account_number"); 
   						String name = rs.getString("Ename");
    					String email = rs.getString("E_email");    
    					String mobile_no =rs.getString("E_PhoneNumber"); 
    					String department =rs.getString("E_department");
    					String Address =rs.getString("E_Address");
    					String DateofBirth =rs.getString("DateofBirth");
    					String GENDER =rs.getString("Gender");
    					String MARITALSTATUS =rs.getString("MaritalStatus");
  					 %>
   					   <!------Fetch From Database END -------> 
   
                	 	 <form method="post" action="updateuser">
			  		 	  <!-- <input type="hidden" name="id" value="">-->
               		 	  <div class="row">
                		  <div class="col-md-6 mb-4 col-lg-3">  
                	 	  <div class="form-group pmd-textfield pmd-textfield-floating-label">
                          <label  for="fn" class="col-form-label control-label" Style="padding:10px;text-align:left;">Name</label>
                          <input type="text" name="Name" class="form-control" value="<%= name%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                          </div>
                     </div>             
                            
                	   <div class="col-md-6 mb-4 col-lg-3">
                    	 <div class="form-group pmd-textfield pmd-textfield-floating-label">
                         <label  for="fn" class="col-form-label control-label" Style="padding:10px;text-align:left;">Phone Number</label>
                         <input type="text" name="Mobileno" class="form-control" value="<%= mobile_no%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                   		</div>             
               	       </div>
               	      <div class="col-md-6 mb-4 col-lg-3">
                    	 <div class="form-group pmd-textfield pmd-textfield-floating-label">
                         <label  for="fn" class="col-form-label control-label" Style="padding:10px;text-align:left;">Department</label>
                         <input type="text" name="department" class="form-control" value="<%= department%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                   		</div>             
               	      </div>
               	      <div class="col-md-6 mb-4 col-lg-3">
                     	<div class="form-group pmd-textfield pmd-textfield-floating-label">
                         <label  for="fn" class="col-form-label control-label" Style="padding:10px;text-align:left;">Email</label>
                         <input type="text" name="Email" class="form-control" value="<%= email%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                   		</div> 
                 	  </div> 
                 
                	     <div class="row">
                   			<div class="col-12 col-sm-6 col-md-3"> 
                    		<div class="form-group pmd-textfield pmd-textfield-floating-label">
                        		 <label  for="fn" class="col-form-label control-label" Style="padding:10px;text-align:left;">Address</label>
                      	  		 <input type="text" name="Addres" class="form-control" value="<%= Address%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                   			</div> 
                   		</div>
                   
                          <div class="col-md-6 mb-4 col-lg-3">
                           <div class="form-group pmd-textfield pmd-textfield-floating-label">                         
                            <label  for="dob" class="col-form-label control-label" Style="padding:10px;text-align:left;">Date of Birth</label>
                            <input type="text" name="DateofBirth" class="form-control" value="<%= DateofBirth%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                    		
                           </div>  
                         </div>
                         
                      
                          <div class="col-md-6 mb-4 col-lg-3">
                           <div class="form-group pmd-textfield pmd-textfield-floating-label">                         
                            <label  for="dob" class="col-form-label control-label" Style="padding:10px;text-align:left;">Gender</label>
                            <input type="text" name="" class="form-control" value="<%= GENDER%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                    		
                           </div>  
                         </div>
                         
                          <div class="col-md-6 mb-4 col-lg-3">
                           <div class="form-group pmd-textfield pmd-textfield-floating-label">                         
                            <label  for="dob" class="col-form-label control-label" Style="padding:10px;text-align:left;">Marital Status</label>
                            <input type="text" name="" class="form-control" value="<%= MARITALSTATUS%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                    		
                           </div>  
                         </div>
               		   		 <br>
                  				<div class="mt-4 pt-2" Style="postion:relative;padding: 0px 400px;">
              	 					 <!-- <input   class="btn btn-primary btn-lg"  type="submit" value="Save"></input>-->                            
               					</div>
                </div>
              
                	</div>
            		</form>            
            		<%
              			}
  						// Close database connection
 						 rs.close();
 				 		stmt.close();
 				 		conn.close();
           			 %>	
	       </tbody>
                   </div>
                   <div class="card-body p-4 p-md-5">
                   <h3 class="mb-4">  Employee  Information</h3>
                 
                      <form>
                    <tbody>
                        <%
                        String EmpId = (String) request.getSession().getAttribute("Emp_id");
                        
                		String url2 = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  						String username2 = "root";
  						String password2 = "admin@123";
 						Connection conn2 = DriverManager.getConnection(url2, username2, password2);
  
					    // Retrieve data for selected row
  						PreparedStatement stmt2 = conn2.prepareStatement("select Emp_id ,Date_Of_Joining,Company_Email,Department,Designation,Reporting_Employee,Type_of_Employe from employeedoc where Emp_id = ?");
 						 					    	
  					    stmt2.setString(1,EmpId);	 					
					    ResultSet rs2 = stmt2.executeQuery();
  
                  
  						 if (rs2.next()) 
 						 {
					  		 //int account_No = rs.getInt("account_number"); 
   								String empid = rs2.getString("Emp_id");
    							String Doj = rs2.getString("Date_Of_Joining");    
    							String comemail = rs2.getString("Company_Email"); 
    							String department = rs2.getString("Department");
    							String designation = rs2.getString("Designation");
    							String repotemployee = rs2.getString("Reporting_Employee");
    							String typeofemp = rs2.getString("Type_of_Employe");
    							//String MARITALSTATUS =rs.getString("");
 						
							 
   						
  					
						%>
                        
                                 
                    
                    
                   	 	 <div class="row">
                		  <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label class="col-form-label control-label" Style="padding:10px;text-align:left;">Employee Enrollment ID</label>
                             <input type="text" name="empid" class="form-control" value="<%= empid%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                          
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label   class="col-form-label control-label" Style="padding:10px;text-align:left;">Date of Joining</label>
                             <input type="text" name="Doj" class="form-control" value="<%= Doj%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label  class="col-form-label control-label" Style="padding:10px;text-align:left;">Company Email</label>
                             <input type="text" name="comemail" class="form-control" value="<%= comemail%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label class="col-form-label control-label" Style="padding:10px;text-align:left;">Department</label>
                             <input type="text" name="department" class="form-control" value="<%= department%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label class="col-form-label control-label" Style="padding:10px;text-align:left;">Designation</label>
                             <input type="text" name="designation" class="form-control" value="<%= designation%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label class="col-form-label control-label" Style="padding:10px;text-align:left;">Reporting Employee</label>
                             <input type="text" name="repotemployee" class="form-control" value="<%= repotemployee%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                            <div class="col-md-6 mb-4 col-lg-3">  
                	 	    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                             <label   class="col-form-label control-label" Style="padding:10px;text-align:left;">Type of Employee</label>
                             <input type="text" name="typeofemp" class="form-control" value="<%= typeofemp%>" Style="padding:10px;text-align:left;" ><span class="pmd-textfield-focused"></span>
                            </div>
                          </div>
                         
                     </div>
                     
                        <%
 						 }
                     // Close database connection
 						 rs2.close();
 				 		stmt2.close();
 				 		conn2.close();
							 
					
           			 %>
           			 </tbody>	
                     </form>
                 
                 
                 
                 
                   </div>
                   
                       <!--<div class="card-body p-4 p-md-5">
                        <h3 class="mb-4">  Employee Personal Information</h3>
                       </div>-->
                	</div>
                	<!-- -------Tab panle Ends -->
    </div>
    
   <!-- ----------------------------------Account settings Start------ Tab Panel------------------------------- --> 
    <div id="tab2" class="tab-pane fade">
    <div id="content" class="pmd-content admin section-container">
    <!-- Title -->
    <h1>Account Settings</h1>
    <!-- End Title -->
    
    <!--breadcrum start-->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb pmd-breadcrumb">
            <li class="breadcrumb-item">
                <a href="index.jsp">Dashboard</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Account Settings</li>           
        </ol>
    </nav>
    <!--breadcrum end-->

    <div class="page-content">
        <!-- Change Password -->
        <div class="card pmd-card single-col-form">
            <div class="card-header">
                <h3 class="card-title">Change Password</h3>
                <p class="card-subtitle">It's a good idea to use a strong password that you don't use elsewhere.</p>
            </div>
            <div class="card-body">
            
             <input type="hidden" name="id" value="<%=session.getAttribute("id") %>">
                <form id="changepasswordform" method="post" action="changepassword" novalidate="novalidate">
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                  
                        <label  class="col-form-label">Current</label><!-- style="postion:relative;top:40px;"-->
                        <input type="password" class="form-control" id="current" name="current" fdprocessedid="m3ktvi" Style="padding:12px;"><span class="pmd-textfield-focused"></span>
                    </div>
                    
                   
                    
                    
                    
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label  class="col-form-label">New Password</label>
                        <input type="password" class="form-control" id="new" name="new" fdprocessedid="qjmiig"Style="padding:12px;"><span class="pmd-textfield-focused"></span>
                    </div>
                    <div class="form-group pmd-textfield pmd-textfield-floating-label">
                        <label class="col-form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="confirm" name="repeatpassword" fdprocessedid="373tua"Style="padding:12px;"><span class="pmd-textfield-focused"></span>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-primary pmd-ripple-effect pmd-btn-raised" name="signup" value="Update Password" fdprocessedid="p05ir">Update Password</button> <button class="btn btn-outline-secondary pmd-ripple-effect" type="reset" fdprocessedid="jp6xc">Cancel</button>
                    </div>
                </form>
                <tbody>               

    
                </tbody>
            </div>
        </div>
   
    </div>
   </div>     
 </div>
  <!-- ----------------------------------Account settings-------------------------Tab Pannel END------------------------------------ -->  
    <div id="tab3" class="tab-pane fade">
    
  
      
      <div class="details-tab">
                                            <div class="d-flex flex-row align-items-center mb-2">
                                                <div class="media-body">
                                                    <h3 class="card-title">Salary Information</h3>
                                                </div>
                                             
                                            </div>
                                       <tbody> 
   				  	     <!------Fetch From Database ------->        
  						<%
						//int Eid = Integer.parseInt(request.getParameter("Eid"));
  						//String uname = (String) request.getSession().getAttribute("name");
  						String Emp_id = (String) request.getSession().getAttribute("Emp_id");
  					
  				
  						// Connect to database
  						String url1 = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  						String username1 = "root";
  						String password1 = "admin@123";
 						Connection conn1 = DriverManager.getConnection(url, username, password);
  
					    // Retrieve data for selected row
  						PreparedStatement stmt1 = conn1.prepareStatement("select * from salary WHERE Emp_id = ? ");
 						 					    	
  					   // stmt1.setString(1,uname);	
  					    stmt1.setString(1, Emp_id);
					    ResultSet rs1 = stmt1.executeQuery();
  
  						// Get data from result set
 						 if (rs1.next()) 
 						 {
					   //int account_No = rs.getInt("account_number"); 
   						String Hourly = rs1.getString("Hourly_Salary");
    					String Monthly = rs1.getString("Monthly_Salary");    
    					String Annual =rs1.getString("AnnualSalary"); 
    					String Medicare =rs1.getString("Medicare");
    					String Allowances =rs1.getString("allowances");   
  					    %>
                                            <form class="edit-salary-card" >
                                                <div class="row">
                                                    <div class="col-12 col-md-6 col-lg-3">
                                                        <div class="form-group pmd-textfield pmd-textfield-floating-label pmd-textfield-floating-label-completed">
                                                            <label for="hourly" class="col-form-label control-label">Actual Hourly Salary</label>
                                                            <input type="text" class="form-control" value="<%= Hourly%>" id="hourly"><span class="pmd-textfield-focused"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-6 col-lg-3">
                                                        <div class="form-group pmd-textfield pmd-textfield-floating-label pmd-textfield-floating-label-completed">
                                                            <label for="monthly" class="col-form-label control-label">Total Monthly Salary</label>
                                                            <input type="text" class="form-control" value="<%= Monthly%>" id="monthly"><span class="pmd-textfield-focused"></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-12 col-md-6 col-lg-3">
                                                        <div class="form-group pmd-textfield pmd-textfield-floating-label pmd-textfield-floating-label-completed">
                                                            <label for="annual" class="col-form-label control-label">Annual Gross Salary</label>
                                                            <input type="text" class="form-control" value="<%= Annual%>"  id="annual"><span class="pmd-textfield-focused"></span>
                                                        </div>
                                                    </div>
                                               
                                                    <div class="col-12 col-md-6 col-lg-3">
                                                        <div class="form-group pmd-textfield pmd-textfield-floating-label pmd-textfield-floating-label-completed">
                                                            <label for="medicare" class="col-form-label control-label">Medicare</label>
                                                            <input type="text" class="form-control" value="<%= Medicare%>"  id="medicare"><span class="pmd-textfield-focused"></span>
                                                        </div>
                                                    </div>
                                                 
                                                    <div class="col-12 col-md-6 col-lg-3">
                                                        <div class="form-group pmd-textfield pmd-textfield-floating-label pmd-textfield-floating-label-completed">
                                                            <label for="allowances" class="col-form-label control-label">Allowances</label>
                                                            <input type="text" class="form-control" value="<%= Allowances%>" id="allowances"><span class="pmd-textfield-focused"></span>
                                                        </div>
                                                    </div>
                                                    
                                                   
                                                </div>
                                             
                                            </form>
                                            <%
              			}
  						// Close database connection
 						 rs1.close();
 				 		stmt1.close();
 				 		conn1.close();
           			 %>	
	       </tbody>
           </div>
    </div>
    
       <!-- -------------------------Tab Panel for Leave--------------------- -->
    
    
        <div id="tab4" class="tab-pane fade">
            <div class="details-tab">
              <div class="d-flex flex-row align-items-center mb-2">
              
                    
                    <div class="card pmd-card">

                    <form  method="post" action="addleave">
                        <div class="card-body">  
                            <!-- Basic Information -->
                            <div class="details-tab">
                                <h3 class="card-title">Leave</h3>
                                <div class="row">
                                
                                  <%				
                                        String Empid = (String) request.getSession().getAttribute("Emp_id");							
  											
  											  String url3 = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  											  String username3 = "root";
  											  String password3 = "admin@123";
 											  Connection conn3 = DriverManager.getConnection(url, username, password);
  
					    					   // Retrieve data for selected row
  											  PreparedStatement stmt3 = conn3.prepareStatement(" select Ename,Emp_id from employee where Emp_id= ?");
  											 stmt3.setString(1, Empid);
					   						  ResultSet rs3 = stmt3.executeQuery();
					   						  if (rs3.next()) 
					 						  {
										  		String ename = rs3.getString("Ename");
				   								String empid = rs3.getString("Emp_id");
					 						   
  											 
 									 %>
                                 <div class="col-12 col-sm-6 col-md-3">                                       
                                     <label class="col-form-label control-label">Name</label>
                                     <input type="text" name="Name" id="Name"  value="<%=ename %>" class="form-control" required=""><span class="pmd-textfield-focused"></span>                                    
                                 </div>
                                 <div class="col-12 col-sm-6 col-md-3">
                                     <label  class="col-form-label control-label">Employee-ID</label>
                                     <input type="text" name="Empid" id="Empid" value="<%=empid %>" class="form-control" required=""><span class="pmd-textfield-focused"></span>
                                 </div>
                               <%
              			     }
  						// Close database connection
 						 rs3.close();
 				 		stmt3.close();
 				 		conn3.close();
           			 %>	
                                   <div class="col-12 col-sm-5 col-md-3">                                        
                                  <label class="col-form-label control-label">Leave Type</label>
                                        <select name="leavetype" id="" class="form-control" required="">
                                         <option value="-1" >----------Select----------</option>
                                         <option>Casual Leave</option>
										 <option>Sick Leave	</option>      
										 <option>Personal</option>        						        
           						         </select>                                          
                                 </div>
                                <div class="col-12 col-sm-5 col-md-3">                                        
                                  <label class="col-form-label control-label">Half Day</label>
                                        <select name="halfday" id="" class="form-control" required="">
                                         <option value="-1" >----------Select----------</option>
                                         <option>Yes</option>
										 <option>No</option>           						        
           						         </select>                                          
                                 </div>
                                  <div class="col-12 col-sm-6 col-md-3">
                                       <label  class="col-form-label control-label">Start Date</label>
                                       <input type="dob" name="Sdate" id="dob" class="form-control datepicker" required=""><span class="pmd-textfield-focused"></span>
                                  </div>
                                   <div class="col-12 col-sm-6 col-md-3">
                                       <label  class="col-form-label control-label">End Date</label>
                                       <input type="dob" name="Edate" id="dob" class="form-control datepicker" required="" ><span class="pmd-textfield-focused"></span>
                                  </div>
                                   <div class="col-12 col-sm-6 col-md-3">
                                       <label  class="col-form-label control-label">Reason</label>
                                       <input type="text" name="reason" id="" class="form-control" required=""><span class="pmd-textfield-focused"></span>
                                  </div>
                                   
                                    <div class="col-12 col-sm-6 col-md-3">                                       
                                        <label  class="col-form-label control-label">No of Leave</label>
                                        <input type="text" name="noofleave" id=""  class="form-control" required=""><span class="pmd-textfield-focused" ></span>                                        
                                    </div>
                                    <!-- <div class="col-12 col-sm-6 col-md-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label  class="col-form-label control-label">Date of Birth</label>
                                          <!--   <input type="text" name="dob" id="dob" class="form-control"><span class="pmd-textfield-focused"></span>--
                                            <input type="text" class="form-control datepicker" style="padding:10px;text-align:left;" id="dob" name="dob" required="">
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
             </div>
         </div>    
    <!---------------------------Tab Panel For Leave End --------------------->
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
   
   
    <!-- ----tab panle herf  -->
	<script>
	
	$(document).ready(function() {
		  // set default active tab
		  $('.tab-content:first').addClass('active');

		  // handle tab click event
		  $('.tabs a').on('click', function(e) {
		    e.preventDefault();
		    var tabId = $(this).attr('href');
		    $('.tab-content').removeClass('active');
		    $(tabId).addClass('active');
		  });
		});
	</script>
	   
    <!-- ----tab panle herf  -->
        
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
		swal("congrats","Your Password as been reset Successfully","success");
	}
	</script>
	 <!--<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error");
	}
	</script>-->
	
  <!-- sweetalert------For---------addnew employee End----->
  
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