
<%@page import="com.weenalk.Modal.*" %>
<%@page import="com.weenalk.DAO.*" %>
<%@page import="com.weenalk.DBcon.*" %>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<%

ProductDao pd = new ProductDao(DbCon.getConnection());
ArrayList<String> pimg = pd.getALLImg(request.getParameter("id"));



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

  <!--footer css  -->

  <link rel="stylesheet" href="css/footerstyle.css" />
  <link rel="stylesheet" href="css/ionicons.min.css" />

  <!-- ends the footer css -->
  <!-- svg and preloader css -->
  <link rel="stylesheet" href="css/svg.css" />
  <link rel="stylesheet" href="css/preloader.css" />
  <!-- ends -->
  <!-- shop single card css -->
  <link rel="stylesheet" href="css/shopsingle.css" />
  <!-- shop single card css  ends-->
  <!-- header -->
  <link rel="stylesheet" href="css/header.css" />
  <link href="https://fonts.googleapis.com/css?family=Rubik&display=swap" rel="stylesheet" />
  <script src="https://kit.fontawesome.com/af562a2a63.js" crossorigin="anonymous"></script>
  <!-- header ends -->
  <link rel="stylesheet" href="css/dropdown.css" />
  <!-- comment -->
  <link rel="stylesheet" href="css/comments.css" />
  <!-- start ratings -->
  <link rel="stylesheet" href="css/ratestar.css" />
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
            <a href="index.jsp">Home</a> <span class="mx-2 mb-0">/</span>
            <strong class="text-black">Tank Top T-Shirt</strong>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section p-2">
      <div class="card-wrapper">
        <div class="cardyyy">
          <!-- card left -->
          <div class="product-imgs">
            <div class="img-display">
              <div class="img-showcase">
              <%if(!pimg.isEmpty()){
            	for(String ig:pimg){%>
            		 <img
                     src="images/products/<%=ig %>"
                     alt="shoe image" />
            	<%}
            	
            	}%>
               </div>
            </div>
            <div class="img-select">
            <%if(!pimg.isEmpty()){
            	for(String ig:pimg){%>
            	<div class="img-item">
                <a href="#" data-id="1">
                  <img
                    src="images/products/<%=ig %>"
                    alt="shoe image" />
                </a>
              </div>
            	<%}
            	
            	}%>
            </div>
          </div>
          <!-- card right -->
          <div class="product-content">
            <h2 class="product-title">nike shoes</h2>
            <a href="#" class="product-link">visit nike store</a>
            <div class="product-rating">
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star"></i>
              <i class="fas fa-star-half-alt"></i>
              <span>4.7(21)</span>
            </div>

            <div class="product-price">
              <p class="last-price">Old Price: <span>$257.00</span></p>
              <p class="new-price">New Price: <span>$249.00 (5%)</span></p>
            </div>

            <div class="product-detail">
              <h2>about this item:</h2>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo
                eveniet veniam tempora fuga tenetur placeat sapiente
                architecto illum soluta consequuntur, aspernatur quidem at
                sequi ipsa!
              </p>
              <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit.
                Consequatur, perferendis eius. Dignissimos, labore suscipit.
                Unde.
              </p>
              <ul>
                <li>Color: <span>Black</span></li>
                <li>Available: <span>in stock</span></li>
                <li>Category: <span>Shoes</span></li>
                <li>Warranty: <span>6 Months</span></li>
                <li>Shipping Fee: <span>Free</span></li>
              </ul>
            </div>
			
            <div class="purchase-info">
              <button type="button" class="btn">
                <a href="cart.jsp" class="text-light">Add to Cart</a>
              </button>
              <button type="button" class="btn">
                <a href="checkout.jsp" class="text-light">Buy Now</a>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- comments -->
    <div class="site-section block-3 site-blocks-2 bg-light p-0">
      <!-- mr-0 hten the overflow decreases -->
      <div class="row mr-0">
        <div class="col-md-3 xss1">
          <!--heading--->
          <div class="testimonial-heading">
            <!-- <span>Comments</span> -->
            <h4>Ratings</h4>
            <!-- starts -->
            <div class="d-flex justify-content-center align-items-center">
              <div class="card p-2">
                <div class="d-flex justify-content-between align-items-center">
                  <div class="ratings" id="first">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                  </div>
                  <h5 class="review-count" id="counts">12 Reviews</h5>
                </div>
                <!-- progress bar starts -->
                <div class="row mt-4">
                  <div class="col-1">
                    <h6 class="mt-1">5</h6>
                  </div>
                  <div class="col-8 xss2">
                    <div class="bars mt-2">
                      <div class="progress rounded-0">
                        <div class="progress-bar progress-bar-striped progress-bar-animated bg-dark" role="progressbar"
                          aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 83.34%"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 xss3">
                    <h6 class="mt-1">83.34%</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-1 xss1">
                    <h6 class="mt-1">4</h6>
                  </div>
                  <div class="col-8 xss2">
                    <div class="bars mt-2">
                      <div class="progress rounded-0">
                        <div class="progress-bar progress-bar-striped progress-bar-animated bg-dark" role="progressbar"
                          aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 32.11%"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 xss3">
                    <h6 class="mt-1">32.11%</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-1 xss1">
                    <h6 class="mt-1">3</h6>
                  </div>
                  <div class="col-8 xss2">
                    <div class="bars mt-2">
                      <div class="progress rounded-0">
                        <div class="progress-bar progress-bar-striped progress-bar-animated bg-dark" role="progressbar"
                          aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 9%"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 xss3">
                    <h6 class="mt-1">53.34%</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-1 xss1">
                    <h6 class="mt-1">2</h6>
                  </div>
                  <div class="col-8 xss2">
                    <div class="bars mt-2">
                      <div class="progress rounded-0">
                        <div class="progress-bar progress-bar-striped progress-bar-animated bg-dark" role="progressbar"
                          aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 12.89%"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 xss3">
                    <h6 class="mt-1">12.89%</h6>
                  </div>
                </div>

                <div class="row">
                  <div class="col-1 xss1">
                    <h6 class="mt-1">1</h6>
                  </div>
                  <div class="col-8 xss2">
                    <div class="bars mt-2">
                      <div class="progress rounded-0">
                        <div class="progress-bar progress-bar-striped progress-bar-animated bg-dark" role="progressbar"
                          aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 53.34%"></div>
                      </div>
                    </div>
                  </div>
                  <div class="col-3 xss3">
                    <h6 class="mt-1">53.34%</h6>
                  </div>
                </div>

                <h5 class="mt-4">By Feature</h5>
                <div class="mt-2 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">Quality</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>

                <div class="mt-1 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">Accuracy</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>

                <div class="mt-1 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">Durability</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>

                <div class="mt-1 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">Shipping</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                  </div>
                </div>

                <div class="mt-1 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">As mentioned</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>

                <div class="mt-1 d-flex justify-content-between align-items-center">
                  <h5 class="review-stat">Reliability</h5>
                  <div class="small-ratings">
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star rating-color"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <section id="testimonials">
            <!--heading--->
            <div class="testimonial-heading d-inline mt-3">
              <h4 class="d-inline">Reviews</h4>

              <!-- Button trigger modal -->
              <button type="button" class="btn btn-dark rounded-0 p-2" style="
                    background-color: black;
                    font-size: 20px;
                    font-weight: 500;
                    position: relative;
                    top: -3px;
                  " data-bs-toggle="modal" data-bs-target="#exampleModal">
                Add Reviews
              </button>

              <!-- Modal -->
              <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                  <div class="modal-content">
                    <div class="modal-body">
                      <form>
                        <div class="form-row">
                          <h5 class="ml-1 text-black" style="font-weight: 700">
                            Casio565
                          </h5>
                        </div>
                        <div class="form-group">
                          <label for="exampleFormControlTextarea1">Comments</label>
                          <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                        </div>
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputState">Quality</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                          <div class="form-group col-md-6">
                            <label for="inputState">Accuracy</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputState">Durability</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                          <div class="form-group col-md-6">
                            <label for="inputState">Shipping</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="form-group col-md-6">
                            <label for="inputState">As mentioned</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                          <div class="form-group col-md-6">
                            <label for="inputState">Reliability</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-row">
                          <div class="form-group col-md-12">
                            <label for="inputState">Product Rating</label>
                            <select id="inputState" class="form-control">
                              <option selected>1 STAR</option>
                              <option>2 STAR</option>
                              <option>3 STAR</option>
                              <option>4 STAR</option>
                              <option>5 STAR</option>
                            </select>
                          </div>
                        </div>
                        <div class="text-right">
                          <button type="button" class="btn btn-dark rounded-0" data-bs-dismiss="modal">
                            Close
                          </button>
                          <button type="submit" class="btn bg-black text-white rounded-0">
                            Submit
                          </button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--testimonials-box-container------>
            <div class="testimonial-box-container">
              <!--BOX-1-------------->
              <div class="testimonial-box">
                <!--top------------------------->
                <div class="box-top">
                  <!--profile----->
                  <div class="profile">
                    <!--img---->
                    <div class="profile-img">
                      <img src="images/person_1.jpg" />
                    </div>
                    <!--name-and-username-->
                    <div class="name-user">
                      <strong>Touseeq Ijaz</strong>
                      <span>@touseeqijazweb</span>
                    </div>
                  </div>
                  <!--reviews------>
                  <div class="reviews">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <p class="mb-0 d-block text-right text-black-50" style="font-size: 0.8rem">
                      2021-15-7
                    </p>

                    <!--Empty star-->
                  </div>
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Exercitationem, quaerat quis? Provident temporibus
                    architecto asperiores nobis maiores nisi a. Quae doloribus
                    ipsum aliquam tenetur voluptates incidunt blanditiis sed
                    atque cumque.
                  </p>
                </div>
              </div>
              <!--BOX-2-------------->
              <div class="testimonial-box">
                <!--top------------------------->
                <div class="box-top">
                  <!--profile----->
                  <div class="profile">
                    <!--img---->
                    <div class="profile-img">
                      <img src="images/person_2.jpg" />
                    </div>
                    <!--name-and-username-->
                    <div class="name-user">
                      <strong>J.K Rowling</strong>
                      <span>@jkrowling</span>
                    </div>
                  </div>
                  <!--reviews------>
                  <div class="reviews">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <p class="mb-0 d-block text-right text-black-50" style="font-size: 0.8rem">
                      2021-15-7
                    </p>

                    <!--Empty star-->
                  </div>
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Exercitationem, quaerat quis? Provident temporibus
                    architecto asperiores nobis maiores nisi a. Quae doloribus
                    ipsum aliquam tenetur voluptates incidunt blanditiis sed
                    atque cumque.
                  </p>
                </div>
              </div>
              <!--BOX-3-------------->
              <div class="testimonial-box">
                <!--top------------------------->
                <div class="box-top">
                  <!--profile----->
                  <div class="profile">
                    <!--img---->
                    <div class="profile-img">
                      <img src="images/person_3.jpg" />
                    </div>
                    <!--name-and-username-->
                    <div class="name-user">
                      <strong>Harry Potter</strong>
                      <span>@DanielRedclief</span>
                    </div>
                  </div>
                  <!--reviews------>
                  <div class="reviews">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <p class="mb-0 d-block text-right text-black-50" style="font-size: 0.8rem">
                      2021-15-7
                    </p>

                    <!--Empty star-->
                  </div>
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Exercitationem, quaerat quis? Provident temporibus
                    architecto asperiores nobis maiores nisi a. Quae doloribus
                    ipsum aliquam tenetur voluptates incidunt blanditiis sed
                    atque cumque.
                  </p>
                </div>
              </div>
              <!--BOX-4-------------->
              <div class="testimonial-box">
                <!--top------------------------->
                <div class="box-top">
                  <!--profile----->
                  <div class="profile">
                    <!--img---->
                    <div class="profile-img">
                      <img src="images/person_4.jpg" />
                    </div>
                    <!--name-and-username-->
                    <div class="name-user">
                      <strong>Oliva</strong>
                      <span>@Olivaadward</span>
                    </div>
                  </div>
                  <!--reviews------>
                  <div class="reviews">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                    <p class="mb-0 d-block text-right text-black-50" style="font-size: 0.8rem">
                      2021-15-7
                    </p>

                    <!--Empty star-->
                  </div>
                </div>
                <!--Comments---------------------------------------->
                <div class="client-comment">
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit.
                    Exercitationem, quaerat quis? Provident temporibus
                    architecto asperiores nobis maiores nisi a. Quae doloribus
                    ipsum aliquam tenetur voluptates incidunt blanditiis sed
                    atque cumque.
                  </p>
                </div>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-white p-4">
      <div class="container" style="max-width: 1350px">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Featured Products</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_3.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section block-3 site-blocks-2 bg-light p-4">
      <div class="container" style="max-width: 1350px">
        <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Customers Also Like</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-4 owl-carousel">
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_1.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tank Top</a></h3>
                    <p class="mb-0">Finding perfect t-shirt</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/shoe_1.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Polo Shirt</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_3.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">T-Shirt Mockup</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item shadow border">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="images/cloth_2.jpg" alt="Image placeholder" class="img-fluid" />
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Corater</a></h3>
                    <p class="mb-0">Finding perfect products</p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

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
            <!-- this footer is specializer for alignement -->
            <div class="row" style="text-align: center">
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">About</h2>
                <ul class="list-unstyled">
                  <li>
                    <a href="#" class="d-block text-white-50">Out story</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Awards</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Our Team</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Career</a>
                  </li>
                </ul>
              </div>
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">Company</h2>
                <ul class="list-unstyled">
                  <li>
                    <a href="#" class="d-block text-white-50">Our services</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Clients</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Contact</a>
                  </li>
                  <li><a href="#" class="d-block text-white-50">Press</a></li>
                </ul>
              </div>
              <div class="col-md-4 mb-md-0 mb-4">
                <h2 class="footer-heading">Resources</h2>
                <ul class="list-unstyled">
                  <li><a href="#" class="d-block text-white-50">Blog</a></li>
                  <li>
                    <a href="#" class="d-block text-white-50">Newsletter</a>
                  </li>
                  <li>
                    <a href="#" class="d-block text-white-50">Privacy Policy</a>
                  </li>
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
    integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
    crossorigin="anonymous"></script>
  <script src="js/main.js"></script>
  <!-- preloader -->
  <script src="js/preloader.js"></script>
  <!-- preloader ends script -->
  <script>
    const imgs = document.querySelectorAll(".img-select a");
    const imgBtns = [...imgs];
    let imgId = 1;

    imgBtns.forEach((imgItem) => {
      imgItem.addEventListener("click", (event) => {
        event.preventDefault();
        imgId = imgItem.dataset.id;
        slideImage();
      });
    });

    function slideImage() {
      const displayWidth = document.querySelector(
        ".img-showcase img:first-child"
      ).clientWidth;

      document.querySelector(".img-showcase").style.transform = `translateX(${-(imgId - 1) * displayWidth
        }px)`;
    }

    window.addEventListener("resize", slideImage);
  </script>
  <!-- below is the ween nadha -->
  <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
</body>

</html>