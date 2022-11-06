<%
	if(session.getAttribute("authadmin")==null){
		response.sendRedirect("login.jsp");
	}

%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Weena</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicon -->
    <link href="images/V2.0.png" rel="icon" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
        rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/dashboot.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="css/dashstyle.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/clock.css">

    <link rel="stylesheet" href="css/dclock.css">
     <!-- svg and preloader css -->
  <link rel="stylesheet" href="css/svg.css">
  <link rel="stylesheet" href="css/preloader.css">
  <!-- ends -->
</head>

<body>
     <!-- Page Preloder -->
     <!-- <div id="preloder">
        <div class="mx-auto align-middle" style="width: 400px">
            <svg width="462" height="278" viewBox="0 0 462 278" fill="none" xmlns="http://www.w3.org/2000/svg" id="ll">
                <path
                    d="M293.724 230.302C293.724 237.163 288.17 242.729 281.318 242.729H280.542C273.695 242.729 268.141 237.163 268.141 230.302V47.9844C268.141 41.1286 273.695 35.5625 280.542 35.5625H281.318C288.17 35.5625 293.724 41.1289 293.724 47.9844V230.302Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M333.13 195.188C333.13 201.605 327.931 206.813 321.521 206.813C315.111 206.813 309.911 201.605 309.911 195.188V83.1042C309.911 76.6814 315.111 71.4792 321.521 71.4792C327.931 71.4792 333.13 76.6814 333.13 83.1042V195.188Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M370.172 225.969C370.172 231.517 365.681 236.016 360.135 236.016C354.595 236.016 350.104 231.517 350.104 225.969V52.3229C350.104 46.7747 354.595 42.2761 360.135 42.2761C365.681 42.2761 370.172 46.775 370.172 52.3229V225.969Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M404.849 177.031C404.849 182.147 400.707 186.292 395.604 186.292C390.497 186.292 386.359 182.147 386.359 177.031V101.255C386.359 96.1392 390.497 91.9948 395.604 91.9948C400.707 91.9948 404.849 96.1395 404.849 101.255V177.031Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M435.583 164.406C435.583 168.648 432.149 172.089 427.917 172.089C423.684 172.089 420.25 168.648 420.25 164.406V113.885C420.25 109.645 423.684 106.208 427.917 106.208C432.15 106.208 435.583 109.645 435.583 113.885V164.406Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M460.016 152.958C460.016 156.33 457.29 159.062 453.922 159.062C450.564 159.062 447.828 156.329 447.828 152.958V125.333C447.828 121.959 450.562 119.234 453.922 119.234C457.291 119.234 460.016 121.958 460.016 125.333V152.958Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M180.453 242.729C173.606 242.729 168.047 237.163 168.047 230.302V47.9844C168.047 41.1291 173.606 35.5625 180.453 35.5625H181.229C188.076 35.5625 193.63 41.1286 193.63 47.9844V230.302C193.63 237.163 188.076 242.729 181.229 242.729H180.453Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M140.25 206.813C133.84 206.813 128.641 201.605 128.641 195.188V83.1042C128.641 76.6814 133.84 71.4792 140.25 71.4792C146.66 71.4792 151.859 76.6814 151.859 83.1042V195.188C151.859 201.605 146.66 206.813 140.25 206.813Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M101.635 236.016C96.09 236.016 91.5989 231.517 91.5989 225.969V52.3229C91.5989 46.775 96.09 42.2761 101.635 42.2761C107.175 42.2761 111.667 46.7747 111.667 52.3229V225.969C111.667 231.517 107.175 236.016 101.635 236.016Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M66.1667 186.292C61.064 186.292 56.9219 182.147 56.9219 177.031V101.255C56.9219 96.1395 61.064 91.9948 66.1667 91.9948C71.2742 91.9948 75.4115 96.1392 75.4115 101.255V177.031C75.4115 182.147 71.2742 186.292 66.1667 186.292Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M33.8542 172.089C29.6212 172.089 26.1823 168.647 26.1823 164.406V113.885C26.1823 109.646 29.6204 106.208 33.8542 106.208C38.088 106.208 41.5261 109.646 41.5261 113.885V164.406C41.5261 168.647 38.0872 172.089 33.8542 172.089Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M248.406 264.24C248.406 271.106 242.852 276.667 236.005 276.667H225.771C218.919 276.667 213.37 271.106 213.37 264.24V14.0469C213.37 7.18593 218.919 1.625 225.771 1.625H236.005C242.852 1.625 248.406 7.18618 248.406 14.0469V264.24Z"
                    stroke="black" stroke-width="2" />
                <path
                    d="M7.84373 159.062C4.48174 159.062 1.75519 156.33 1.75519 152.958V125.333C1.75519 121.958 4.4803 119.234 7.84373 119.234C11.2128 119.234 13.9375 121.958 13.9375 125.333V152.958C13.9375 156.33 11.2114 159.062 7.84373 159.062Z"
                    stroke="black" stroke-width="2" />
            </svg>
        </div>
    </div> -->
    <!-- ends herer -->
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <!-- <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-dark" style="width: 3rem; height: 3rem" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
        <!-- Spinner End -->

        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3 bg-bk shadow navclz2">
            <nav class="navbar  navbar-dark">
                <a href="dashdex.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-white">
                        <i class="fa fa-user-edit me-2"></i>SHOPPPER
                    </h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="images/user.jpg" alt="" style="width: 40px; height: 40px" />
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0 text-white">Jhon Doe</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="dashdex.jsp" class="nav-item nav-link active shadow text-dark"><i
                            class="fa fa-tachometer-alt me-2 text-white"></i>Dashboard</a>
                    <a href="profile.jsp" class="nav-item nav-link shadow"><i class="fa fa-user me-2 text-white"></i>Profile</a>
                    <a href="index.jsp" class="nav-item nav-link shadow"><i class="fa fa-home me-2 text-white"></i>Home</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->

        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-white navbar-dark sticky-top px-4 py-0 m-xxl-3 m-lg-3 navaclz shadow" >
                <a href="dashdex.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit text-white"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0 bg-bk rounded shadow">
                    <i class="fa fa-bars text-white"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <i class="fa fa-search" ></i>
                    <input class="form-control bg-white border-0" type="search" placeholder="Search" />
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-bk text-white-50 border-0 rounded rounded-bottom m-2">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px" />
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider" />
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px" />
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider" />
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="images/user.jpg" alt=""
                                        style="width: 40px; height: 40px" />
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0 text-white">Jhon send you a message</h6>
                                        <small class="text-white-50">15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider" />
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
                                style="width: 40px; height: 40px" />
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-bk border-0 rounded rounded-bottom m-2">
                            <a href="profile.jsp" class="dropdown-item text-white">My Profile</a>
                            <a href="LogoutServlet" class="dropdown-item text-white">Log Out</a>
                            <a href="login.jsp" class="dropdown-item text-white">Login</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

            <!-- Sale & Revenue Start -->
            <div class="container-fluid pt-4 px-4 ">
                <div class="row g-4">
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-white rounded d-flex align-items-center justify-content-between p-4 shadow">
                            <i class="fa fa-chart-line fa-3x i-wt bg-bk p-2 rounded shadow navclz3"></i>
                            <div class="ms-3">
                                <p class="mb-2 h4">Today Sale</p>
                                <h6 class="mb-0 text-black-50">$1234</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-white rounded d-flex align-items-center justify-content-between p-4 shadow">
                            <i class="fa fa-chart-bar fa-3x i-wt bg-bk p-2 rounded shadow navclz3"></i>
                            <div class="ms-3">
                                <p class="mb-2 h4">Total Sale</p>
                                <h6 class="mb-0 text-black-50">$1234</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-white rounded d-flex align-items-center justify-content-between p-4 shadow">
                            <i class="fa fa-chart-area fa-3x i-wt bg-bk p-2 rounded shadow navclz3"></i>
                            <div class="ms-3">
                                <p class="mb-2 h5">Today Revenue</p>
                                <h6 class="mb-0 text-black-50">$1234</h6>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-xl-3">
                        <div class="bg-white rounded d-flex align-items-center justify-content-between p-4 shadow">
                            <i class="fa fa-chart-pie fa-3x i-wt bg-bk p-2 rounded shadow navclz3"></i>
                            <div class="ms-3">
                                <p class="mb-2 h5">Total Revenue</p>
                                <h6 class="mb-0 text-black-50">$1234</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sale & Revenue End -->

            <!-- Sales Chart Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4 ">
                    <div class="col-sm-12 col-xl-6">
                        <div class="h-100 bg-white text-center rounded p-4 shadow">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="mb-0">Worldwide Sales</h6>
                                <!-- <a href="">Show All</a> -->
                            </div>
                            <canvas id="worldwide-sales"></canvas>
                        </div>
                    </div>
                    <div class="col-sm-12 col-xl-6">
                        <div class="h-100 bg-white text-center rounded p-3 p-xxl-5 shadow">
                            <!-- clock begins -->
                            <div class="clock mx-auto">
                                <div class="hour">
                                    <div class="hr" id="hr"></div>
                                </div>
                                <div class="min">
                                    <div class="mn" id="mn"></div>
                                </div>
                                <div class="sec">
                                    <div class="sc" id="sc"></div>
                                </div>
                            </div>
                            <script type="text/javascript">
                                const deg = 6;
                                const hr = document.querySelector("#hr");
                                const mn = document.querySelector("#mn");
                                const sc = document.querySelector("#sc");
                                setInterval(() => {
                                    let day = new Date();
                                    let hh = day.getHours() * 30;
                                    let mm = day.getMinutes() * deg;
                                    let ss = day.getSeconds() * deg;

                                    hr.style.transform = `rotateZ(${hh + mm / 12}deg)`;
                                    mn.style.transform = `rotateZ(${mm}deg)`;
                                    sc.style.transform = `rotateZ(${ss}deg)`;
                                });
                            </script>
                            <!-- clock ends -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Sales Chart End -->

            <!-- Recent Sales Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-white text-center rounded p-4 shadow">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">List Of Users</h6>
                        <a href="list_users.jsp">Show All</a>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-start align-middle table-borderless table-hover mb-0">
                            <thead>
                                <tr class="text-dark">
                                    <th scope="col">ID</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Contact_No</th>
                                    <th scope="col">Occupation</th>
                                    <th scope="col">Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>Member</td>
                                    <td>
                                        <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>Member</td>
                                    <td>
                                        <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>Member</td>
                                    <td>
                                        <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>Member</td>
                                    <td>
                                        <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>Member</td>
                                    <td>
                                        <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Recent Sales End -->

            <!-- Recent Sales Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-white text-center rounded p-4 shadow">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <h6 class="mb-0">List Of Admins</h6>
                        <a href="list_admin.jsp">Show All</a>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-start align-middle table-borderless table-hover mb-0">
                            <thead>
                                <tr class="text-dark">
                                    <th scope="col">ID</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Admin_Email</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Salary</th>
                                    <th scope="col">Position</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>$12k</td>
                                    <td>Manager</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>$12k</td>
                                    <td>Manager</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>$12k</td>
                                    <td>Manager</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>$12k</td>
                                    <td>Manager</td>
                                </tr>
                                <tr>
                                    <th scope="row">5</th>
                                    <td>John</td>
                                    <td>Doe</td>
                                    <td>jhon@email.com</td>
                                    <td>USA</td>
                                    <td>123</td>
                                    <td>$12k</td>
                                    <td>Manager</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <!-- Recent Sales End -->

            <!-- Widgets Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <!-- <div class="col-sm-12 col-md-6 col-xl-4">
                        <div class="h-100 bg-white rounded p-4 shadow">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <h6 class="mb-0">Messages</h6>
                                <a href="messages.jsp">Show All</a>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-3">
                                <img class="rounded-circle flex-shrink-0" src="images/user.jpg" alt=""
                                    style="width: 40px; height: 40px" />
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h6 class="mb-0">Jhon Doe</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                    <span>Short message goes here...</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-3">
                                <img class="rounded-circle flex-shrink-0" src="images/user.jpg" alt=""
                                    style="width: 40px; height: 40px" />
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h6 class="mb-0">Jhon Doe</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                    <span>Short message goes here...</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center border-bottom py-3">
                                <img class="rounded-circle flex-shrink-0" src="images/user.jpg" alt=""
                                    style="width: 40px; height: 40px" />
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h6 class="mb-0">Jhon Doe</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                    <span>Short message goes here...</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center pt-3">
                                <img class="rounded-circle flex-shrink-0" src="images/user.jpg" alt=""
                                    style="width: 40px; height: 40px" />
                                <div class="w-100 ms-3">
                                    <div class="d-flex w-100 justify-content-between">
                                        <h6 class="mb-0">Jhon Doe</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                    <span>Short message goes here...</span>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    <div class="col-sm-12 col-md-12 col-xl-4">
                        <div class="bg-white rounded h-100 p-4 shadow">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <h6 class="mb-0">Coupons</h6>
                                <a href="coupons.jsp">Show All</a>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-borderless table-hover">
                                    <thead>
                                        <tr class="text-dark">
                                            <th scope="col">Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>John</td>
                                            <td>$12k</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Mark</td>
                                            <td>$12k</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Jacob</td>
                                            <td>$12k</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-12 col-md-6 col-xl-4">
                        <div class="h-100 bg-white rounded p-4 shadow">
                            <div class="d-flex align-items-center justify-content-between mb-4">
                                <h6 class="mb-0">Calender</h6>
                                <!-- <a href="">Show All</a> -->
                            </div>
                            <div id="calender"></div>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-12 col-xl-4">
                        <div class="bg-white rounded h-100 p-4 shadow">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <h6 class="mb-0">Products</h6>
                                <a href="products_table.jsp">Show All</a>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr class="text-dark">
                                            <th scope="col">Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <th scope="row">1</th>
                                            <td>John</td>
                                            <td>$12k</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">2</th>
                                            <td>Mark</td>
                                            <td>$12k</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">3</th>
                                            <td>Jacob</td>
                                            <td>$12k</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Widgets End -->

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