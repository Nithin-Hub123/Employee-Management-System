<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddNew  Dropdown items</title>
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
                           
                   
                   
                   
                <!-- ADD DATA Tab -->
            <div role="tabpanel" class="tab-pane active show">

                <!-- Documents -->
                <div class="card pmd-card">
                   <form  method="post" action="AddDropdowndata" >
                   		 <div class="card-body">
                            <div class="details-tab">
                
                              <h3 class="card-title">ADD DATA</h3>
                                <div class="row">                              
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Department</label>                                         
                                           <input type="text" class="form-control datepicker" name="department" style="padding:20px; padding-right:50px;width:300px;max-width:300px;">
                                        </div>
                                    </div>
                                    
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Designation</label>                                         
                                            <input type="text" class="form-control datepicker" name="designation" style="padding:20px; width:300px;max-width:300px;">
                                        </div>
                                    </div>
                                       <div class="col-12 col-md-6 col-lg-4">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label class="col-form-label control-label">Reporting Employee</label>                                         
                                           <input type="text" class="form-control datepicker" name="Reportingemployee" style="padding:20px; width:300px;max-width:300px;" id="dob" name="dobj">
                                        </div>
                                    </div>
                                  <div >   
                                  <button class="btn pmd-ripple-effect btn-primary pmd-btn-raised mb-2" type="Submit">Add</button>
                                  </div>
                                </div>                                
                            </div>  
                    	</div>
                    </form>
                  </div>  
            </div>
            
            <!--  ADD DATA Tab End -->
       
        
        
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
		swal("congrats","Data Added Successfully","success");
	}
	</script>
</body>
</html>