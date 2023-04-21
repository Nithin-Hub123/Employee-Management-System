<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminEdit</title>
</head>
<body>

    <!-- Custom fonts for this template-->
    <link href="assetes/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"rel="stylesheet">
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    
    
    
<!-- textbox links  and Script-->
<link href="https://opensource.propeller.in/components/textfield/css/textfield.css" rel="stylesheet">
<!-- Propeller Global js --> 
<script src="https://opensource.propeller.in/components/global/js/global.js"></script>

<!-- Propeller textfield js -->
<script type="text/javascript" src="https://opensource.propeller.in/components/textfield/js/textfield.js"></script>
<!-- textbox links  and Script-end->


 <!-- <link href="assets/css/index.css" rel="stylesheet" /-->
 
 
<!--  Date-picker CSS and JS files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
 <!--  Date-picker END -->
 
 
 <!-- ----------------------------------------------------------CSS-------------------------------------------------- -->
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
 <!-- -----------------------------------------------------------CSS END-------------------------------------------------- -->
</head>


<body id="page-top">


<!------------------------------------------------------- Navbar starts ------------------------------------------->
<!--<nav class="navbar navbar-expand-lg navbar-dark gradient-custom">-->
<nav class="navbar navbar-expand-lg bg-gradient-primary">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Navbar brand -->
    <a style="color:white;font-size: 23px;" class="navbar-brand">Employee Management System</a>   
</nav>
<!-------------------------------------------------------- Navbar bar End-------------------------------------- -->


 <!------------------------- dashboard --------leftside------------ SideBar------start  ------------------------------------------>
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
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
            <!--------------------------------------------LOg out-----DASHBOARD-----------------------------> 
             <li class="nav-item"> 
    			<a class="nav-link" Style="padding-left:15%; color:white;" href="logout1"><b>Logout</b></a> 
            </li>
            <!--------------------------------------------LOg out-----DASHBOARD----END---------------------->
        </ul>
        
        
        
        
 <!-----------------------------------------------  Sidebar --END------------------------------------------------------------------->
        

        <!-- Content Wrapper -->
 
<div class="container" style="width:100%">
   
        <div class="card pmd-card">
                                    <div class="card-body">
                                        <div class="details-tab">
                                            <div class="d-flex flex-row align-items-center mb-2">
                                                <div class="media-body">
                                                    <h3 class="card-title">Edit Employee Details</h3>
                                                </div>
                                                <!-- <div class="dropdown pmd-dropdown pmd-user-info ml-auto">
                                                    <a href="#" class="pmd-btn-fab btn-outline-dark pmd-btn-flat btn btn-sm" data-toggle="dropdown" aria-expanded="true"><i class="material-icons pmd-icon-sm">more_vert</i></a>
                                                    <div class="dropdown-menu dropdown-menu-right" style="clip: rect(0px, 0px, 0px, 0px); transform: translate3d(40px, 0px, 0px);">
                                                        <a class="dropdown-item d-flex flex-row" id="edit-salary-info" href="javascript:void(0);"><i class="material-icons md-dark pmd-icon-xs mr-3">edit</i><span class="media-body">Edit</span></a>
                                                    </div>
                                                </div>-->
                                            </div>
                                    
                                     
                                           
                                           
                                           
                                           
                                           
                                           	<div class="card-body p-4 p-md-5">
          				  <!-- <h2 class="mb-4 mr-10 pb-2 pb-md-0 mb-md-5">Registration Form</h2>-->
           				 <!-- <button type="button" class="btn-close"><a href="home.jsp">&times</a></button>-->
   			      <tbody> 
   				  <!------Fetch From Database ------->        
  					<%
						int Eid = Integer.parseInt(request.getParameter("Eid"));
  						// Connect to database
  						String url = "jdbc:mysql://localhost:3306/emp?useSSl=false";
  						String username = "root";
  						String password = "admin@123";
 						Connection conn = DriverManager.getConnection(url, username, password);
  
					    // Retrieve data for selected row
  						PreparedStatement stmt = conn.prepareStatement("select Ename,E_department,E_Address,E_PhoneNumber,E_email,DateofBirth,Gender,MaritalStatus from employee WHERE Eid = ?");
 						stmt.setInt(1, Eid);
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
    					String gender =rs.getString("Gender");
    					String marital =rs.getString("MaritalStatus");
  					%>
   					<!------Fetch From Database END ------->  
   
              <form method="post" action="updateuser">
			   <input type="hidden" name="id" value="<%= Eid %>">
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
                    		<input type="text" class="form-control datepicker"  Style="padding:10px;text-align:left;" id="dob" name="dob" value="<%= DateofBirth%>"  required>
                           </div>  
                         </div>
                         
                            <div class="col-md-6 mb-4 col-lg-3">
                           <div class="form-group pmd-textfield pmd-textfield-floating-label">                         
                            <label  for="gender" class="col-form-label control-label" Style="padding:10px;text-align:left;">Gender</label>
                              <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio" name="gender" value="Male" id="male" class="custom-control-input" Style="padding-left:20px;"><!-- type="radio" id="male" name="gender"  -->
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="male" Style="padding-left:20px;top:30px; right:90px;">Male</label>
                                        </div>
                                        <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio" name="gender" value="Female" id="female" class="custom-control-input" Style="top:40px;">
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="female" Style="padding-left:20px;left:80px; top:-9px;">Female</label>
                                        </div>
                    		
                           </div>  
                         </div>
                 
                         <div class="col-md-6 mb-4 col-lg-3">
                           <div class="form-group pmd-textfield pmd-textfield-floating-label">                         
                            <label  for="marital" class="col-form-label control-label" Style="padding:10px;text-align:left;">Marital Status</label>
                             
                                          <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio" name="marital" value="Married" id="married" class="custom-control-input" Style="padding-left:20px;"><!-- type="radio" id="male" name="gender"  -->
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="married" Style="padding-left:20px;bottom:10px; right:15px;">Married</label>
                                        </div>
                                        <div class="custom-control custom-radio pmd-radio custom-control-inline">
                                            <input type="radio" name="marital" value="Unmarried" id="unmarried" class="custom-control-input" Style="top:40px;">
                                            <label class="custom-control-label pmd-radio-ripple-effect" for="unmarried" Style="padding-left:20px;left:100px; top:-38px;">Unmarried</label>
                                        </div>
                    		
                           </div>  
                         </div>
                <br>
               
         
               
                  <div class="mt-4 pt-2" Style="postion:relative;padding: 0px 400px;">
                <input   class="btn btn-primary btn-lg"  type="submit" value="Save"></input>                            
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
         
                                           
                                           
                                           
                                           
                                            </div>
                                    </div>
                                </div>
                                
                                     <!-- Footer -->
         <footer class="sticky-footer bg-white">
           <div class="container my-auto">
             <div class="copyright text-center my-auto">
              <span>Copyright &copy; Your Website 2020</span>
            </div>
           </div>
        </footer>
        <!-- End of Footer -->

        
<!-- End of Content Wrapper -->

    </div>       
        <br>
        
        <br>
        <br>
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
                    <a class="btn btn-primary" href="login.jsp">Logout</a>
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
	  <!--  Script for Date Picker  END-->

</body>

</html>