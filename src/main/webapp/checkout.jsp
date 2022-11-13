<%@page import="java.text.DecimalFormat" %>
<%@page import="com.weenalk.DBcon.*" %>
<%@page import="com.weenalk.DAO.*" %>
<%@page import="java.util.*"%>
<%@page import="com.weenalk.Modal.*" %>
<!DOCTYPE html>
<%

	DecimalFormat df = new DecimalFormat("0.00");
	//cart list type beins
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	Coupon cpn = new Coupon();
	cpn= (Coupon)session.getAttribute("cpn");
	List<Cart> cartProduct = null;
	double carttotal=0;
	double tot=0;
	if (cart_list != null) {
		ProductDao pdao = new ProductDao(DbCon.getConnection());
		cartProduct = pdao.getCartProducts(cart_list);
		carttotal = pdao.getTotalCartPrice(cart_list);
		request.setAttribute("cart_list", cart_list);
		request.setAttribute("cart_total", carttotal);
	}	
%>
<html lang="en">

<head>
  <title>Weena</title>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- Favicon -->
  <link href="images/V2.0.png" rel="icon" />

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700" />
  <link rel="stylesheet" href="fonts/icomoon/style.css" />

  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/magnific-popup.css" />
  <link rel="stylesheet" href="css/jquery-ui.css" />
  <link rel="stylesheet" href="css/owl.carousel.min.css" />
  <link rel="stylesheet" href="css/owl.theme.default.min.css" />

  <link rel="stylesheet" href="css/aos.css" />
  <link rel="stylesheet" href="css/style.css" />
  <!-- svg and preloader css -->
  <link rel="stylesheet" href="css/svg.css">
  <link rel="stylesheet" href="css/preloader.css">
  <!-- ends -->
   <!-- header -->
   <link rel="stylesheet" href="css/header.css">
   <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
   <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
   <!-- header ends -->
   <link rel="stylesheet" href="css/dropdown.css">

</head>

<body>
  <style>
    @import url("https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900");
    *{

      font-family: "Poppins";
      font-weight: 400;
      font-size: 16px;
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
  <div class="site-wrap">
    <header>
      <!-- contact content -->
      <div class="header-content-top">
        <div class="content">
          <span><i class="fas fa-phone-square-alt"></i> (00)0000-0000</span>
          <span><i class="fas fa-envelope-square"></i>email@email.com.br</span>
        </div>
      </div>
      <!-- / contact content -->
      <div class="cntnr">
        <!-- logo -->
        <!-- <strong class="logo"><i class="fas fa-heart"></i></strong> -->
        <a href="index.jsp">
          <div class="lgo" style="width: 100px;
                      height: 50px;
                      background-image: url('images/V2.0.png');
                      background-repeat: no-repeat;
                      background-size: contain;
                      position: relative;
                      left: 20px;">
          </div>
        </a>
        <!-- open nav mobile -->

        <!--search -->
        <label class="open-search" for="open-search">
          <i class="fas fa-search"></i>
          <input class="input-open-search" id="open-search" type="checkbox" name="menu" />
          <div class="search">
            <button class="button-search"><i class="fas fa-search"></i></button>
            <input type="text" placeholder="What are you looking for?" class="input-search" />
          </div>
        </label>
        <!-- // search -->
        <nav class="nav-content">
          <!-- nav -->
          <ul class="nav-content-list">
            <li class="nav-content-item account-login">
              <div class="downyy">
                <span class="login-text text-light">Hello, Sign in <strong>Create Account</strong></span> <span
                  class="item-arrow"></span>
                <!-- submenu -->
                <div id="mydrop" class="downyy-content">
                  <a href="userpro.jsp">My profile</a>
                  <a href="#">Logout</a>
                  <a href="login.jsp">Login</a>
                </div>

              </div>
            </li>
            <li class="nav-content-item login-text">
              <div style="width: 35px;
                                height: 35px;
                                border-radius: 100px;
                                background-image: url('images/bpro.png');
                                background-repeat: no-repeat;
                                background-size: cover;
                                position: relative;
                                top: -1px;
                                left: 5px;" class="downyy">
                <!-- submenu -->
                <!-- <div id="mydrop" class="downyy-content">
                  <a href="#">My profile</a>
                  <a href="#">Logout</a>
                </div> -->
                <!-- submenu end -->
              </div>
            </li>
            <li class="nav-content-item"><a class="nav-content-link" href="whishlist.jsp"><i
                  class="fas fa-heart text-light"></i><span class="badge badge-dark rounded-circle"
                  style="position: absolute; top: 1%;">1</span></a></li>
            <li class="nav-content-item"><a class="nav-content-link" href="cart.jsp"><i
                  class="fas fa-shopping-cart text-light"></i><span class="badge badge-dark rounded-circle"
                  style="position: absolute; top: 1%;">1</span></a></li>
            <!-- call to action -->
          </ul>
        </nav>
      </div>
      <!-- nav navigation commerce -->
      <div class="naw-container">
        <nav class="all-category-nav">
          <label class="open-menu-all" for="open-menu-all">
            <input class="input-menu-all" id="open-menu-all" type="checkbox" name="menu-open" />
            <span class="all-navigator"><i class="fas fa-bars"></i> <span>All category</span> <i
                class="fas fa-angle-down"></i>
              <i class="fas fa-angle-up"></i>
            </span>

            <ul class="all-category-list">
              <li class="all-category-list-item"><a href="dashdex.jsp" class="all-category-list-link">Dashboard<i
                    class="fas fa-angle-right"></i></a>
                <!-- <div class="category-second-list">
                  <ul class="category-second-list-ul">
                    <li class="category-second-item"><a href="#">Iphone 10</a></li>
                    <li class="category-second-item"><a href="#">Galaxy Note 10</a></li>
                    <li class="category-second-item"><a href="#">Motorola One </a></li>
                    <li class="category-second-item"><a href="#">Galaxy A80 </a></li>
                    <li class="category-second-item"><a href="#">Galaxy M </a></li>
                    <li class="category-second-item"><a href="#">Huaway P30 </a></li>
                  </ul>

                  <div class="img-product-menu"><img src="https://i.ibb.co/Vvndkmy/banner.jpg"></div>
                </div> -->
              </li>
              <li class="all-category-list-item"><a href="#" class="all-category-list-link">Guitar <i
                    class="fas fa-angle-right"></i></a></li>
              <li class="all-category-list-item"><a href="#" class="all-category-list-link">Keyboard<i
                    class="fas fa-angle-right"></i></a></li>
              <li class="all-category-list-item"><a href="#" class="all-category-list-link">Piano<i
                    class="fas fa-angle-right"></i></a></li>
              <li class="all-category-list-item"><a href="#" class="all-category-list-link">Drum<i
                    class="fas fa-angle-right"></i></a></li>
              <li class="all-category-list-item"><a href="" class="all-category-list-link">Flute<i
                    class="fas fa-angle-right"></i></a></li>

            </ul>
          </label>

        </nav>
        <nav class="featured-category">
          <ul class="nav-row">
            <li class="nav-row-list"><a href="about.jsp" class="nav-row-list-link">About Us</a></li>
            <li class="nav-row-list"><a href="contact.jsp" class="nav-row-list-link">Contact Us</a></li>
            <li class="nav-row-list"><a href="dashdex.jsp" class="nav-row-list-link">Dashboard</a></li>
            <li class="nav-row-list"><a href="products.jsp" class="nav-row-list-link">Shop</a></li>
            <li class="nav-row-list"><a href="#" class="nav-row-list-link">Guitar</a></li>
            <li class="nav-row-list"><a href="#" class="nav-row-list-link">Drums</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0">
            <a href="index.jsp" class="text-dark">Home</a> <span class="mx-2 mb-0">/</span>
            <a href="cart.jsp" class="text-dark">Cart</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Checkout</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section py-3">
      <div class="container">
      	<form action="" method="POST" name="form1">
      		<div class="row">
          <div class="col-md-6 mb-5 mb-md-0">
            <h2 class="h3 mb-3 text-black">Billing Details</h2>
            <div class="p-3 p-lg-4 border">
              <div class="form-group row">
              	 <div class="col-md-6">
              			<label for="c_country" class="text-black">District <span class="text-danger">*</span></label>
		                <select id="c_country" class="form-control">
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
              	</div>
              	 <div class="col-md-6">
              			<label for="c_country" class="text-black">Province <span class="text-danger">*</span></label>
		                <select id="c_country" class="form-control">
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
              	</div>
                
              </div>
              <div class="form-group row">
                <div class="col-md-6">
                  <label for="c_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_fname" name="c_fname" />
                </div>
                <div class="col-md-6">
                  <label for="c_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_lname" name="c_lname" />
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="c_companyname" class="text-black">Company Name
                  </label>
                  <input type="text" class="form-control" id="c_companyname" name="c_companyname" />
                </div>
              </div>

              <div class="form-group row">
                <div class="col-md-12">
                  <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_address" name="c_address"
                    placeholder="Street address" />
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-6">
                  <label for="c_state_country" class="text-black">State / Country <span
                      class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_state_country" name="c_state_country" />
                </div>
                <div class="col-md-6">
                  <label for="c_postal_zip" class="text-black">Posta / Zip <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_postal_zip" name="c_postal_zip" />
                </div>
              </div>

              <div class="form-group row mb-5">
                <div class="col-md-6">
                  <label for="c_email_address" class="text-black">Email Address <span
                      class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_email_address" name="c_email_address" />
                </div>
                <div class="col-md-6">
                  <label for="c_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                  <input type="text" class="form-control" id="c_phone" name="c_phone" placeholder="Phone Number" />
                </div>
              </div>
			  <div class="form-group">
                <label for="c_order_notes" class="text-black">Order Notes</label>
                <textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control"
                  placeholder="Write your notes here..."></textarea>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="row mb-5">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">Coupon Code</h2>
                <div class="p-3 p-lg-4 border text-left">
                  <label for="c_code" class="text-black mb-3">Enter your coupon code if you have one</label>
                  <div class="input-group w-100 text-center">
                    <input type="text" class="form-control" id="c_code" placeholder="Coupon Code"
                      aria-label="Coupon Code" name="cpn"  oninput="myFunction()" aria-describedby="button-addon2" />
                    <div class="input-group-append">
                    	<a href=""  id="dd"  class="btn btn-dark btn-sm">Apply</a>
                      <script>
                      	function myFunction(){
            				var x=document.getElementById("c_code").value;
            				document.getElementById("dd").href ="CouponsServlet?cp="+x;
            			}
                      	function loadXMLDoc() {
                      	  var xhttp = new XMLHttpRequest();
                      	  xhttp.onreadystatechange = function() {
                      	    if (this.readyState == 4 && this.status == 200) {
                      	      document.getElementById("demo").innerHTML =
                      	      this.responseText;
                      	    }
                      	  };
                      	  xhttp.open("GET", "xmlhttp_info.txt", true);
                      	  xhttp.send();
                      	}
        			   </script>
                     
                     
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row mb-5">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">Your Order</h2>
                <div class="p-3 p-lg-4 border">
                <%
                	if(cart_list !=null){%>
                		<table class="table site-block-order-table mb-5">
		                    <thead class="text-center">
		                      <th>Image</th>
		                      <th>Product</th>
		                      <th>Total</th>
		                    </thead>
		             <%for(Cart c: cartProduct){%>
		             		<tbody >
		                   	  <tr>
		                   	  	<td >
		                   	  	  <div style="width: 50px;
                                		height: 40px;
                                		border-radius: 3px;
                                		background-image: url('images/products/<%=c.getImg() %>');
                                		background-repeat: no-repeat;
                               			background-size: cover;
                                		background-position: center;">
		                   	  	  	</div>
		                        </td>
		                        <td>
		                          <%=c.getName() %><strong class="mx-2">x</strong><%=c.getQuantity() %>
		                        </td>
		                        <td>
		                          Rs <%=df.format(c.getCartPrice()) %>
		                        </td>
		                      </tr>
		              		 <%        tot= tot+c.getCartPrice();
		             }%>
		             	   <tr>
		             	   	    <td></td>
		                        <td class="text-black font-weight-bold">
		                          <strong>Subtotal</strong>
		                        </td>
		                        <td class="text-black font-weight-bold">Rs <%=df.format(tot) %></td>
		                   </tr>
		                   <tr>
		                      	<td></td>
		                        <td class="text-black font-weight-bold">
		                          <strong>Coupon Saving</strong>
		                        </td>
		                        <td class="text-black font-weight-bold">
		                          <strong>Rs <%=cpn!=null?tot*(cpn.getValue())/100:"00.00" %></strong>
		                        </td>
		                    </tr>
		                   <tr>
		                      	<td></td>
		                        <td class="text-black font-weight-bold">
		                          <strong>Order Total</strong>
		                        </td>
		                        <td class="text-black font-weight-bold">
		                          <strong>Rs <%=tot-(tot*(cpn!=null?cpn.getValue():0)/100) %></strong>
		                        </td>
		                    </tr>
		                    </tbody>
		                  </table>
		                  <div class="form-group">
                  			<a href="visa.jsp" class="btn btn-dark btn-lg py-3 btn-block rounded-0" >Proceed Payment</a>
                  		  </div>
                	<%} %>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- </form> -->
      	</form>
        
      </div>
    </div>
    <!-- insert footer here -->

    <!-- footer insertion ends here -->
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
  <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
   <!-- below is the ween nadha -->
   <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
</body>

</html>