<html>

<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">
body {
	background-color: #EEEEEE;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.shadoe {
	box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .15) !important;
}

.roundy {
	border-radius: 0px;
}

.form-gap {
	padding-top: 70px;
}
</style>
</head>

<body>
	<div class="form-gap"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-body shadoe roundy">
						<div class="text-center">
							<h3>
								<i class="fa fa-lock fa-3x"></i>
							</h3>
							<h2 class="text-center">Enter OTP</h2>
							<%
							if (request.getAttribute("message") != null) {
								out.print("<p class='text-danger ml-1'>" + request.getAttribute("message") + "</p>");
							}
							%>

							<div class="panel-body">

								<form id="register-form" action="ValidateOtp" role="form"
									autocomplete="off" class="form" method="post">

									<div class="form-group">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="glyphicon glyphicon-envelope color-blue"></i></span> <input
												id="opt" name="otp" placeholder="Enter OTP"
												class="form-control" type="text" required="required">
										</div>
									</div>
									<div class="form-group">
										<input name="recover-submit" class="btn btn-lg btn-block"
											value="Reset Password" type="submit"
											style="background-color: black; color: white; border-radius: 0%;">
									</div>

									<input type="hidden" class="hide" name="token" id="token"
										value="">
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="text-center" style="margin-top: 80px;">
		<p>Problems Or Questions? Call us at 077567832</p>
		<p>
			or Email <u>weenalk678@gmail.com</u>
		</p>
		<p>&copy; WeenaNadha 45/0, St.Peters Street, Colombo.</p>
	</div>
</body>

</html>