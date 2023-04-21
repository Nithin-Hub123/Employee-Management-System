<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
    <%@page import="java.sql.*" %>
    <%@page import="java.io.IOException" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginLogout</title>
    <link href="assets/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Link for Clock start -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-beta.2/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Link for Clock End -->
</head>
<body>
<!-- sweetalert  Status -->
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<input type="hidden" id="status1" value="<%= request.getAttribute("status1")%>">

<!-- sweetalert END -->

<section class="vh-100" style="background-color: #C0C0C0;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
          
          <!-- --LOgin  ----------------------------------------image------------------------------------ -->
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="img/login.jpg" alt="login form" class="img-fluid" 
            style="border-radius: 1rem 0 0 1rem; padding:110px 40px 30px 100px;" />
            </div>
         
          <!-- --Admin image End------------------------------------ -->
             <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

<!-- ---------------------------------------------- Loginform ------------------------------------------------------->

                <form method="post" action="loginlogouttimeTrack">

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color:#ff6219;" ></i>
                    <span class="h6 fw-bold mb-0">EMPLOYEE LOGIN LOGOUT MONITORING SYSTEM</span>
                  </div><br> 
                                        <!-- script for Current Date time  -->
       			 <!--     <div class="clearfix"></div><hr />-->

			<!-- flexbox clock row --><div class="row">

				<div class="d-flex align-items-center mb-3 pb-1">
				<div class="card bg-info text-white">
					<h3 class="card-title text-center">
					<div class="d-flex flex-wrap justify-content-center mt-2">
						<a><span class="badge hours"></span></a> :
						<a><span class="badge min"></span></a> :
						<a><span class="badge sec"></span></a>
					</div>
					</h3>
				</div>
				</div>
				<script>
					$(document).ready(function() {
					setInterval( function() {
					var hours = new Date().getHours();
					$(".hours").html(( hours < 10 ? "0" : "" ) + hours);
					}, 1000);
					setInterval( function() {
					var minutes = new Date().getMinutes();
					$(".min").html(( minutes < 10 ? "0" : "" ) + minutes);
					},1000);
					setInterval( function() {
					var seconds = new Date().getSeconds();
					$(".sec").html(( seconds < 10 ? "0" : "" ) + seconds);
					},1000);
					});
					</script>
             <!-- script for Current Date time   End-->               

                  <div class="form-outline mb-3">
                     <label class="form-label">Employee Id</label>
					  
					       
                                           <select name="EmpId" id="" class="form-control" required="" >
                                             <option value="-1" >---------------Select---------------</option>
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
           						           <br>
           						                <span id="datetime"></span>
                                                             
                  </div>
                          

                  <div class="pt-1 mb-4">
                  
                     <input type="submit" name="login-submit" id="login-submit" class="btn btn-success btn-lg"  style="padding-left: 1.5rem; padding-right: 1.5rem;"value="Log-In" fdprocessedid="q4oma">
              <!--   <input type="Submit" name="logout-Submit" id="logout-Submit" class="btn btn-warning btn-lg"  style="padding-left: 1.5rem; padding-right: 1.5rem;"value="Clock out" >-->
                    <button type="button" class="btn btn-danger btn-lg"  style=" position: absolute;padding-left: 1.5rem; padding-right: 1.5rem;right:28.5%;" data-dismiss="modal"onclick="location.href='Home.jsp';">Close</button>
                  </div>

                </form>
                 
            <!-- ----------------------------------------------admin Loginform  End------------------------------------------------------->
         

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

   <!-- logout -->
             <button id="logout-btn" class="btn btn-warning btn-lg" data-target="#updatelogout" data-toggle="modal"
             style=" top: 63%;right:36.5%; position: absolute;">Log-Out</button>
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
            <!-- logout End  -->    


<!-- ---------------------------------------------------- javascript sweetalert message -------------------- -->
<!-- JS java Script message  -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 

	<!-- sweetalert-----employee Login time----->
	<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "success")
	{
		swal("ThankYou","Your Login done Successfully","success");
	}
	</script>		
		
 <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error");
	}
	</script>
	<!-- ---------------------<!-- ---------------------------------------------------- javascript sweetalert MessageEnd -------------------- --->
	
   <script type="text/javascript">
	var status1 = document.getElementById("status1").value;
	if(status1 == "success")
	{
		swal("ThankYou","Your Logout Done ","success");
	}
	</script>		
		
	
</body>
</html>