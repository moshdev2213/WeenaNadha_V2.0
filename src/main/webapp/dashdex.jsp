

<%@page import="com.weenalk.Modal.*" %>
<%@page import="com.weenalk.DAO.*" %>
<%@page import="com.weenalk.DBcon.*" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<%
	if(session.getAttribute("authadmin")==null){
		response.sendRedirect("login.jsp");
	}
	
	//(admin) syas that it is type casted
	Admin authAdmin = (Admin) request.getSession().getAttribute("authadmin");
	
	
	ProductDao pd = new ProductDao(DbCon.getConnection());
	List<Product> products = pd.getAllProducts();

	UserDao ud = new UserDao(DbCon.getConnection());
	List<User> usr = ud.getUser();
	
	AdminDao admin = new AdminDao(DbCon.getConnection());
	List<Admin> adm = admin.getAdmin();

	CouponDao coupon = new CouponDao(DbCon.getConnection());
	List<Coupon> cpn = coupon.getCoupon();


%>
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
            <nav class="navbar  navbar-dark">
                <a href="dashdex.jsp" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-white">
                        <i class="fa fa-user-edit me-2"></i>SHOPPPER
                    </h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="images/pro/<%=authAdmin!=null?authAdmin.getPropic():"" %>" alt="" style="width: 40px; height: 40px" />
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
                                    <img class="rounded-circle" src="images/pro/<%=authAdmin!=null?authAdmin.getPropic():"" %>" alt=""
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
                                    <img class="rounded-circle" src="images/pro/<%=authAdmin!=null?authAdmin.getPropic():"" %>" alt=""
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
                            <img class="rounded-circle me-lg-2" src="images/pro/<%=authAdmin!=null?authAdmin.getPropic():"" %>" alt=""
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
                                <tr class="text-dark tblconts">
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
                            <%
                            
                            if(!usr.isEmpty()){
                            	int k=0;
                            	for(User u:usr){%>
                                    <tr class="tblconts">
                                        <th scope="row">
                                        	<img id="myImg" class="rounded-circle" src="images/pro/<%=u.getPropic() %>" alt="pic">
                                        </th>
                                        <td><%=u.getFname() %></td>
                                        <td><%=u.getLname() %></td>
                                        <td><%=u.getEmail() %></td>
                                        <td><%=u.getUsername() %></td>
                                        <td><%=u.getTel() %></td>
                                        <td><%=u.getCompany() %></td>
                                        <td>
                                            <a class="btn btn-sm text-white bg-bk shadow" href="">Remove</a>
                                        </td>
                                    </tr>
                               
                            		<%k=k+1;
                            		if(k==5)
                            			break;
                            	}
                            }
                            %>
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
                                <tr class="text-dark tblconts">
                                    <th scope="col">ID</th>
                                    <th scope="col">UserName</th>
                                    <th scope="col">Admin_Email</th>
                                    <th scope="col">Telephone</th>
                                    <th scope="col">Code</th>
                                    <th scope="col">Role</th>
                                    <th scope="col">About</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                            <%
                            
	                            if(!adm.isEmpty()){
	                            	int k=0;
	                            	
	                            	for(Admin a:adm){%>
	                                    <tr class="tblconts">
			                            	 <th scope="row">
		                                 		<img id="myImg" class="rounded-circle" src="images/pro/<%=a.getPropic() %>" alt="pic">
		                                 	</th>
		                                    <td><%=a.getUsername() %></td>
		                                    <td><%=a.getEmail() %></td>
		                                    <td><%=a.getTel() %></td>
		                                    <td><%=a.getCode() %></td>
		                                    <td><%=a.getRole() %></td>
		                                    <td><%=a.getAbout() %></td>
		                                   
                               		   </tr>
	                               
	                            		<%k=k+1;
	                            		if(k==5)
	                            			break;
	                            	}
	                            }
	                          %>
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
                                        <tr class="text-dark tblconts">
                                            <th  scope="col">ID</th>
                                            <th  scope="col">Name</th>
                                            <th  scope="col">Value</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <%
                                         	if(!cpn.isEmpty()){
				                            	int k=0;
				                            	for(Coupon c:cpn){%>
				                                    <tr class="tblconts">
						                            	<th scope="row"><%=c.getCouponid() %></th>
					                                    <td><%=c.getCoupon() %></td>
					                                    <td><%=c.getValue() %>%</td>
					                                </tr>
			                               		   <%k=k+1;
				                            		if(k==5)
				                            			break;
				                            	}
				                            }
				                          %>
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
                                        <tr class="text-dark tblconts">
                                            <th scope="col">Image</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                    	if(!products.isEmpty()){
			                            	int k=0;
			                            	for(Product p:products){%>
			                                    <tr class="tblconts">
			                                        <th scope="row">
			                                        	<img id="myImg" class="rounded-circle" src="images/products/<%=p.getImg() %>" alt="pic">
			                                        </th>
			                                      	<td class="tblconts"><%=p.getName() %></td>
			                                        <td class="tblconts"><%=p.getPrice() %></td>
			                                        
			                                    </tr>
			                               		<%k=k+1;
			                            		if(k==5)
			                            			break;
			                            	}
			                            }
			                            %>
                                       
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