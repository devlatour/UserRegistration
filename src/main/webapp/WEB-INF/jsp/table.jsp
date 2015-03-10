<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background: url(assets/img/grey.jpg);
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
<title>login form</title>
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
				<li><a href="/SpringMvcWebApp">Home</a></li>
				<li><a href="signup.html">Signup</a></li>
				<li class="active"><a href="login.html">Login</a></li>
			</ul>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<div class="container">
		<div class="jumbotron">
			<div>
				<h2>Spring Mvc App</h2>
			</div>
		</div>

		<div></div>
	</div>

	<div>
		<c:if test="${not empty objects}">
			<table>
				<c:forEach var="o" items="${objects}">
					<tr>
						<td>${o.emailAddress}</td>
						<td>${o.firstName}</td>
						<td>${o.lastName}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>


</body>
</html>

