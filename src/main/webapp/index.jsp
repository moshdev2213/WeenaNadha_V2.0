
<%@page import="com.weenalk.Modal.*" %>
<!DOCTYPE html>
<html lang="en">
<%
	// user details print
	
	//(User) syas that it is type casted
	User authin = (User) request.getSession().getAttribute("auth");
	//(admin) syas that it is type casted
	Admin authAdmin = (Admin) request.getSession().getAttribute("authadmin");
	
	if (authin != null) {
		request.setAttribute("authin", authin);%>
		<input type="hidden" value="<%=request.getAttribute("stat") %>" id="ses" />
		<input type="hidden" value="<%=authin.getFname()%>" id="namae" />
	<%}
	
	if (authAdmin != null) {
			request.setAttribute("authadmin", authAdmin);%>
			<input type="hidden" value="<%=request.getAttribute("stat") %>" id="namae" />
	<%}

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
  <!-- <link rel="stylesheet" href="css/magnific-popup.css" /> -->
  <!-- <link rel="stylesheet" href="css/jquery-ui.css" /> -->
  <link rel="stylesheet" href="css/owl.carousel.min.css" />
  <!-- <link rel="stylesheet" href="css/owl.theme.default.min.css" /> -->

  <link rel="stylesheet" href="css/aos.css" />
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="css/slides.css" />
  <!--footer css  -->

  <link rel="stylesheet" href="css/footerstyle.css" />
  <link rel="stylesheet" href="css/ionicons.min.css" />

  <!-- ends the footer css -->
  <!-- Additional CSS Files -->

  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css" />

  <link rel="stylesheet" href="assets/css/templatemo-hexashop.css" />

  <link rel="stylesheet" href="assets/css/owl-carousel.css" />

  <link rel="stylesheet" href="assets/css/lightbox.css" />
  <!-- svg and preloader css -->
  <link rel="stylesheet" href="css/svg.css">
  <link rel="stylesheet" href="css/preloader.css">
  <!-- ends -->
  <!-- header -->
  <link rel="stylesheet" href="css/header.css">
  <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet">
  <!-- header ends -->
  <link rel="stylesheet" href="css/dropdown.css">
</head>

<body style="background-color: #ffffff">
  <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>

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
          <span><i class="fas fa-phone-square-alt"></i> <%=authin!=null?authin.getTel():"+(00)00000" %></span>
          <span><i class="fas fa-envelope-square"></i><%=authin!=null?authin.getEmail():"email@email.com.br" %></span>
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
                <span class="login-text text-light">Hello, <%=authin!=null?authin.getFname():"SignIn"%><strong><%=authin!=null?"Welcome":"Create Account"%></strong></span> <span
                  class="item-arrow"></span>
                <!-- submenu -->
              
                <div id="mydrop" class="downyy-content">
                 <% if(authin==null && authAdmin==null){%>
                      <a href="login.jsp">Login</a>
                <%}else if(authin!=null){%>
                	<a href="userpro.jsp">My profile</a>
                    <a href="LogoutServlet">Logout</a>
                 <%}if(authAdmin!=null){%>
                 	<a href="dashdex.jsp">Dashboard</a>
                 	<a href="userpro.jsp">My profile</a>
                    <a href="LogoutServlet">Logout</a>
                 <%}%>
                </div>

              </div>
            </li>
            <li class="nav-content-item login-text">
              <div style="width: 35px;
                                height: 35px;
                                border-radius: 100px;
                                background-image: url('images/<%=authin!=null?authin.getPropic():"bpro.png"%>');
                                background-repeat: no-repeat;
                                background-size: cover;
                                position: relative;
                                top: -1px;
                                left: 5px;" class="downyy">
                <!-- submenu -->
                <div id="mydrop" class="downyy-content">
                 <% if(authin==null && authAdmin==null){%>
                      <a href="login.jsp">Login</a>
                <%}else if(authin!=null){%>
                	<a href="userpro.jsp">My profile</a>
                    <a href="LogoutServlet">Logout</a>
                 <%}if(authAdmin!=null){%>
                 	<a href="dashdex.jsp">Dashboard</a>
                 	<a href="userpro.jsp">My profile</a>
                    <a href="LogoutServlet">Logout</a>
                 <%}%>
                </div>
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
            <%if(authAdmin!=null) {%>
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
              <%} %>
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
            <%if(authAdmin!=null){%>
               <li class="nav-row-list"><a href="dashdex.jsp" class="nav-row-list-link">Dashboard</a></li>
             <%}%>
          
            <li class="nav-row-list"><a href="products.jsp" class="nav-row-list-link">Shop</a></li>
            <li class="nav-row-list"><a href="#" class="nav-row-list-link">Guitar</a></li>
            <li class="nav-row-list"><a href="#" class="nav-row-list-link">Drums</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <div class="hmimg">
      <!-- <p class="grab">GRAB YOUR GEAR <br> FROM THE BEST</p>
      
      <button class="btnss shadow">SHOP NOW</button>
      <button class="btnss shadow">ABOUT US</button> -->
    </div>

    <style>
      @media (max-width: 575.98px) {
        #men {
          padding-top: 20px;
        }
      }
    </style>
    <!-- ***** Men Area Starts ***** -->
    <section class="section pt-md-2" id="men">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="section-heading">
              <h2>Flash Collection</h2>
              <span>Details to details is what makes WEENA different from the others.</span>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row ">
          <div class="col-lg-12">
            <div class="men-item-carousel">
              <div class="owl-men-item owl-carousel">
                <div class="item ">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/men-01.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Classic Spring</h4>
                    <span>$120.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <span style="font-size: 15px; position:absolute; top: 25px; ">fdsfsfwwww</span>
                      <span style="font-size: 15px; position:absolute; top: 43px; ">dwwww</span>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/men-02.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Air Force 1 X</h4>
                    <span>$90.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/men-03.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Love Nana â20</h4>
                    <span>$150.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/men-01.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Classic Spring</h4>
                    <span>$120.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** Men Area Ends ***** -->

    <!-- ***** Explore Area Starts ***** -->
    <section class="section" id="explore">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="left-content">
              <h2>Explore Our Products</h2>
              <span>You are allowed to use this HexaShop HTML CSS template. You
                can feel free to modify or edit this layout. You can convert
                this template as any kind of ecommerce CMS theme as you
                wish.</span>
              <div class="quote">
                <i class="fa fa-quote-left"></i>
                <p>
                  You are not allowed to redistribute this template ZIP file
                  on any other website.
                </p>
              </div>
              <p>
                There are 5 pages included in this HexaShop Template and we
                are providing it to you for absolutely free of charge at our
                TemplateMo website. There are web development costs for us.
              </p>
              <p>
                If this template is beneficial for your website or business,
                please kindly
                <a rel="nofollow" href="https://paypal.me/templatemo" target="_blank">support us</a>
                a little via PayPal. Please also tell your friends about our
                great website. Thank you.
              </p>
              <div class="main-border-button">
                <a href="products.jsp">Discover More</a>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="right-content">
              <div class="row">
                <div class="col-lg-6">
                  <div class="leather">
                    <h4>Quality Products</h4>
                    <span>Latest Collection</span>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="first-image">
                    <img src="images/exp1.jpg" alt="" />
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="second-image">
                    <img src="images/exp2.jpg" alt="" />
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="types">
                    <h4>Different Types</h4>
                    <span>Over 304 Products</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** Explore Area Ends ***** -->

    <div class="site-section site-blocks-2 bg-light">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-md-6 col-lg-4 mb-4 mb-lg-0" data-aos="" data-aos-delay="">
            <a class="block-2-item" href="#">
              <figure class="image">
                <img src="images/guitcol.jpg" alt="" style="height: 600px" />
              </figure>
              <div class="text">
                <span class="text-uppercase">Collections</span>
                <h3>Guitar</h3>
              </div>
            </a>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="" data-aos-delay="100">
            <a class="block-2-item" href="#">
              <figure class="image">
                <img src="images/saxcoll.jpg" alt="" style="height: 600px" />
              </figure>
              <div class="text">
                <span class="text-uppercase">Collections</span>
                <h3>Trumputs</h3>
              </div>
            </a>
          </div>
          <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0" data-aos="" data-aos-delay="200">
            <a class="block-2-item" href="#">
              <figure class="image">
                <img src="images/miccoll.jpg" alt="" style="height: 600px" />
              </figure>
              <div class="text">
                <span class="text-uppercase">Collections</span>
                <h3>Audio</h3>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <!-- ***** Kids Area Starts ***** -->
    <section class="section" id="kids">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="section-heading">
              <h2>Kid's Latest</h2>
              <span>Details to details is what makes Hexashop different from the
                other themes.</span>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <div class="kid-item-carousel">
              <div class="owl-kid-item owl-carousel">
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/kid-01.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>School Collection</h4>
                    <span>$80.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/kid-02.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Summer Cap</h4>
                    <span>$12.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/kid-03.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Classic Kid</h4>
                    <span>$30.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
                <div class="item">
                  <div class="thumb">
                    <div class="hover-content">
                      <ul>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-eye"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-star"></i></a>
                        </li>
                        <li>
                          <a href="cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                        </li>
                      </ul>
                    </div>
                    <img src="assets/images/kid-01.jpg" alt="" />
                  </div>
                  <div class="down-content">
                    <h4>Classic Spring</h4>
                    <span>$120.00</span>
                    <ul class="stars">
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                      <li><i class="fa fa-star"></i></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** Kids Area Ends ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="left-content">
              <div class="thumb">
                <div class="inner-content">
                  <h4>We Are WeenaLK</h4>
                  <span>The one and only place for your needs</span>
                  <div class="main-border-button">
                    <a href="products.jsp">Purchase Now!</a>
                  </div>
                </div>
                <img src="images/exploree.jpg" alt="" />
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="right-content">
              <div class="row">
                <div class="col-lg-6">
                  <div class="right-first-image">
                    <div class="thumb">
                      <div class="inner-content">
                        <h4>Kids</h4>
                        <span>Best Kids Collections</span>
                      </div>
                      <div class="hover-content">
                        <div class="inner">
                          <h4>KIDS</h4>
                          <p>
                            The best musical Instrument For the Kids with quality Standards
                          </p>
                          <div class="main-border-button">
                            <a href="products.jsp">Discover More</a>
                          </div>
                        </div>
                      </div>
                      <img src="images/kidmusci.jpg" />
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="right-first-image">
                    <div class="thumb">
                      <div class="inner-content">
                        <h4>Student</h4>
                        <span>School based instruments with brand</span>
                      </div>
                      <div class="hover-content">
                        <div class="inner">
                          <h4>Student</h4>
                          <p>
                            School based instruments with brand and Trust worthiness
                          </p>
                          <div class="main-border-button">
                            <a href="products.jsp">Discover More</a>
                          </div>
                        </div>
                      </div>
                      <img src="images/band.jpg" />
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="right-first-image">
                    <div class="thumb">
                      <div class="inner-content">
                        <h4>Producers</h4>
                        <span>Studio Equipments</span>
                      </div>
                      <div class="hover-content">
                        <div class="inner">
                          <h4>Producers</h4>
                          <p>
                            High Stadard Studio Equipments from the Best Manufactures
                          </p>
                          <div class="main-border-button">
                            <a href="products.jsp">Discover More</a>
                          </div>
                        </div>
                      </div>
                      <img src="images/explorstud.jpg" />
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="right-first-image">
                    <div class="thumb">
                      <div class="inner-content">
                        <h4>ELITE</h4>
                        <span>Professional Accessories</span>
                      </div>
                      <div class="hover-content">
                        <div class="inner">
                          <h4>EILTE</h4>
                          <p>
                            Professional Accessories for the Experts in the field
                          </p>
                          <div class="main-border-button">
                            <a href="products.jsp">Discover More</a>
                          </div>
                        </div>
                      </div>
                      <img src="images/exploremart.jpg" />
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ICons section starts-->
    <!-- <div class="site-section site-section-sm site-blocks-1 p-2 border-0 m-5">
      <div class="container-fluid overflow-hidden" style="height: 30vh">
        <div class="row justify-content-around">
          <div class="col-md-4 col-lg-4 col-xl-4 d-lg-flex m-3 mb-lg-0 rounded p-3 shadow bg-light" data-aos=""
            data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck rounded shadow"></span>
            </div>
            <div class="text align-self-center">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Phasellus at iaculis quam. Integer accumsan tincidunt
                fringilla.Lorem ipsum dolor sit amet, consectetur adipiscing
                elit. Phasellus at iaculis quam. Integer
              </p>
            </div>
          </div>
          <div class="col-md-4 col-lg-4 col-xl-3 d-lg-flex m-3 mb-lg-0 rounded p-3 shadow bg-light" data-aos=""
            data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck rounded shadow"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Phasellus at iaculis quam. Integer accumsan tincidunt
                fringilla.
              </p>
            </div>
          </div>
          <div class="col-md-4 col-lg-4 col-xl-4 d-lg-flex m-3 mb-lg-0 rounded p-3 shadow bg-light" data-aos=""
            data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck rounded shadow"></span>
            </div>
            <div class="text align-self-center">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Phasellus at iaculis quam. Integer accumsan tincidunt
                fringilla.Lorem ipsum dolor sit amet, consectetur adipiscing
                elit. Phasellus at iaculis quam. Integer
              </p>
            </div>
          </div>
        </div>
      </div>
    </div> -->
    <!--Icons section ends-->

    <!-- footer starts here -->
    <footer class="footer-10 shadow">
      <div class="container">
        <div class="row mb-2 pb-3 no-gutters">
          <div class="col-md-4 mb-md-0 mb-4 d-flex">
            <div class="w-100 py-5 text-black">
              <div class="con-info w-100 text-center">
                <div class="icon d-flex align-items-center justify-content-center" style="background-color: white">
                  <span class="ion-ios-call text-dark"></span>
                </div>
                <div class="text">
                  <span class="text-white">(+00) 1234 5678</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-md-0 mb-4 d-flex">
            <div class="w-100 py-5">
              <div class="con-info w-100 text-center">
                <div class="icon d-flex align-items-center justify-content-center icon_pack"
                  style="background-color: white">
                  <span class="ion-ios-mail text-dark"></span>
                </div>
                <div class="text">
                  <span class="text-white">info@email.com</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-md-0 mb-4 d-flex">
            <div class="w-100 py-5">
              <div class="con-info w-100 text-center">
                <div class="icon d-flex align-items-center justify-content-center" style="background-color: white">
                  <span class="ion-ios-pin text-dark"></span>
                </div>
                <div class="text">
                  <span class="text-white">203 Fake St. Mountain View, San Francisco, California,
                    USA</span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-7">
            <div class="row">
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">About</h2>
                <ul class="list-unstyled">
                  <li><a href="#" class="d-block text-white-50">Out story</a></li>
                  <li><a href="#" class="d-block text-white-50">Awards</a></li>
                  <li><a href="#" class="d-block text-white-50">Our Team</a></li>
                  <li><a href="#" class="d-block text-white-50">Career</a></li>
                </ul>
              </div>
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">Company</h2>
                <ul class="list-unstyled">
                  <li><a href="#" class="d-block text-white-50">Our services</a></li>
                  <li><a href="#" class="d-block text-white-50">Clients</a></li>
                  <li><a href="#" class="d-block text-white-50">Contact</a></li>
                  <li><a href="#" class="d-block text-white-50">Press</a></li>
                </ul>
              </div>
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">Resources</h2>
                <ul class="list-unstyled">
                  <li><a href="#" class="d-block text-white-50">Blog</a></li>
                  <li><a href="#" class="d-block text-white-50">Newsletter</a></li>
                  <li><a href="#" class="d-block text-white-50">Privacy Policy</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-5 mb-md-0 mb-4">
            <h2 class="footer-heading">Subscribe</h2>
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control rounded-left bg-gry" placeholder="Enter email address" />
                <button type="submit" class="submit rounded-right bg-white text-dark">
                  SUBSCRIBE
                </button>
              </div>
              <span class="subheading text-white-50">Get digital marketing updates in your mailbox</span>
            </form>
          </div>
        </div>
        <div class="row mt-5 pt-4 border-top">
          <div class="col-md-6 col-lg-7 text-md-right">
            <ul class="ftco-footer-social p-0">
              <li class="ftco-animate">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><span
                    class="ion-logo-twitter"></span></a>
              </li>
              <li class="ftco-animate">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><span
                    class="ion-logo-facebook"></span></a>
              </li>
              <li class="ftco-animate">
                <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><span
                    class="ion-logo-instagram"></span></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
   
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>

  <script src="js/main.js"></script>
  <script src="js/slider.js"></script>
  <!-- <script src="js/login.js"></script> -->
  <!-- jQuery -->
  <script src="assets/js/jquery-2.1.0.min.js"></script>

  <!-- Bootstrap -->
  <script src="assets/js/popper.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>

  <!-- Plugins -->
  <script src="assets/js/owl-carousel.js"></script>
  <script src="assets/js/accordions.js"></script>
  <script src="assets/js/datepicker.js"></script>
  <script src="assets/js/scrollreveal.min.js"></script>
  <script src="assets/js/waypoints.min.js"></script>
  <script src="assets/js/jquery.counterup.min.js"></script>
  <script src="assets/js/imgfix.min.js"></script>
  <script src="assets/js/slick.js"></script>
  <script src="assets/js/lightbox.js"></script>
  <script src="assets/js/isotope.js"></script>

  <!-- Global Init -->
  <script src="assets/js/custom.js"></script>
  <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
  
   <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
   
   <script>
   let session = document.getElementById("ses").value;
   let name = document.getElementById("namae").value;
   let upper = name.toUpperCase(name);
   if( session=="success"){
	   setTimeout(Swal.fire({
		   position: 'top-end',
		   icon: false,
		   width: '400px',
		   padding:'0 10px 10px 0',
		   text: 'Hey There Mr.'+upper+' Welcome :-)',
		   showConfirmButton: false,
		   timerProgressBar: true,
		   timer: 3000
		 }), 500);
	   
   }
   </script>
  <!-- chatbot  -->
  <!-- below is for test -->
  <!-- <script src="//code.tidio.co/halmfcwuijgdegttcnsrzyhsdnrtlotq.js" async></script> -->
  <!-- below is the ween nadha -->
  <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
</body>

</html>