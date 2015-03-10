<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Success</title>
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
				<li><a href="/UserRegistration">Home</a></li>
				<li><a href="signup.html">Signup</a></li>
				<li class="active"><a href="login.html">Login</a></li>
			</ul>
		</div>

	</div>

	<!-- 
	<legend>Login Success</legend>
	 -->
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Login success</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-success">
				<button type="button" class="close" data-dismiss="alert">×</button>
				<strong>Well done!</strong> You successfully logged-into the system.
			</div>
		</div>
	</div>
	<div></div>
	<div></div>
	<a class="btn btn-primary" href="<spring:url value="login.html"/>">Login
		as different user?</a>

	<div class="container-fluid">
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/userdb" user="root" password="" />

	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM users;
    </sql:query>

	<div align="center">
		<table border="1" cellpadding="5" class="table table-striped">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email Address</th>
				<th>Phone Number</th>
			</tr>
			<c:forEach var="user" items="${listUsers.rows}">
				<tr>
					<td><c:out value="${user.firstName}" /></td>
					<td><c:out value="${user.lastName}" /></td>
					<td><c:out value="${user.emailAddress}" /></td>
					<td><c:out value="${user.phoneNumber}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</div>





</body>
</html>