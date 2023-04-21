<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- sweetalert  Status -->
<input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
<!-- sweetalert END -->

<section class="vh-100" style="background-color:#C0C0C0;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
          
          <!-- --Admin  ----------------------------------------image------------------------------------ -->
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="img/admin.jpg" alt="login form" class="img-fluid" 
            style="border-radius: 1rem 0 0 1rem; padding:140px 40px 40px 140px;" />
            </div>
            <!-- src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/1.webp"-->
          <!-- --Admin image End------------------------------------ -->
             <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

<!-- ----------------------------------------------admin Loginform ------------------------------------------------------->

                <form method="post" action="adiminlogin">

                  <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-cubes fa-2x me-3" style="color:#ff6219;"></i>
                    <span class="h1 fw-bold mb-0">Admin </span>
                  </div><br>

                 <!--  <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>-->

                  <div class="form-outline mb-4">
                     <label class="form-label">Email address</label>
                    <input type="email" name="username" class="form-control form-control-lg"  placeholder="Enter Email ID" required=""/>                 
                  </div>

                  <div class="form-outline mb-4">
                   <label class="form-label">Password</label>
                    <input type="password" name="password" id="myInput" class="form-control form-control-lg"  placeholder="Enter Password" fdprocessedid="50t88f" required=""/>
                    <input type="checkbox" onclick="myFunction()">Show Password
                    				
					<script>
						function myFunction() {
 						 var x = document.getElementById("myInput");
 						 if (x.type === "password") {
 						   x.type = "text";
 						 } else {
  						  x.type = "password";
 						 }
						}
					</script>                   
                  </div>

                  <div class="pt-1 mb-4">   
                    <button type="submit" class="btn btn-success btn-lg" style="padding-left: 1.5rem; padding-right: 1.5rem;" >Login</button>
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