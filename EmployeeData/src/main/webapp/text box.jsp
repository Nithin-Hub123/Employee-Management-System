<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Jquery js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Propeller Global js --> 
<script src="https://opensource.propeller.in/components/global/js/global.js"></script>

<!-- Propeller textfield js -->
<script type="text/javascript" src="https://opensource.propeller.in/components/textfield/js/textfield.js"></script>
/* Bootstrap css */


<link href="https://opensource.propeller.in/components/textfield/css/textfield.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">



<!-- Include Bootstrap Datepicker CSS and JS files -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
<style>

.tab-panel .tab-content {
  display: none;
}
.tab-panel .tab-content.active {
  display: block;
}
</style>
</head>

<body>

<div class="tab-panel">
  <ul class="tabs">
    <li><a href="#tab1">Tab 1</a></li>
    <li><a href="#tab2">Tab 2</a></li>
    <li><a href="#tab3">Tab 3</a></li>
  </ul>
  <div id="tab1" class="tab-content">Tab 1 content goes here.
  
  <!-- Regular Input -->
<div class="form-group pmd-textfield">
  <label for="regular1" class="control-label">
    Regular Input
  </label>
  <input type="text" id="regular1" class="form-control">
</div>
<!-- Password Input -->
<div class="form-group pmd-textfield">
  <label for="password1" class="control-label">
    Password
  </label>
  <input id="password1" class="form-control" type="password">
</div>
<!--Help Text Input -->
<div class="form-group pmd-textfield">
  <label for="help1">
    Input with help text
  </label>
  <input type="text" id="help1" class="form-control">
  <p class="help-block"> Help text </p>
</div>

<!-- Regular Input with Floating labels -->
<div class="form-group pmd-textfield pmd-textfield-floating-label">
   <label for="regular1" class="control-label">
     Regular Input
   </label>
   <input type="text" id="regular1" class="form-control">
</div>
<!-- Password Input -->
<div class="form-group pmd-textfield pmd-textfield-floating-label">
  <label for="password1" class="control-label">
    Password
  </label>
  <input id="password1" class="form-control" type="password">
</div>
<!--Help Text Input -->
<div class="form-group pmd-textfield pmd-textfield-floating-label">
  <label for="help1">
    Input with help text
  </label>
  <input type="text" id="help1" class="form-control">
  <p class="help-block"> Help text </p>
</div>




<div>



  
<div class="container bg-info">  
<h1> text box layouts </h1>  
 
<div class = "row" style="border : 1px solid black;">  
<div class = "col" style="border : 2px solid black;"> Bootstrap </div>  
<div class = "col" style="border : 2px solid black;"> Bootstrap 4 </div>  
<div class = "col" style="border : 2px solid black;"> Bootstrap 5 </div>  
</div>  


<!-- Regular Input Field Without Floating Label -->
<div class="form-group pmd-textfield">
	<label for="input-without-floating">Input Field without Floating Label</label>
	<input type="text" id="input-without-floating" class="form-control">
</div>

<!-- Regular Input Field Without Floating Label with Help Text -->
<div class="form-group pmd-textfield">
	<label for="input-without-floating-help">Input Field without Floating Label with help text</label>
	<input type="text" id="input-without-floating-help" class="form-control">
	<small id="inputhelptext" class="form-text text-muted">Help Text.</small>
</div>

<!-- Regular TextArea Without Floating Label -->
<div class="form-group pmd-textfield">
	<label>Text Area without Floating Label</label>
	<textarea required class="form-control"></textarea>
</div>

<!-- Outline Input Field Without Floating Label -->
<div class="form-group pmd-textfield pmd-textfield-outline">
	<label for="outline-input-without-floating">Outline Input without Floating Label</label>
	<input type="text" id="outline-input-without-floating" class="form-control">
</div>

<!-- Outline Input Field Without Floating Label with Help Text -->
<div class="form-group pmd-textfield pmd-textfield-outline">
	<label for="outline-input-without-floating-help">Outline Input without Floating Label with help text</label>
	<input type="text" id="outline-input-without-floating-help" class="form-control">
	<small id="outlineinputhelptext" class="form-text text-muted">Help Text.</small>
</div>

<!-- Outline TextArea Without Floating Label -->
<div class="form-group pmd-textfield pmd-textfield-outline">
	<label>Outline Text Area without Floating Label</label>
	<textarea required class="form-control"></textarea>
</div>

<!-- Filled Input Field Without Floating Label -->
<div class="form-group pmd-textfield pmd-textfield-filled">
	<label for="filled-input-without-floating">Filled Input without Floating Label</label>
	<input type="text" id="filled-input-without-floating" class="form-control">
</div>

<!-- Filled Input Field Without Floating Label with Help Text -->
<div class="form-group pmd-textfield pmd-textfield-filled">
	<label for="filled-input-without-floating-help">Filled Input without Floating Label with help text</label>
	<input type="text" id="filled-input-without-floating-help" class="form-control">
	<small id="inputhelptext" class="form-text text-muted">Help Text.</small>
</div>

<!-- Filled TextArea Without Floating Label -->
<div class="form-group pmd-textfield pmd-textfield-filled">
	<label>Text Area</label>
	<textarea required class="form-control"></textarea>
</div>
</div>  
</div>





















<div class="col-md-6">
				<div class="form-group">
					<label for="dob">Date of Birth:</label>
					<input type="text" class="form-control datepicker" id="dob" name="dob" required>
				</div>
			</div>
			
			
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
	
  
  
  </div>
  <div id="tab2" class="tab-content">Tab 2 content goes here.</div>
  <div id="tab3" class="tab-content">Tab 3 content goes here.</div>
</div>



	
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
</body>
</html>