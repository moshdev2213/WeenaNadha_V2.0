<%@page import="java.text.DecimalFormat" %>
<%@page import="com.weenalk.DBcon.*" %>
<%@page import="com.weenalk.DAO.*" %>
<%@page import="java.util.*"%>
<%@page import="com.weenalk.Modal.*" %>
<!DOCTYPE html>
<html lang="en">
<%
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
ArrayList<Whishlist> wish_list = (ArrayList<Whishlist>) session.getAttribute("wish-list");
List<Whishlist> wishProduct = null;
if (wish_list != null) {
	WhishlistDao wsh = new WhishlistDao(DbCon.getConnection());
	wishProduct = wsh.getWishProducts(wish_list);
	request.setAttribute("wish_list", wish_list);
}	

%>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
  <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
  <!-- header ends -->
  <link rel="stylesheet" href="css/dropdown.css">

</head>

<body>
  <style>
    @import url("https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900");

    * {

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
                  style="position: absolute; top: 1%;"><%=wish_list!=null?wish_list.size():0 %></span></a></li>
            <li class="nav-content-item"><a class="nav-content-link" href="cart.jsp"><i
                  class="fas fa-shopping-cart text-light"></i><span class="badge badge-dark rounded-circle"
                  style="position: absolute; top: 1%;"><%=cart_list!=null?cart_list.size():0 %></span></a></li>
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
            <a href="index.jsp" class=" text-black">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Whishlist</strong>
          </div>
        </div>
      </div>
    </div>
    <div class="love text-center">
      <i class="fa fa-heart text-black fa-5x m-4"></i>
      <h1 class="text-black m-0">My Whishlist</h1>
    </div>
    <div class="site-section p-lg-0">
      <div class="container">
        <div class="row mb-5">
          <form class="col-md-12 p-lg-5 pb-lg-0 pt-lg-0" method="post">
          	
            	<%if(wish_list==null){%>
          			<h1 class="shadow-none text-black bold text-center">IS EMPTY</h1>
             		<h1 class="text-black text-center m-5"><i class="fa-solid fa-face-frown fa-2xl"></i></h1>
          		<%}
                  
                	if(wish_list !=null){%>
                		<div class="site-blocks-table shadow">
                        <table class="table table-borderless">
                          <thead>
                            <tr>
                              <th class="product-thumbnail">Image</th>
                              <th class="product-name">Product</th>
                              <th class="product-price">Category</th>
                              <th class="product-quantity">Design</th>
                              <th class="product-total">Price</th>
                              <th class="product-remove">Remove</th>
                            </tr>
                          </thead>
                          <tbody>
                	<%for(Whishlist wsh: wishProduct){%>
                		<tr>
                        <td class="product-thumbnail">
                          <div style="background-image: url('images/products/<%=wsh.getImg()%>');
                                background-repeat: no-repeat;
                                background-size: contain;
                                 background-position: center; 
                                height:100px;"
                                >
                           </div>	
                         
                        </td>
                        <td class="product-name">
                          <h2 class="h5 text-black"><%=wsh.getName() %></h2>
                        </td>
                        <td><%=wsh.getCategory_name() %></td>
                        <td><%=wsh.getDesign() %></td>
                        <td><%=wsh.getPrice() %></td>
                       
                      	<td>
                      	 <a href="AddToCartServlet?id=<%=wsh.getId()%>" class="btn btn-dark rounded-0 btn-sm"><i class="fas fa-shopping-cart text-light"></i></a>
                      	 <a href="removecart?pathh=wish&id=<%=wsh.getId() %>" class="btn btn-dark rounded-0 btn-sm">X</a>
                      	</td>
                      </tr>
                	<%}%>
                	 </tbody>
                     </table>
                   </div>
                <%}
                %>
               
          </form>
        </div>

        
      </div>
    </div>
    <!-- footer starts here -->

    <!-- footer section ends here -->
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