<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup</title>
<link href="assets/bootstrap/css/bootstrap.css" rel="stylesheet" />
<link href="assets/datepicker/css/datepicker.css" rel="stylesheet" />
<link href="assets/css/bootstrap-united.css" rel="stylesheet" />

<style>
.green {
	font-weight: bold;
	color: red;
}
.message {
	margin-bottom: 10px;
}

.error {
	color: #ff0000;
	font-size: 0.9em;
	font-weight: bold;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>

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
				<li class="active"><a href="signup.html">Signup</a></li>
				<li><a href="login.html">Login</a></li>
		</div>
		<!-- /.nav-collapse -->
	</div>

	<script src="jquery-1.8.3.js">
		
	</script>

	<script src="bootstrap/js/bootstrap.js">
		
	</script>

	<script src="datepicker/js/bootstrap-datepicker.js">
		
	</script>


	<div class="container">
		<div class="jumbotron">
			<div>
				<h2>Spring Mvc Signup Form</h2>
			</div>
		</div>

		<div></div>
	</div>

	<c:if test="${not empty message}">
		<div class="message green">${message}</div>
	</c:if>

	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="myForm" method="post"
							class="bs-example form-horizontal" commandName="user">
							<fieldset>
								<legend>Spring MVC SignUp Form</legend>

								<div class="form-group">
									<label for="emailAddressInput" class="col-lg-3 control-label">Email
										Address</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="EmailAddress"
											id="emailAddressInput" placeholder="emailAddress" />
										<form:errors path="emailAddress" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="passwordInput" class="col-lg-3 control-label">Password</label>
									<div class="col-lg-9">
										<form:input type="password" class="form-control"
											path="password" id="passwordInput" placeholder="Password" />
										<form:errors path="password" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="firstNameInput" class="col-lg-3 control-label">First
										Name</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="FirstName"
											id="firstNameInput" placeholder="First Name" />
										<form:errors path="firstName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="lastNameInput" class="col-lg-3 control-label">Last
										Name</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control" path="LastName"
											id="lastNameInput" placeholder="Last Name" />
										<form:errors path="lastName" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="dateOfBirthInput" class="col-lg-3 control-label">Date
										of Birth</label>
									<div class="date form_date col-lg-9" data-date-format="mm/dd/yyyy" data-date-viewmode="years">
										<form:input type="text" class="form-control"											
											path="dateOfBirth" id="dateOfBirthInput"
											placeholder="DateOfBirth" />
										<form:errors path="dateOfBirth" cssClass="error" />
									</div>
								</div>

								<div class="form-group">
									<label for="genderInput" class="col-lg-3 control-label">Gender
											</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="gender" id="genderInput"
											placeholder="gender" />
										<form:errors path="Gender" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="phoneNumberInput" class="col-lg-3 control-label">Phone Number
											</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="phoneNumber" id="phoneNumberInput"
											placeholder="phoneNumber" />
										<form:errors path="phoneNumber" cssClass="error" />
									</div>
								</div>
								
								<div class="form-group">
									<label for="altPhoneNumberInput" class="col-lg-3 control-label">Alternate
									Phone Number</label>
									<div class="col-lg-9">
										<form:input type="text" class="form-control"
											path="altPhoneNumber" id="altPhoneNumberInput"
											placeholder="altPhoneNumber" />
										<form:errors path="altPhoneNumber" cssClass="error" />
									</div>
								</div>

								<div class="col-lg-9 col-lg-offset-3">
									<button class="btn btn-default">Cancel</button>

									<button class="btn btn-primary" data-toggle="modal"
										data-target="#themodal">Submit</button>
									<div id="themodal" class="modal fade" data-backdrop="static">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">&times;</button>
													<h3>Signup Form Submission</h3>
												</div>
												<div class="modal-body">
													<p>Are you sure you want to do this?</p>
													<div class="progress progress-striped active">
														<div id="doitprogress" class="progress-bar"></div>
													</div>
												</div>
												<div class="modal-footer">
													<a href="#" class="btn btn-default" data-dismiss="modal">Close</a>
													<input type="submit" value="Yes" id="yesbutton"
														class="btn btn-primary" data-loading-text="Saving.."
														data-complete-text="Saved!">
												</div>
											</div>
										</div>
									</div>

								</div>

							</fieldset>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		$(function() {
			$('#dateOfBirthInput').datepicker();
		});
	</script>

	<script>
		$(function() {
			var yesButton = $("#yesbutton");
			var progress = $("#doitprogress");

			yesButton.click(function() {
				yesButton.button("loading");

				var counter = 0;
				var countDown = function() {
					counter++;
					if (counter == 11) {
						yesButton.button("complete");
					} else {
						progress.width(counter * 10 + "%");
						setTimeout(countDown, 100);
					}
				};
				setTimeout(countDown, 100);
			});

		});
	</script>


</body>
</html>