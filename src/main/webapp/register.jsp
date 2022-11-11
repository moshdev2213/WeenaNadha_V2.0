<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <!-- Favicon -->
  <link href="images/V2.0.png" rel="icon" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />

  <link rel="stylesheet" href="css/svg.css">
  <link rel="stylesheet" href="css/preloader.css">
  <title>Weena</title>
</head>

<body>
  <style>
 
 	input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus,
textarea:-webkit-autofill:active,
select:-webkit-autofill,
select:-webkit-autofill:hover,
select:-webkit-autofill:focus,
select:-webkit-autofill:active {
    -webkit-box-shadow: 0 0 0 1000px white inset !important;
}
 	
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
      background: #314879;
    }

    .btn-twitter {
      background: #ffffff;
      color: black;
      border: none;
    }

    .btn-twitter:hover,
    .btn-twitter:focus {
      background: #1799e4;
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
      /* background-color: black; */
    }

    .form-control:focus {
      background-color: black;
      color: white;
      border-bottom: 3px solid rgb(255, 255, 255);
    }

    select.form-control {
      height: 52px;
      padding-left: 0.5rem;
      background-color: black;
      color: rgba(255, 255, 255, 0.7);
      transition: 0.5s;
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
      <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem; " role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
  </div>
   ends herer -->

  <div class="container">
    <div class="row py-4 align-items-center">
      <!-- For Demo Purpose -->
      <div class="col-md-5 pr-lg-5 mb-5 mb-md-0">
        <!-- <img src="https://bootstrapious.com/i/snippets/sn-registeration/illustration.svg" alt=""
                    class="img-fluid mb-3 d-none d-md-block" /> -->
        <img src="images/Weena nadha2.png" id="lgo" alt="" />
        <h1 class="text-black">Create Account</h1>
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
        <form action="RegistrationServlet" autocomplete="off" method="POST">
          <div class="row">
            <!-- First Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="firstName" type="text" name="firstname" placeholder="FirstName"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Last Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="lastName" type="text" name="lastname" placeholder="LastName"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Middle Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="maname" type="text" name="mname" placeholder="Middle Name"
                class="form-control border-left-0 border-md" />
            </div>
            <!-- User Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="username" required type="text" name="username" placeholder="User Name"
                class="form-control border-left-0 border-md" />
            </div>
            <!-- Email Address -->
            <div class="input-group col-lg-12 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-envelope text-light"></i>
                </span>
              </div>
              <input id="email" type="email" required name="email" placeholder="Email Address"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Phone Number -->
            <div class="input-group col-lg-12 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-phone-square text-light"></i>
                </span>
              </div>
              <select id="countryCode" name="countryCode" style="max-width: 80px"
                class="custom-select spannyy h-100 font-weight-bold text-muted">
                <option class="lighty" value="+94">+94</option>
              </select>
              <input id="phoneNumber" required pattern="[1-7]{1}[0-9]{9}" title="Phone number with 1-7 and remaing 9 digit with 0-9" type="tel" name="phone" placeholder="Phone Number" class="form-control pl-3" />
            </div>
          
            <!-- Job -->

            <div class="input-group col-lg-12 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa-brands fa-black-tie text-light"></i>
                </span>
              </div>
              <input id="job" type="text" name="job" placeholder="Enter Your Job"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Password -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-lock text-light"></i>
                </span>
              </div>
              <input pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$" title="8 Digit Password With a,A,9,@" id="password" type="password" name="password" placeholder="Password"
                class="form-control border-left-0 border-md" required/><i class="fa-solid fa-eye text-light" style="position:relative; top:18px; left:-22px; z-index:999;" onclick="togglePassword()"></i>
            </div>

            <!-- Password Confirmation -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-lock text-light"></i>
                </span>
              </div>
              <input pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$" title="8 Digit Password With a,A,9,@" id="passwordConfirmation" type="password" name="passwordConfirmation"
                placeholder="Confirm Password" class="form-control border-left-0 border-md" required/><i class="fa-solid fa-eye text-light" style="position:relative; top:18px; left:-22px; z-index:999;" onclick="togglepasswordConfirmation()"></i> 
            </div>
            <!-- Submit Button -->
            <div class="form-group col-lg-12 mx-auto mb-0">
            	<button type="submit" class="btn btn-light btn-block py-2">
            		<span class="font-weight-bold">Create your account</span>
            	</button>
            </div>
          </div>
        </form>
        <input type="hidden" value="<%=request.getAttribute("registering")%>" id="inval" name=""/>
         <!-- Divider Text -->
            <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
              <div class="border-bottom w-100 ml-5"></div>
              <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
              <div class="border-bottom w-100 mr-5"></div>
            </div>
        <!-- Already Registered -->
            <div class="text-center w-100">
              <p class="text-muted font-weight-bold">
                Already Registered?
                <a href="login.jsp" class="text-primary ml-2">Login</a>
              </p>
            </div>
      </div>
    </div>
  </div>
  <script src="js/jquery-3.3.1.min.js"></script>
  <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
  <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/platform/1.3.6/platform.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    function togglePassword() {
    	  var element = document.getElementById("password");
    	  element.type = element.type == "password" ? "text" : "password";
    	}
    function togglepasswordConfirmation() {
  	  var element = document.getElementById("passwordConfirmation");
  	  element.type = element.type == "password" ? "text" : "password";
  	}
    let stat = document.getElementById('inval').value;
    if( stat=="invalidfname"){
    	Swal.fire({
            title: 'Invalid FirstName',
            text: "Please Enter Valid FirstName!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    if( stat=="invalidmname"){
    	Swal.fire({
            title: 'Invalid MiddleName',
            text: "Please Enter Valid MiddleName!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    if( stat=="invalidlname"){
    	Swal.fire({
            title: 'Invalid LastName',
            text: "Please Enter Valid LastName!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    if( stat=="invalidname"){
    	Swal.fire({
            title: 'Invalid UserName',
            text: "Please Enter Valid UserName!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
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
    if( stat=="invalidpwd"){
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
    if( stat=="invalidreupwd"){
    	Swal.fire({
            title: 'Password MissMatch',
            text: "Please Enter Password Correctly!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    if( stat=="invalidnumber"){
    	Swal.fire({
            title: 'Invalid Number',
            text: "Please Enter Valid Number!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    if( stat=="invalidlength"){
    	Swal.fire({
            title: 'Number Not Valid',
            text: "Please Enter Valid Number!",
            icon: 'warning',
            iconColor: '#000000',
            showCancelButton: false,
            confirmButtonColor: '#000000',
            cancelButtonColor: '#616161',
            confirmButtonText: 'OK'
          });
    }
    </script>
</body>

</html>