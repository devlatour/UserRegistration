<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Failure</title>
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

</head>
<body>
	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<div class="navbar navbar-default">

		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/StudentEnrollmentWithMyBatis">Home</a></li>
				<li><a href="signup.html">Signup</a></li>
				<li class="active"><a href="login.html">Login</a></li>
			</ul>
		</div>
	</div>

	<!-- 
	<legend>Login Success</legend>
	 -->
	<div class="panel panel-danger">
		<div class="panel-heading">
			<h3 class="panel-title">Student Enrollment Login failure</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-danger">
				<button type="button" class="close" data-dismiss="alert">�</button>
				<strong>Oops!</strong> Something is wrong. Change a few things up
				and try submitting again.
			</div>
		</div>
	</div>
	<div></div>
	<div></div>

	<a class="btn btn-primary" href="<spring:url value="login.html"/>">Try
		again?</a>
</body>
</html>