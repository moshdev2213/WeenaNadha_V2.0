<!doctype html>
<html>

<head>
	<meta charset='utf-8'>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<title>Snippet - BBBootstrap</title>
	<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
			integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
	<style>
		body {
			background-color: #EEEEEE;
		}

		.placeicon {
			font-family: fontawesome
		}

		.custom-control-label::before {
			background-color: #dee2e6;
			border: #dee2e6
		}
	</style>
</head>

<body oncontextmenu='return false' class='snippet-body'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-social/5.1.1/bootstrap-social.css">
	<div>
		<!-- Container containing all contents -->
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
					<!-- White Container -->
					<div class="container bg-white rounded shadow mt-2 mb-2 px-0">
						<!-- Main Heading -->
						<div class="row justify-content-center align-items-center pt-3">
							<h1>
								<strong>Reset Password</strong>
							</h1>
						</div>
						<div class="pt-3 pb-3">
							<form class="form-horizontal" action="newPassword" method="POST">
								<!-- User Name Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="text" name="password" placeholder="New Password"
											class="form-control border-black-50  rounded-0">
									</div>
								</div>
								<!-- Password Input -->
								<div class="form-group row justify-content-center px-3">
									<div class="col-9 px-0">
										<input type="password" name="confPassword"
											placeholder="Confirm New Password"
											class="form-control border-black-50 rounded-0 ">
									</div>
								</div>

								<!-- Log in Button -->
								<div class="form-group row justify-content-center">
									<div class="col-3 px-3 mt-3">
										<input type="submit" value="Reset"
											class="btn btn-block bg-dark text-white rounded-0">
									</div>
								</div>
							</form>
						</div>
						<!-- Alternative Login -->
						<div class="mx-0 px-0 bg-white">

							<!-- Horizontal Line -->
							<div class="px-4 pt-3">
								<hr>
							</div>
							<!-- Register Now -->
							<div class="pt-2 rounded">
								<div class="row justify-content-center">
									<h5>
										Don't have an Account?<span><a href="#" class="text-danger"> Register
												Now!</a></span>
									</h5>
								</div>
								<div class="row justify-content-center align-items-center pt-4 pb-5">
									<div class="col-4"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center mb-4 mt-4" style="opacity: 0.5;">
		<i class="fa-brands fa-facebook fa-2x opacity-25 p-3"></i>
		<i class="fa-brands fa-twitter fa-2x opacity-25 p-3"></i>
		<i class="fa-brands fa-github fa-2x opacity-25 p-3"></i>
	</div>
	<div class="text-center" style="opacity: 0.5; line-height: 75%;">
		<p>Problems Or Questions? Call us at 077567832</p>
		<p>or Email <u>weenalk678@gmail.com</u></p>
		<p>&copy; WeenaNadha 45/0, St.Peters Street, Colombo.</p>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>

</body>

</html>