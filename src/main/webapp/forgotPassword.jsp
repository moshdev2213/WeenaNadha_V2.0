<!doctype html>
<html>

<head>
	<meta charset='utf-8'>
	<meta name='viewport' content='width=device-width, initial-scale=1'>
	<title>Forgot PASSWORD</title>
	<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
			integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
			<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js" integrity="sha512-aVKKRRi/Q/YV+4mjoKBsE4x3H+BkegoM/em46NNlCqNTmUYADjBbeNefNxYV7giUp0VxICtqdrbqU7iVaeZNXA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
		<style>
			body {
				background-position: center;
				background-color: #eee;
				background-repeat: no-repeat;
				background-size: cover;
				color: #505050;
				font-family: "Rubik", Helvetica, Arial, sans-serif;
				font-size: 14px;
				font-weight: normal;
				line-height: 1.5;
				text-transform: none
			}

			.forgot {
				background-color: #fff;
				padding: 12px;
				border: 1px solid #dfdfdf
			}

			.padding-bottom-3x {
				padding-bottom: 72px !important
			}

			.card-footer {
				background-color: #fff
			}

			.btn {
				font-size: 13px
			}

			.form-control:focus {
				color: #495057;
				background-color: #fff;
				border-color: #76b7e9;
				outline: 0;
				box-shadow: 0 0 0 0px #28a745
			}
		</style>
</head>

<body oncontextmenu='return false' class='snippet-body'>
	<div class="container padding-bottom-3x mb-1 mt-5">
		<div class="row justify-content-center">
			<div class="col-lg-8 col-md-10">
				<div class="forgot p-3 rounded shadow">
					<h2>Forgot your password?</h2>
					<p>Change your password in three easy steps. This will help you
						to secure your password!</p>
					<ol class="list-unstyled">
						<li><span class="text-primary text-medium">1. </span>Enter name and
							your email address below.</li>
						<li><span class="text-primary text-medium">2. </span>Our
							system will send you an OTP to your email</li>
						<li><span class="text-primary text-medium">3. </span>Enter
							the OTP on the next page</li>
					</ol>
				</div>
				<form class="card mt-4 shadow" action="forgotPassword" method="POST">
					<div class="card-body">
						<div class="form-group">
							<label for="email-for-pass" class="pb-3">Enter your Name</label>
							<input class="form-control rounded-0" type="text" name="name" id="email-for-pass" required>
							<label for="email-for-pass" class="pt-2 pb-3">Enter your email address</label>
							<input class="form-control rounded-0" type="text" name="email" id="email-for-pass" required><small
								class="form-text text-muted">Enter the registered email
								address . Then we'll email a OTP to this address.</small>
						</div>
					</div>
					<div class="card-footer border-0 text-end p-3">
						<button class="btn bg-dark opacity-50 text-white rounded-0 shadow" type="submit">Get New
							Password</button>
						<button class="btn bg-black text-white rounded-0 shadow" type="submit">Back to
							Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="text-center mb-3">
		<i class="fa-brands fa-facebook fa-3x opacity-25 p-3"></i>
		<i class="fa-brands fa-twitter fa-3x opacity-25 p-3"></i>
		<i class="fa-brands fa-github fa-3x opacity-25 p-3"></i>
	</div>
	<div class="text-center opacity-75" style="line-height: 50%;">
		<p>Problems Or Questions? Call us at 077567832</p>
		<p>or Email <u>weenalk678@gmail.com</u></p>
		<p>&copy; WeenaNadha 45/0, St.Peters Street, Colombo.</p>
	</div>
	<!-- <script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script> -->
</body>

</html>