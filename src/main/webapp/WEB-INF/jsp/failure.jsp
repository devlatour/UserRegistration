
<body>
	<script src="jquery-1.8.3.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
	
	<div class="panel panel-danger">
		<div class="panel-heading">
			<h3 class="panel-title">Login Failure</h3>
		</div>
		<div class="panel-body">
			<div class="alert alert-dismissable alert-danger">
				<button type="button" class="close" data-dismiss="alert">×</button>
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