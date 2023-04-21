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
    <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 

 <!-- <link href="assets/css/index.css" rel="stylesheet" /-->
 <style type="text/css">
 
/* nav{

postion:absulte;}
.gradient-custom {
  /* fallback for old browsers */
 /* background: #c471f5;

  /* Chrome 10-25, Safari 5.1-6 */
 /* background: -webkit-linear-gradient(to right, rgba(196, 113, 245, 1), rgba(250, 113, 205, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
 /*background: linear-gradient(to right, rgba(196, 113, 245, 1), rgba(250, 113, 205, 1))*/
/*}
/*

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
                <a class="nav-link pmd-ripple-effect active" href="">
               		
                	<span class="media-body">Account Settings</span>
               </a>
                
                
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                  
                </div>
            </li>

          

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
		
		
        <div class="page-content profile-view">
            <div class="row">  
  <!-- ----------------------------------TAB ------------------------------------ -----> 
					
<!--<div class="container">
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
  </ul>
 </div>-->
			

    
    
    
    
    
    
     
     
     
  <!-- ----------------------------------Tab END------------------------------------ -----> 
    </div>  </div>
  
  
  
  
  
  
  
  <div id="content" class="pmd-content admin section-container">
    <!-- Title -->
    <h1>Add Salary</h1>
    <!-- End Title -->
    


    <div class="page-content">
		<div class="pmd-tabs pmd-tabs-dark ">
			<div class="pmd-tab-active-bar" style="width: 93.125px; left: 0px;"></div><ul class="nav nav-tabs" role="tablist" style="width: 325.575px;">
				<!--<li class="nav-item"><a class="nav-link active show" href="#salary" aria-controls="about" role="tab" data-toggle="tab" aria-selected="true"><b>Salary</b></a></li>-->
				<!-- <li class="nav-item"><a class="nav-link" href="#documents" aria-controls="documents" role="tab" data-toggle="tab" aria-selected="false">Documents</a></li>-->
				<li class="nav-item"><a class="nav-link" href="#salary" aria-controls="salary" role="tab" data-toggle="tab" aria-selected="false"><b>Salary</b></a></li>
			</ul>
		</div>
		<!-- Tab panes -->
        <div class="tab-content">
            <!-- Salary Tab -->
            <div role="tabpanel" class="tab-pane active show" id="salary">
                <!-- Salary Form -->
                <div class="card pmd-card">
                    <div class="card-body">
                        <h3 class="card-title">Salary Information</h3>
                        <div class="details-tab">
                            <form>
                                <div class="row">
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="hourly" class="col-form-label control-label">Actual Hourly Salary</label>
                                            <input type="text" class="form-control" value="" id="hourly"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="monthly" class="col-form-label control-label">Total Monthly Salary</label>
                                            <input type="text" class="form-control" value="" id="monthly"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="annual" class="col-form-label control-label">Annual Gross Salary</label>
                                            <input type="text" class="form-control" value="" id="annual"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label">
                                            <label for="federal" class="col-form-label control-label">Federal Withholding</label>
                                            <input type="text" class="form-control" value="" id="federal"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="medicare" class="col-form-label control-label">Medicare</label>
                                            <input type="text" class="form-control" value="" id="medicare"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="social" class="col-form-label control-label">Social Security</label>
                                            <input type="text" class="form-control" value="" id="social"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="allowances" class="col-form-label control-label">Allowances</label>
                                            <input type="text" class="form-control" value="" id="allowances"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="add-allowances" class="col-form-label control-label">Add Allowances</label>
                                            <input type="text" class="form-control" value="" id="add-allowances"><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-3">
                                        <div class="form-group pmd-textfield pmd-textfield-floating-label ">
                                            <label for="net-pay" class="col-form-label control-label">Net Pay</label>
                                            <input type="text" class="form-control" value="" id="net-pay" disabled=""><span class="pmd-textfield-focused"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12 mt-3">
                                        <button class="btn btn-primary pmd-ripple-effect pmd-btn-raised" type="submit">Save</button> <button class="btn btn-outline-secondary pmd-ripple-effect" type="submit">Reset</button>
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

</body>

</html>