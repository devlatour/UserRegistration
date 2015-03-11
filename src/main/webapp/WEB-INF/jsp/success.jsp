
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body>

	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title">Login Succesful</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-success">
				<button type="button" class="close" data-dismiss="alert">×</button>
				You successfully logged-into the system.
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