<!DOCTYPE html>
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

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12">
            <div class="border p-4 rounded" role="alert">
              Returning customer? <a href="#">Click here</a> to login
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 mb-5 mb-md-0">
            <h2 class="h3 mb-3 text-black">Billing Details</h2>
            <div class="p-3 p-lg-5 border">
              <div class="form-group">
                <label for="c_country" class="text-black">Country <span class="text-danger">*</span></label>
                <select id="c_country" class="form-control">
                  <option value="1">Select a country</option>
                  <option value="2">bangladesh</option>
                  <option value="3">Algeria</option>
                  <option value="4">Afghanistan</option>
                  <option value="5">Ghana</option>
                  <option value="6">Albania</option>
                  <option value="7">Bahrain</option>
                  <option value="8">Colombia</option>
                  <option value="9">Dominican Republic</option>
                </select>
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

              <div class="form-group">
                <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)" />
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
                <label for="c_create_account" class="text-black" data-toggle="collapse" href="#create_an_account"
                  role="button" aria-expanded="false" aria-controls="create_an_account"><input type="checkbox" value="1"
                    id="c_create_account" />
                  Create an account?</label>
                <div class="collapse" id="create_an_account">
                  <div class="py-2">
                    <p class="mb-3">
                      Create an account by entering the information below. If
                      you are a returning customer please login at the top of
                      the page.
                    </p>
                    <div class="form-group">
                      <label for="c_account_password" class="text-black">Account Password</label>
                      <input type="email" class="form-control" id="c_account_password" name="c_account_password"
                        placeholder="" />
                    </div>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <label for="c_ship_different_address" class="text-black" data-toggle="collapse"
                  href="#ship_different_address" role="button" aria-expanded="false"
                  aria-controls="ship_different_address"><input type="checkbox" value="1"
                    id="c_ship_different_address" />
                  Ship To A Different Address?</label>
                <div class="collapse" id="ship_different_address">
                  <div class="py-2">
                    <div class="form-group">
                      <label for="c_diff_country" class="text-black">Country <span class="text-danger">*</span></label>
                      <select id="c_diff_country" class="form-control">
                        <option value="1">Select a country</option>
                        <option value="2">bangladesh</option>
                        <option value="3">Algeria</option>
                        <option value="4">Afghanistan</option>
                        <option value="5">Ghana</option>
                        <option value="6">Albania</option>
                        <option value="7">Bahrain</option>
                        <option value="8">Colombia</option>
                        <option value="9">Dominican Republic</option>
                      </select>
                    </div>

                    <div class="form-group row">
                      <div class="col-md-6">
                        <label for="c_diff_fname" class="text-black">First Name
                          <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_fname" name="c_diff_fname" />
                      </div>
                      <div class="col-md-6">
                        <label for="c_diff_lname" class="text-black">Last Name <span
                            class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_lname" name="c_diff_lname" />
                      </div>
                    </div>

                    <div class="form-group row">
                      <div class="col-md-12">
                        <label for="c_diff_companyname" class="text-black">Company Name
                        </label>
                        <input type="text" class="form-control" id="c_diff_companyname" name="c_diff_companyname" />
                      </div>
                    </div>

                    <div class="form-group row">
                      <div class="col-md-12">
                        <label for="c_diff_address" class="text-black">Address <span
                            class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_address" name="c_diff_address"
                          placeholder="Street address" />
                      </div>
                    </div>

                    <div class="form-group">
                      <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)" />
                    </div>

                    <div class="form-group row">
                      <div class="col-md-6">
                        <label for="c_diff_state_country" class="text-black">State / Country
                          <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_state_country" name="c_diff_state_country" />
                      </div>
                      <div class="col-md-6">
                        <label for="c_diff_postal_zip" class="text-black">Posta / Zip
                          <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_postal_zip" name="c_diff_postal_zip" />
                      </div>
                    </div>

                    <div class="form-group row mb-5">
                      <div class="col-md-6">
                        <label for="c_diff_email_address" class="text-black">Email Address
                          <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_email_address" name="c_diff_email_address" />
                      </div>
                      <div class="col-md-6">
                        <label for="c_diff_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="c_diff_phone" name="c_diff_phone"
                          placeholder="Phone Number" />
                      </div>
                    </div>
                  </div>
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
                <div class="p-3 p-lg-5 border">
                  <label for="c_code" class="text-black mb-3">Enter your coupon code if you have one</label>
                  <div class="input-group w-75">
                    <input type="text" class="form-control" id="c_code" placeholder="Coupon Code"
                      aria-label="Coupon Code" aria-describedby="button-addon2" />
                    <div class="input-group-append">
                      <button class="btn btn-dark btn-sm" type="button" id="button-addon2">
                        Apply
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row mb-5">
              <div class="col-md-12">
                <h2 class="h3 mb-3 text-black">Your Order</h2>
                <div class="p-3 p-lg-5 border">
                  <table class="table site-block-order-table mb-5">
                    <thead>
                      <th>Product</th>
                      <th>Total</th>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          Top Up T-Shirt <strong class="mx-2">x</strong> 1
                        </td>
                        <td>$250.00</td>
                      </tr>
                      <tr>
                        <td>Polo Shirt <strong class="mx-2">x</strong> 1</td>
                        <td>$100.00</td>
                      </tr>
                      <tr>
                        <td class="text-black font-weight-bold">
                          <strong>Cart Subtotal</strong>
                        </td>
                        <td class="text-black">$350.00</td>
                      </tr>
                      <tr>
                        <td class="text-black font-weight-bold">
                          <strong>Order Total</strong>
                        </td>
                        <td class="text-black font-weight-bold">
                          <strong>$350.00</strong>
                        </td>
                      </tr>
                    </tbody>
                  </table>

                  <div class="border p-3 mb-3">
                    <h3 class="h6 mb-0">
                      <a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false"
                        aria-controls="collapsebank">Direct Bank Transfer</a>
                    </h3>

                    <div class="collapse" id="collapsebank">
                      <div class="py-2">
                        <p class="mb-0">
                          Make your payment directly into our bank account.
                          Please use your Order ID as the payment reference.
                          Your order won’t be shipped until the funds have
                          cleared in our account.
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="border p-3 mb-3">
                    <h3 class="h6 mb-0">
                      <a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button"
                        aria-expanded="false" aria-controls="collapsecheque">Cheque Payment</a>
                    </h3>

                    <div class="collapse" id="collapsecheque">
                      <div class="py-2">
                        <p class="mb-0">
                          Make your payment directly into our bank account.
                          Please use your Order ID as the payment reference.
                          Your order won’t be shipped until the funds have
                          cleared in our account.
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="border p-3 mb-5">
                    <h3 class="h6 mb-0">
                      <a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button"
                        aria-expanded="false" aria-controls="collapsepaypal">Paypal</a>
                    </h3>

                    <div class="collapse" id="collapsepaypal">
                      <div class="py-2">
                        <p class="mb-0">
                          Make your payment directly into our bank account.
                          Please use your Order ID as the payment reference.
                          Your order won’t be shipped until the funds have
                          cleared in our account.
                        </p>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <button class="btn btn-dark btn-lg py-3 btn-block" onclick="window.location='visa.jsp'">
                      Proceed Payment
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- </form> -->
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