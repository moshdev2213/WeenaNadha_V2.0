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
        <!-- <div id="spinner"
            class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-dark" style="width: 3rem; height: 3rem" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
        <!-- Spinner End -->

        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3 bg-bk shadow navclz2">
            <nav class="navbar navbar-dark">
                <a href="dashdex.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-white">
                        <i class="fa fa-user-edit me-2"></i>SHOPPER
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
                    <a href="dashdex.jsp" class="nav-item nav-link active text-dark shadow"><i
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
            <nav class="navbar navbar-expand bg-white navbar-dark sticky-top px-4 py-0 m-xxl-3 m-lg-3 navaclz shadow">
                <a href="dashdex.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
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
                        <div class="dropdown-menu dropdown-menu-end bg-bk border-0 rounded rounded-bottom m-2">
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
                        <div class="dropdown-menu dropdown-menu-end bg-bk border-0 rounded  m-2">
                            <a href="profile.jsp" class="dropdown-item text-white">My Profile</a>
                            <a href="#" class="dropdown-item text-white">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->

            <!-- Blank Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="col-12">
                    <div class="bg-white rounded h-100 p-4 shadow">
                        <div class="d-flex align-items-center justify-content-between mb-2">
                            <h6 class="mb-4">List of Users</h6>
                            <a class="btn btn-sm text-white bg-bk shadow" href="adduser.jsp">Add User</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr class="text-dark tblconts">
                                        <th scope="col">Image</th>
                                        <th scope="col">First Name</th>
                                        <th scope="col">Last Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">Contact_No</th>
                                        <th scope="col">Orders Placed</th>
                                        <th scope="col">Status</th>
                                    </tr>
                                </thead>
                                <tbody >
                                    <tr class="tblconts">
                                        <th scope="row">
                                            <!-- popuh related starts here -->
                                            <img id="myImg" class="rounded-circle" src="images/men.jpg" alt="Snow" />
                                            <!-- The Modal -->
                                            <div id="myModal" class="modal">
                                                <!-- <span class="close">&times;</span> -->
                                                <img class="modal-content" id="img01" />
                                                <!-- <div id="caption"></div> -->
                                            </div>
                                            <!-- the popup related ends here -->
                                        </th>
                                        <td>John</td>
                                        <td>Doe</td>
                                        <td>jhon@email.com</td>
                                        <td>USA</td>
                                        <td>123</td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="#" style="background: #a4a4a9;">Show</a>
                                        </td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="adduser.jsp" style="background: #68686c;">Update</a>
                                            <a class="btn btn-sm text-white" onclick="rmv()" style="background: #191919;" href="#">Remove</a>
                                        </td>
                                    </tr>
                                    <tr class="tblconts">
                                        <th scope="row">
                                            <!-- popuh related starts here -->
                                            <img id="myImg" class="rounded-circle" src="images/user.jpg" alt="Snow" />
                                            <!-- The Modal -->
                                            <div id="myModal" class="modal">
                                                <!-- <span class="close">&times;</span> -->
                                                <img class="modal-content" id="img01" />
                                                <!-- <div id="caption"></div> -->
                                            </div>
                                            <!-- the popup related ends here -->
                                        </th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>mark@email.com</td>
                                        <td>UK</td>
                                        <td>456</td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="#" style="background: #a4a4a9;">Show</a>
                                        </td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="adduser.jsp" style="background: #68686c;">Update</a>
                                            <a class="btn btn-sm text-white" href="#" onclick="rmv()" style="background: #191919;">Remove</a>
                                        </td>
                                    </tr>
                                    <tr class="tblconts">
                                        <th scope="row">3</th>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>jacob@email.com</td>
                                        <td>AU</td>
                                        <td>789</td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="#" style="background: #a4a4a9;">Show</a>
                                        </td>
                                        <td>
                                            <a id="" class="btn btn-sm text-white" href="adduser.jsp" style="background: #68686c;">Update</a>
                                            <a class="btn btn-sm text-white" href="#" onclick="rmv()" style="background: #191919;">Remove</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
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
    <script src="js/popup.js"></script>
     <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
  <script>
    function rmv(){
      Swal.fire({
				  title: 'Are you sure?',
				  text: "You won't be able to revert this!",
				  icon: 'warning',
				  iconColor:'#000000',
				  showCancelButton: true,
				  confirmButtonColor: '#000000',
				  cancelButtonColor: '#616161',
				  confirmButtonText: 'Yes, delete it!'	
				}).then((result) => {
					  if (result.isConfirmed) {
						    Swal.fire({
						    	title: 'Deleted!',
								  text: 'Your file has been deleted.',
								  icon:  'success',
								  iconColor:'#000000',
								  confirmButtonColor: '#000000'
						    }).then(()=>{
								setTimeout(()=>{
									// window.location="sweetServlet";
								},500);
							})
						  }
						})
		}
  </script>
    <!-- sweetalert starts-->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- swetalertends -->
   <!-- below is the ween nadha -->
   <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
</body>

</html>