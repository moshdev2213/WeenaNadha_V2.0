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

  <!-- Page Preloder -->
  <div id="preloder">
    <div class="d-flex justify-content-center"
      style="position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%);">
      <div class="spinner-border text-dark align-content-center" style="width: 3rem; height: 3rem; " role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>
  </div>
  <!-- ends herer -->

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
        <form action="#">
          <div class="row">
            <!-- First Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="firstName" type="text" name="firstname" placeholder="First Name"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Last Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="lastName" type="text" name="lastname" placeholder="Last Name"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Middle Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="maname" type="email" name="mname" placeholder="Middle Name"
                class="form-control border-left-0 border-md" />
            </div>
            <!-- User Name -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-user text-light"></i>
                </span>
              </div>
              <input id="username" type="text" name="username" placeholder="User Name"
                class="form-control border-left-0 border-md" />
            </div>
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

            <!-- Phone Number -->
            <div class="input-group col-lg-12 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-phone-square text-light"></i>
                </span>
              </div>
              <select id="countryCode" name="countryCode" style="max-width: 80px"
                class="custom-select spannyy h-100 font-weight-bold text-muted">
                <option class="lighty" value="">+94</option>
              </select>
              <input id="phoneNumber" type="tel" name="phone" placeholder="Phone Number" class="form-control pl-3" />
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

            <!-- <div class="input-group col-lg-12 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa-brands fa-black-tie text-light"></i>
                </span>
              </div>
              <select id="job" name="jobtitle" class="form-control custom-select spannyy">
                <option class="" value="">Choose your job</option>
                <option value="">Designer</option>
                <option value="">Developer</option>
                <option value="">Manager</option>
                <option value="">Accountant</option>
              </select>
            </div> -->

            <!-- Password -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-lock text-light"></i>
                </span>
              </div>
              <input id="password" type="password" name="password" placeholder="Password"
                class="form-control border-left-0 border-md" />
            </div>

            <!-- Password Confirmation -->
            <div class="input-group col-lg-6 mb-4">
              <div class="input-group-prepend">
                <span class="input-group-text px-4 spannyy">
                  <i class="fa fa-lock text-light"></i>
                </span>
              </div>
              <input id="passwordConfirmation" type="password" name="passwordConfirmation"
                placeholder="Confirm Password" class="form-control border-left-0 border-md" />
            </div>

            <!-- Submit Button -->
            <div class="form-group col-lg-12 mx-auto mb-0">
              <a href="#" class="btn btn-light btn-block py-2">
                <span class="font-weight-bold">Create your account</span>
              </a>
            </div>

            <!-- Divider Text -->
            <div class="form-group col-lg-12 mx-auto d-flex align-items-center my-4">
              <div class="border-bottom w-100 ml-5"></div>
              <span class="px-2 small text-muted font-weight-bold text-muted">OR</span>
              <div class="border-bottom w-100 mr-5"></div>
            </div>

            <!-- Social Login -->
            <!-- <div class="form-group col-lg-12 mx-auto">
                <a href="#" class="btn btn-primary btn-block py-2 btn-facebook">
                  <i class="fa-brands fa-facebook-f mr-2"></i>
                  <span class="font-weight-bold">Continue with Facebook</span>
                </a>
                <a href="#" class="btn btn-primary btn-block py-2 btn-twitter">
                  <i class="fa-brands fa-twitter mr-2"></i>
                  <span class="font-weight-bold">Continue with Twitter</span>
                </a>
              </div> -->

            <!-- Already Registered -->
            <div class="text-center w-100">
              <p class="text-muted font-weight-bold">
                Already Registered?
                <a href="login.jsp" class="text-primary ml-2">Login</a>
              </p>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script src="js/jquery-3.3.1.min.js"></script>
  <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
</body>

</html>