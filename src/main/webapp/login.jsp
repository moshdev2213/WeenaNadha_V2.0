<%
	if(session.getAttribute("auth")!=null){
		response.sendRedirect("index.jsp");
	}

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
        integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Favicon -->
    <link href="images/V2.0.png" rel="icon" />

    <link rel="stylesheet" href="css/svg.css" />
    <link rel="stylesheet" href="css/preloader.css" />
    <title>Weena</title>
</head>

<body>
    <style>
        /*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*   
*/
        body {
            /* background-image: url("images/22.png");
            background-size: cover;
            background-repeat: no-repeat; */
            background-color: white;
        }

        #lgo {
            width: 400px;
        }

        @media (max-width: 767.98px) {
            body {
                background-image: none;
            }

            #lgo {
                position: relative;
                top: 5%;
                left: 50%;
                transform: translate(-50%, 5%);
                /* display: none; */
                /* margin-bottom: 90px; */
            }
        }

        @media (max-width: 991.98px) {
            #lgo {
                width: 250px;
            }
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"] {
            box-sizing: border-box;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
            border: none;
            border-bottom: 3px solid rgb(255, 255, 255);
            background-color: black;
            color: rgba(255, 255, 255, 0.7);
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus,
        input[type="tel"]:focus {
            border-bottom: 3px solid rgb(255, 255, 255);
            background-color: black;
            color: white;
        }

        .spannyy {
            border: none;
            border-bottom: 3px solid rgb(255, 255, 255);
            background-color: black;
        }

        .spannyy:focus {
            border-bottom: 3px solid rgb(255, 255, 255);
            border: none;
        }

        .border-md {
            border-width: 2px;
        }

        .btn-facebook {
            background: #ffffff;
            color: black;
            border: none;
        }

        .btn-facebook:hover,
        .btn-facebook:focus {
        	color:black;
            background: #e2e6ea;
        }

        .btn-twitter {
            background: #ffffff;
            color: black;
            border: none;
        }

        .btn-twitter:hover,
        .btn-twitter:focus {
        	color:black;
            background: #e2e6ea;
        }

        /*
*
* ==========================================
* FOR DEMO PURPOSES
* ==========================================
*
*/

        .form-control:not(select) {
            padding: 1.5rem 0.5rem;
        }

        select.form-control {
            height: 52px;
            padding-left: 0.5rem;
        }

        .form-control::placeholder {
            color: rgba(255, 255, 255, 0.5);
            font-weight: bold;
            font-size: 0.9rem;
        }

        .lighty {
            color: rgba(255, 255, 255, 0.5);
            font-weight: bold;
            font-size: 0.9rem;
            background-color: black;
        }

        .lighty:focus {
            background-color: black;
        }

        .form-control:focus {
            box-shadow: none;
        }
    </style>
    <!-- Page Preloder 
    <div id="preloder">
        <div class="d-flex justify-content-center"
            style="position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);">
            <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem; "
                role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
    </div>

    ends herer -->
    <div class="container">
        <div class="row py-4 align-items-center mt-md-5">
            <!-- For Demo Purpose -->
            <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
                <!-- <img src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg" alt=""
                    class="img-fluid mb-3 d-none d-md-block" /> -->
                <img src="images/Weena nadha2.png" id="lgo" alt="" />
                <h1 class="text-black">Login</h1>
                <p class="font-italic text-muted mb-0">
                    Signup to have the maximum superior experince on our site we are
                    awaiting to Serve you
                </p>
                <p class="font-italic text-muted">
                    <a href="#" class="text-muted"> <u>all rights reserved</u></a>
                </p>
            </div>

            <!-- Registeration Form -->
            <div class="col-md-7 col-lg-6 ml-auto p-5 mt-1 rounded shadow-lg" style="background-color: black">
                <form action="LoginServlet" method="POST">
                	
                	<!-- the below set of input field are related to the ip statuses -->
                	<input type="hidden" value="" id="ip" name="ip"/>
					<input type="hidden" value="" id="isp" name="isp" />
					<input type="hidden" value="" id="country" name="country"/>
					<input type="hidden" value="" id="city" name="city"/>
					<input type="hidden" value="" id="region" name="region"/>
					<input type="hidden" value="" id="lat" name="lat"/>
					<input type="hidden" value="" id="long" name="long"/>
					<input type="hidden" value="" id="browser" name="browser"/>
					<input type="hidden" value="" id="version" name="version"/>
					<input type="hidden" value="" id="os" name="os"/>
					<input type="hidden" value="" id="hd" name="description"/>
					<!-- the end of the ip statuses -->
					
					<!-- the session variable thats related to the invalid logins -->
					<input type="hidden" value="<%=request.getAttribute("stat")%>" id="inval" name=""/>
					
                    <div class="row">
                        <!-- Email Address -->
                        <div class="input-group col-lg-12 mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text px-4 spannyy">
                                    <i class="fa fa-envelope text-light"></i>
                                </span>
                            </div>
                            <input id="email" type="email" name="email" placeholder="Email Address"
                                class="form-control border-left-0 border-md" />
                        </div>

                        <!-- Password -->
                        <div class="input-group col-lg-12 mb-4">
                            <div class="input-group-prepend">
                                <span class="input-group-text px-4 spannyy">
                                    <i class="fa fa-lock text-light"></i>
                                </span>
                            </div>
                            <input id="password" type="password" name="password" placeholder="Password"
                                class="form-control border-left-0 border-md" />
                        </div>

                        <!-- Submit Button -->
                        <div class="form-group col-lg-12 mx-auto mb-0">
                        	<button type="submit"  class="btn btn-light btn-block py-2">
                        		<i class="fa fa-sign-in mr-2"></i>
                                <span class="font-weight-bold">Login</span>
                        	</button>
                        </div>

                        <!-- Divider Text -->
                        <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
                            <div class="border-bottom w-100 ml-5"></div>
                            <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
                            <div class="border-bottom w-100 mr-5"></div>
                        </div>

						<!-- Social Login -->
                        <div class="form-group col-lg-12 mx-auto">
                            <a href="AdminLogin.jsp" class="btn btn-primary btn-block py-2 btn-facebook">
                                <i class="fa fa-user mr-2"></i>
                                <span class="font-weight-bold">Admin Login</span>
                            </a>
                        </div>

                        <!-- Social Login -->
                        <div class="form-group col-lg-12 mx-auto">
                            <a href="register.jsp" class="btn btn-primary btn-block py-2 btn-facebook">
                                <i class="fa fa-user mr-2"></i>
                                <span class="font-weight-bold">Signup</span>
                            </a>
                        </div>

                        <!-- Already Registered -->
                        <div class="text-center w-100">
                            <p class="text-muted font-weight-bold">
                                Password?
                                <a href="forgotPassword.jsp" class="text-primary ml-2">forgot password</a>
                            </p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.6/platform.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script type="text/javascript">
    
	    let stat = document.getElementById('inval').value;
	    if( stat=="invalidEmail"){
	    	Swal.fire({
	            title: 'Invalid Email',
	            text: "Please Enter Valid Email!",
	            icon: 'warning',
	            iconColor: '#000000',
	            showCancelButton: false,
	            confirmButtonColor: '#000000',
	            cancelButtonColor: '#616161',
	            confirmButtonText: 'OK'
	          });
	    }
	    if( stat=="invalidPassword"){
	    	Swal.fire({
	            title: 'Invalid Password',
	            text: "Please Enter Valid Password!",
	            icon: 'warning',
	            iconColor: '#000000',
	            showCancelButton: false,
	            confirmButtonColor: '#000000',
	            cancelButtonColor: '#616161',
	            confirmButtonText: 'OK'
	          });
	    }
	    if( stat=="invalidCredentials"){
	    	Swal.fire({
	            title: 'Invalid Credentials',
	            text: "Please Enter Valid Credentials!",
	            icon: 'warning',
	            iconColor: '#000000',
	            showCancelButton: false,
	            confirmButtonColor: '#000000',
	            cancelButtonColor: '#616161',
	            confirmButtonText: 'OK'
	          });
	    }
	    if( stat=="success"){
	    	Swal.fire({
	            title: 'Welcome User',
	            text: "Login Success!",
	            icon: 'success',
	            iconColor: '#000000',
	            showCancelButton: false,
	            confirmButtonColor: '#000000',
	            cancelButtonColor: '#616161',
	            confirmButtonText: 'OK'
	          });
	    }
	   
      $.getJSON('https://ipapi.co/json/', function(data){
        $("#ip").val(data.ip);
        $('#isp').val(data.org);
        $('#country').val(data.country_name);
        $('#city').val(data.city);
        $('#region').val(data.region);
        $('#lat').val(data.latitude);
        $('#long').val(data.longitude);
        $("#gmaps").attr("src", "https://www.google.com/maps?q="+data.latitude+","+data.longitude+"&output=embed");
      })
      
       document.getElementById('browser').value = platform.name;
        document.getElementById('version').value = platform.version;
        document.getElementById('layout').value = platform.layout;
        document.getElementById('os').value = platform.os;
        
        
        
        function times(){
        	let timerInterval
        	Swal.fire({
        	  title: 'We Are Gathering Resources For You !',
        	  icon: 'info',
        	  iconColor:'#282C34',
        	  html: 'Loading Resources  <b></b> .',
        	  timer: 36000,
        	  timerProgressBar: true,
        	  didOpen: () => {
        	    Swal.showLoading()
        	    const b = Swal.getHtmlContainer().querySelector('b')
        	    timerInterval = setInterval(() => {
        	      b.textContent = Swal.getTimerLeft()
        	    }, 100)
        	  },
        	  willClose: () => {
        	    clearInterval(timerInterval)
        	  }
        	}).then((result) => {
        	  /* Read more about handling dismissals below */
        	  if (result.dismiss === Swal.DismissReason.timer) {
        	    console.log('I was closed by the timer')
        	  }
        	})
        }
    </script>
    <!-- preloader -->
    <script src="js/preloader.js"></script>
    <!-- preloader ends script -->
</body>

</html>