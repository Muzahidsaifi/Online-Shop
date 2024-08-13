<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container-fluid mt-5">
	<div class="container bg-info rounded p-3">
		<div class="container text-center text-danger">
			 <%@include file="error.jsp" %>
		</div>		
		<div class="container text-center text-success">
		</div>		
		<p class="h1 text-center p-3 text-white"><b>Registration Form</b></p>
	  <form action="/Saifishop/log" method="post">
	    <div class="form-group">
	      <label for="exampleInputEmail1">Name:</label>
	      <input type="text" name="name" class="form-control" required>
	    </div>
	    <div class="form-group">
	      <label for="exampleInputEmail1">Email address:</label>
	      <input type="email" class="form-control" required name="email" id="exampleInputEmail1" aria-describedby="emailHelp">
	      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
	    </div>
	    <div class="form-group">
	    	<label for="mobile">Mobile</label>
        <input type="tel" name="mobile" class="form-control" required>
	    </div>
	    <div class="form-group">
	      <label for="exampleInputPassword1">Password:</label>
	      <input type="password" class="form-control" name="password" required id="exampleInputPassword1">
	    </div>
	    <div class="form-group">
	      <label for="exampleInputConfirmPassword1">Confirm Password:</label>
	      <input type="password" class="form-control" name="cpassword" required id="exampleInputConfirmPassword1">
			 </div>
	    <div class="d-grid gap-2 m-2 p-4">
		    <button type="submit" class="btn btn-primary mt-4">Submit</button>
		    <button type="reset" class="btn btn-danger">Reset</button>
	    </div>
	   </form>
	</div>
</div>

	<%@include file="footer.jsp" %>
	<script>
	if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}
	</script>
</body>
</html>


