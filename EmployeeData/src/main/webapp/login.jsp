<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- sweetalert  Status -->
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
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

                <form method="post" action="login">

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color:#ff6219;" ></i>
                    <span class="h1 fw-bold mb-0">Login</span>
                  </div><br>                

                  <div class="form-outline mb-4">
                     <label class="form-label">Username</label>
					  <input type="text" class="form-control" id="email" name="email" placeholder="Enter Email ID" required="" autofocus="autofocus" fdprocessedid="d0vspi">                 
                  </div>

                  <div class="form-outline mb-4">
                   <label class="form-label">Password</label>
                   <!-- <input type="password" name="password" class="form-control form-control-lg"  placeholder="123" required=""/>  -->                 
                   <input type="password" id="pass" name="password" class="form-control" placeholder="Enter Password" required="" fdprocessedid="50t88f">
                   
                   <input type="checkbox" onclick="myFunction()">Show Password                    				
					<script>
						function myFunction() {
 						 var x = document.getElementById("pass");
 						 if (x.type === "password") {
 						   x.type = "text";
 						 } else {
  						  x.type = "password";
 						 }
						}
					</script> 
                  </div>

                  <div class="pt-1 mb-4">
                    <input type="submit" name="login-submit" id="login-submit" class="btn btn-success btn-lg"  style="padding-left: 1.5rem; padding-right: 1.5rem;"value="Login" fdprocessedid="q4oma">
                    <button type="button" class="btn btn-danger btn-lg"  style="padding-left: 1.5rem; padding-right: 1.5rem;" data-dismiss="modal"onclick="location.href='Home.jsp';">Close</button>
                  </div>

                <!-- <a class="small text-muted" href="#!">Forgot password?</a>
                  <p class="mb-5 pb-lg-2" style="color: #393f81;">Don't have an account? <a href="#!"
                      style="color: #393f81;">Register here</a></p>-->
                  <a href="#!" class="small text-muted">Terms of use.</a>
                  <a href="#!" class="small text-muted">Privacy policy</a>
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


<!-- ---------------------------------------------------- javascript sweetalert message -------------------- -->
<!-- JS java Script message  -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 		
		
 <script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status == "failed"){
		swal("Sorry","Wrong Username or Password","error");
	}
	</script>
	<!-- ---------------------<!-- ---------------------------------------------------- javascript sweetalert MessageEnd -------------------- --->
	
	
	
</body>
</html>