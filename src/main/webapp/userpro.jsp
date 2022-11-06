<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Weena</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

   <!-- Favicon -->
   <link href="images/V2.0.png" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
        rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/dashboot.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/dashstyle.css" rel="stylesheet">
    <link rel="stylesheet" href="css/dclock.css">
     <!-- svg and preloader css -->
  <link rel="stylesheet" href="css/svg.css">
  <link rel="stylesheet" href="css/preloader.css">
  <!-- ends -->

</head>

<body>
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
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-dark" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->
        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3 bg-bk shadow navclz2">
            <nav class="navbar  navbar-dark">
                <a href="dashdex.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-white "><i class="fa fa-user-edit me-2 text-white"></i>WEENALK</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="images/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0 text-white">Jhon Doe</h6>
                        <span>User</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="userpro.jsp" class="nav-item nav-link active shadow"><i class="fa fa-user me-2 text-white"></i>Profile</a>
                    <a href="orders.jsp" class="nav-item nav-link shadow"><i class="fa fa-truck me-2 text-white"></i>Orders</a>
                    <a href="index.jsp" class="nav-item nav-link shadow"><i class="fa fa-home me-2 text-white"></i>Home</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-white navbar-dark sticky-top px-4 py-0 m-xxl-13 m-lg-3 navaclz shadow">
                <a href="dashdex.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0 bg-bk rounded shadow">
                    <i class="fa fa-bars text-white"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <i class="fa fa-search" ></i>
                    <input class="form-control bg-white border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-bk border-0 rounded  m-2">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="messages.jsp" class="dropdown-item text-center text-white-50">See all message</a>
                        </div>
                    </div>
                    <div class="clocky bg-bk rounded shadow">
                        <div class="display">
                        </div>
                    </div>
                    <script>
                        setInterval(function () {
                            const clocky = document.querySelector(".display");
                            let time = new Date();
                            let sec = time.getSeconds();
                            let min = time.getMinutes();
                            let hr = time.getHours();
                            let day = 'AM';
                            if (hr > 12) {
                                day = 'PM';
                                hr = hr - 12;
                            }
                            if (hr == 0) {
                                hr = 12;
                            }
                            if (sec < 10) {
                                sec = '0' + sec;
                            }
                            if (min < 10) {
                                min = '0' + min;
                            }
                            if (hr < 10) {
                                hr = '0' + hr;
                            }
                            clocky.textContent = hr + ':' + min + ':' + sec + " " + day;
                        });
                    </script>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="images/user.jpg" alt=""
                                style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-bk rounded m-2 shadow">
                            <a href="userpro.jsp" class="dropdown-item text-white">My Profile</a>
                            <a href="#" class="dropdown-item text-white">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Blank Start -->
            <div class="container-fluid pt-4 px-4">
                <div class=" align-items-center justify-content-center mx-0">
                    <div class="row g-4">
                        <div class="col-sm-12 col-xl-4">
                            <div class="card h-100 rounded shadow" >
                                <div class="rounded-top text-white d-flex flex-row"
                                    style="background-color: #191C24; height:200px; background-image: url('images/1.jpg'); background-size: cover;">
                                    <div class="ms-4 mt-5 d-flex flex-column" style="width: 150px;">
                                        <img src="images/testimonial-1.jpg" alt="Generic placeholder image"
                                            class="img-fluid img-thumbnail mt-4 mb-2" style="width: 150px; z-index: 1">
                                        <div class="h-25"></div>
                                    </div>
                                    <div class="ms-3" style="margin-top: 130px;">
                                        <h5>Andy Horwitz</h5>
                                        <p>New York</p>
                                    </div>
                                </div>
                                <div class="p-4 text-white" style="background-color: #191919;">
                                    <div class="d-flex justify-content-evenly text-center py-1">
                                        <div>
                                            <p class="mb-1 h5 text-white">Doctor</p>
                                            <p class="small text-muted mb-0 text-white">WorkArea</p>
                                        </div>
                                        <div class="px-3">
                                            <p class="mb-1 h5 text-white">1026</p>
                                            <p class="small text-muted mb-0">Telephone</p>
                                        </div>
                                        <div>
                                            <p class="mb-1 h5 text-white">@zilla</p>
                                            <p class="small text-muted mb-0">username</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-2 text-black" style="background-color: white; color: black;">
                                    <div class="mb-5">
                                        <p class="lead fw-normal mb-1">About</p>
                                        <div class="p-2" >
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores
                                                facere dolorem consequatur nobis voluptates eveniet, sequi facilis illum
                                                voluptatibus porro?Lorem ipsum dolor sit amet consectetur adip</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-12 col-xl-8">
                            <div class="row mb-2  rounded">
                                <style>
                                    .hvr:focus{
                                        border-bottom: black;
                                        box-shadow: none;
                                    }
                                    .hvr:active{
                                        border-bottom: #191919;
                                    }
                                    .hvr:hover{
                                        color: #191919;
                                        border-bottom: #191919;

                                    }
                                </style>
                                <!-- <a href="#" id="pgg" class="btn hvr rounded-0 col-3">Information</a> -->
                                <button id="pgg1" class="btn hvr rounded-0 col-3" onclick="myFunc()">Security</button>
                                <button id="pgg" class="btn hvr rounded-0 col-3" onclick="myfuncrevert()">Information</button>
                                <button id="pgg2" class="btn hvr rounded-0 col-3" onclick="myfuncadd()">Address</button>
                            </div>
                            <form action="" id="conts">
                                <div class="bg-white rounded h-100 p-4 shadow" >                                
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-6 col-md-6">
                                            <input type="text" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">UserName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-6 col-md-6">
                                            <input type="number" min="0" class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">Phone Number</label>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="mb-3 col-xl-6 col-md-6">
                                            <label for="formFileMultiple" class="form-label text-dark">Profile Picture</label>
                                            <input class="form-control bg-gry border-0 shadow" type="file" id="formFileMultiple"
                                                multiple />
                                        </div>
                                        <div class="mb-3 col-xl-6 col-md-6">
                                            <label for="formFileMultiple" class="form-label text-dark">Cover Image</label>
                                            <input class="form-control bg-gry border-0 shadow" type="file" id="formFileMultiple"
                                                multiple />
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">FirstName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text"  class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">MiddleName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text"  class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">LastName</label>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <input type="text"  class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">Work Area</label>
                                        </div>
                                        
                                    </div>
                                    <div class="form-floating">
                                        <textarea class="form-control bg-gry border-0 shadow" placeholder="Leave a comment here"
                                            id="floatingTextarea" style="height: 150px"></textarea>
                                        <label for="floatingTextarea">About</label>
                                    </div>
                                    <br />
                                    <div class="row g-4 p-lg-3">
                                        <button style="font-size: 16px; background-color: #68686c;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Update 
                                        </button>
                                        <button style="font-size: 16px; background-color: #191919;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Decline
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Blank End -->


                <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-white rounded p-4 shadow">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="index.jsp">WeenaNaadha</a>, All Right Reserved.
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="#">Weenalk</a>
                            
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
            </div>
            <!-- Content End -->
            <script>
                function myFunc(){
                    document.getElementById('conts').innerHTML=`<form action="">
                                </div>
                                <div class="bg-white rounded h-100 p-4 shadow" id="sec">                                
                                    
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <input type="email" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">Old Password</label>
                                            <!-- <label for="floatingSelect">Works with selects</label> -->
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <input type="email" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">New Password</label>
                                            <!-- <label for="floatingSelect">Works with selects</label> -->
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <input type="email" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">Enter New Password Again</label>
                                            <!-- <label for="floatingSelect">Works with selects</label> -->
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row g-4 p-lg-3">
                                        <button style="font-size: 16px; background-color: #68686c;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Update 
                                        </button>
                                        <button style="font-size: 16px; background-color: #191919;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Decline
                                        </button>
                                    </div>
                                </div>
                            </form>`;
                }
                function myfuncrevert(){
                    document.getElementById('conts').innerHTML=`<form action="" id="conts">
                                <div class="bg-white rounded h-100 p-4 shadow" >                                
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-6 col-md-6">
                                            <input type="text" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">UserName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-6 col-md-6">
                                            <input type="number" min="0" class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">Phone Number</label>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="mb-3 col-xl-6 col-md-6">
                                            <label for="formFileMultiple" class="form-label text-dark">Profile Picture</label>
                                            <input class="form-control bg-gry border-0 shadow" type="file" id="formFileMultiple"
                                                multiple />
                                        </div>
                                        <div class="mb-3 col-xl-6 col-md-6">
                                            <label for="formFileMultiple" class="form-label text-dark">Cover Image</label>
                                            <input class="form-control bg-gry border-0 shadow" type="file" id="formFileMultiple"
                                                multiple />
                                        </div>
                                    </div>
                                    <!--  -->
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">FirstName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text"  class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">MiddleName</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <input type="text"  class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">LastName</label>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <input type="text" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">Work Area</label>
                                        </div>
                                        
                                    </div>
                                    <div class="form-floating">
                                        <textarea class="form-control bg-gry border-0 shadow" placeholder="Leave a comment here"
                                            id="floatingTextarea" style="height: 150px"></textarea>
                                        <label for="floatingTextarea">About</label>
                                    </div>
                                    <br />
                                    <div class="row g-4 p-lg-3">
                                        <button style="font-size: 16px; background-color: #68686c;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Update 
                                        </button>
                                        <button style="font-size: 16px; background-color: #191919;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Decline
                                        </button>
                                    </div>
                                </div>
                            </form>`
                }
                function myfuncadd(){
                    document.getElementById('conts').innerHTML=` <form action="" id="conts">
                                <div class="bg-white rounded h-100 p-4 shadow" >                                
                                    <!--  -->
                                    
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-4 col-md-4">
                                            <select class="form-select bg-gry border-0 shadow" id="floatingSelect"
                                                aria-label="Floating label select example">
                                                <option selected>District</option>
                                                <option value="d001">Colombo</option>
                                                <option value="d002">Gampaha</option>
                                                <option value="d003">Kalutara</option>
                                                <option value="d004">Kandy</option>
                                                <option value="d005">Matale</option>
                                                <option value="d006">Nuwara Eliya</option>
                                                <option value="d007">Galle</option>
                                                <option value="d008">Matara</option>
                                                <option value="d009">Hambantota</option>
                                                <option value="d010">Jaffna</option>
                                                <option value="d011">Kilinochchi</option>
                                                <option value="d012">Mannar</option>
                                                <option value="d013">Vavuniya</option>
                                                <option value="d014">Mullativ</option>
                                                <option value="d015">Batticlo</option>
                                                <option value="d016">Ampara</option>
                                                <option value="d017">Trincomalee</option>
                                                <option value="d018">Kurunrgala</option>
                                                <option value="d019">Puttlam</option>
                                                <option value="d020">Anuradhapura</option>
                                                <option value="d021">Polonnaruwa</option>
                                                <option value="d022">Badulla</option>
                                                <option value="d023">Moneragala</option>
                                                <option value="d024">Ratnapura</option>
                                                <option value="d025">Kegalle</option>
                                            </select>
                                            <!-- <label for="floatingSelect">Works with selects</label> -->
                                        </div>
                                        <div class="form-floating mb-3 col-xl-8 col-md-8">
                                            <input type="text" min="0" class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">Street</label>
                                        </div>
                                        
                                    </div>
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-7 col-md-7">
                                            <input type="text" min="0" class="form-control bg-gry border-0 shadow" id="floatingPassword"
                                                placeholder="Password" />
                                            <label style="padding-left: 20px" for="floatingPassword">City</label>
                                        </div>
                                        
                                        <div class="form-floating mb-3 col-xl-3 col-md-3">
                                            <input type="number" min=0 class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">PostalCode</label>
                                        </div>
                                        <div class="form-floating mb-3 col-xl-2 col-md-2">
                                            <input type="number" min=0 class="form-control bg-gry border-0 shadow" id="floatingInput"
                                                placeholder="name@example.com" />
                                            <label style="padding-left: 20px" for="floatingInput">ZipCode</label>
                                        </div>
                                    </div>
                                    <div class="row g-4">
                                        <div class="form-floating mb-3 col-xl-12 col-md-12">
                                            <select class="form-select bg-gry border-0 shadow" id="floatingSelect"
                                                aria-label="Floating label select example">
                                                <option selected>Province</option>
                                                <option value="pv001">Western Province</option>
                                                <option value="pv002">Central Province</option>
                                                <option value="pv003">Southern Province</option>
                                                <option value="pv004">Uva Province</option>
                                                <option value="pv005">Sabaragamuwa Province</option>
                                                <option value="pv006">North Western Province</option>
                                                <option value="pv007">North Central Province</option>
                                                <option value="pv008">Northern Province</option>
                                                <option value="pv009">Eastern Province</option>
                                            </select>
                                            <!-- <label for="floatingSelect">Works with selects</label> -->
                                        </div>
                                    </div>
                                    <br />
                                    <div class="row g-4 p-lg-3">
                                        <button style="font-size: 16px; background-color: #68686c;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Update 
                                        </button>
                                        <button style="font-size: 16px; background-color: #191919;" class="btn btn-sm text-white p-2 col-xl-12">
                                            Decline
                                        </button>
                                    </div>
                                </div>
                            </form>`
                }
            </script>

            <!-- Back to Top -->
            <a href="#" class="btn btn-lg bg-bk btn-lg-square back-to-top"><i class="bi bi-arrow-up text-white"></i></a>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/chart/chart.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/tempusdominus/js/moment.min.js"></script>
        <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="js/dash.js"></script>
         <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
   <!-- below is the ween nadha -->
   <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
   
</body>

</html>