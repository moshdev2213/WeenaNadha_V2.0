<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" />

  <title>Document</title>
</head>

<body>
  <style>
    @import url("https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap");

    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      list-style: none;
      font-family: "Montserrat", sans-serif;
    }

    body {
      background-color: #ffffff;
    }

    .container {
      margin: 20px auto;
      width: 800px;
      padding: 30px;
    }

    .card.box1 {
      width: 350px;
      height: 500px;
      background-color: #000000;
      color: #ffffff;
      border-radius: 0;
    }

    .card.box2 {
      width: 450px;
      height: 580px;
      background-color: #ffffff;
      border-radius: 0;
    }

    .text {
      font-size: 13px;
    }

    .box2 .btn.btn-primary.bar {
      width: 20px;
      background-color: transparent;
      border: none;
      color: #3ecc6d;
    }

    .box2 .btn.btn-primary.bar:hover {
      color: #baf0c3;
    }

    .box1 .btn.btn-primary {
      background-color: #000000;
      width: 45px;
      height: 45px;
      display: flex;
      justify-content: center;
      align-items: center;
      border: none;
      color: #ffffff;
    }

    .box1 .btn.btn-primary:hover {
      background-color: #f6f8f7;
      color: #000000;
    }

    .btn.btn-success {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background-color: #ddd;
      color: black;
      display: flex;
      justify-content: center;
      align-items: center;
      border: none;
    }

    .nav.nav-tabs {
      border: none;
      border-bottom: 2px solid #ddd;
    }

    .nav.nav-tabs .nav-item .nav-link {
      border: none;
      color: black;
      border-bottom: 2px solid transparent;
      font-size: 14px;
    }

    .nav.nav-tabs .nav-item .nav-link:hover {
      border-bottom: 2px solid #3ecc6d;
      color: #05cf48;
    }

    .nav.nav-tabs .nav-item .nav-link.active {
      border: none;
      border-bottom: 2px solid #000000;
    }

    .form-control {
      border: none;
      border-bottom: 1px solid #ddd;
      box-shadow: none;
      height: 20px;
      font-weight: 600;
      font-size: 14px;
      padding: 15px 0px;
      letter-spacing: 1.5px;
      border-radius: 0;
    }

    .inputWithIcon {
      position: relative;
    }

    img {
      width: 50px;
      height: 20px;
      object-fit: cover;
    }

    .inputWithIcon span {
      position: absolute;
      right: 0px;
      bottom: 9px;
      color: #000000;
      cursor: pointer;
      transition: 0.3s;
      font-size: 14px;
    }

    .form-control:focus {
      box-shadow: none;
      border-bottom: 1px solid #ddd;
    }

    .btn-outline-primary {
      color: black;
      background-color: #ddd;
      border: 1px solid #ddd;
    }

    .btn-outline-primary:hover {
      background-color: #05cf48;
      border: 1px solid #ddd;
    }

    .btn-check:active+.btn-outline-primary,
    .btn-check:checked+.btn-outline-primary,
    .btn-outline-primary.active,
    .btn-outline-primary.dropdown-toggle.show,
    .btn-outline-primary:active {
      color: #baf0c3;
      background-color: #3ecc6d;
      box-shadow: none;
      border: 1px solid #ddd;
    }

    .btn-group>.btn-group:not(:last-child)>.btn,
    .btn-group>.btn:not(:last-child):not(.dropdown-toggle),
    .btn-group>.btn-group:not(:first-child)>.btn,
    .btn-group>.btn:nth-child(n + 3),
    .btn-group> :not(.btn-check)+.btn {
      border-radius: 50px;
      margin-right: 20px;
    }

    form {
      font-size: 14px;
    }

    form .btn.btn-primary {
      width: 100%;
      height: 45px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      background-color: #000000;
      border: 1px solid #ddd;
      border-radius: 0px;
      transition: 0.5s;
    }

    form .btn.btn-primary:hover {
      /* background-color: #ffffff;
      color: #000000;
      border: #000000 1px solid; */
      transform: scale(1.04);
      transition: 0.5s;
    }

    @media (max-width: 750px) {
      .container {
        padding: 10px;
        width: 100%;
      }

      .text-green {
        font-size: 14px;
      }

      .card.box1,
      .card.box2 {
        width: 100%;
      }

      .nav.nav-tabs .nav-item .nav-link {
        font-size: 12px;
      }
    }

    .btn-primary:focus {
      box-shadow: 0 0 0 0.25rem rgba(214, 216, 219, 0.5);
    }

    @media (max-width: 767.98px) {
      .imgyy {
        position: relative;
        left: -50px;
      }
    }
  </style>
  <div class="container bg-light d-md-flex align-items-center shadow mt-xl-5">
    <div class="card box1 shadow-sm p-md-5 p-md-5 p-4">
      <div class="fw-bolder mb-4">
        <span class="fas fa-dollar-sign"></span><span class="ps-1">599,00</span>
      </div>
      <div class="d-flex flex-column">
        <div class="d-flex align-items-center justify-content-between text">
          <span class="">Commission</span>
          <span class="fas fa-dollar-sign"><span class="ps-1">1.99</span></span>
        </div>
        <div class="d-flex align-items-center justify-content-between text mb-4">
          <span>Total</span>
          <span class="fas fa-dollar-sign"><span class="ps-1">600.99</span></span>
        </div>
        <div class="border-bottom mb-4"></div>
        <div class="d-flex flex-column mb-4">
          <span class="far fa-file-alt text"><span class="ps-2">Invoice ID:</span></span>
          <span class="ps-3">SN8478042099</span>
        </div>
        <div class="d-flex flex-column mb-5">
          <span class="far fa-calendar-alt text"><span class="ps-2">Next payment:</span></span>
          <span class="ps-3">22 july,2018</span>
        </div>
        <div class="d-flex align-items-center justify-content-between text mt-5">
          <div class="d-flex flex-column text">
            <span>Customer Support:</span> <span>online chat 24/7</span>
          </div>
          <div class="btn btn-primary rounded-circle">
            <span class="fas fa-comment-alt"></span>
          </div>
        </div>
      </div>
    </div>
    <div class="card box2 shadow-sm">
      <div class="d-flex align-items-center justify-content-between p-md-5 p-4">
        <span class="h5 fw-bold m-0">Payment method</span>
        <div class="btn btn-primary bar">
          <span><img style="height: 50px; width: 50px" src="images/V 2.0b.png" alt="" class="imgyy"
              id="payimg" /></span>
        </div>
      </div>
      <ul class="nav nav-tabs mb-3 px-md-4 px-2">
        <li class="nav-item">
          <a class="nav-link px-2 active" aria-current="page" href="#">Card Payment</a>
        </li>
      </ul>

      <style>
        .payrad {
          appearance: none;
        }

        .paylabel {
          height: 45px;
          width: 45px;
          border-radius: 50px;
        }

        .fastylell {
          font-size: 25px;
          position: relative;
          top: 21%;
          left: 18%;
        }

        input[type="radio"]:checked+label {
          background-color: #cfd0d2;
        }
      </style>
      <form action="thankyou.jsp" method="">
        <div class="row">
          <div class="col-12">
            <div class="d-flex flex-column px-md-5 px-4">
              <span>Choose Card</span>
              <div class="mb-3 mt-1 d-flex align-content-sm-start">
                <div class="me-4">
                  <input class="payrad" type="radio" name="payment" value="1" id="paymas" onclick="chgpy()" checked />
                  <label for="paymas" class="paylabel">
                    <i class="fab fa-cc-mastercard fastylell"></i>
                  </label>
                </div>
                <div class="me-4">
                  <input class="payrad" type="radio" name="payment" value="2" id="payvisa" onclick="chgpy()" />
                  <label for="payvisa" class="paylabel">
                    <i class="fab fa-cc-visa fastylell"></i>
                  </label>
                </div>
                <div class="me-4">
                  <input class="payrad" type="radio" name="payment" value="3" id="payamex" onclick="chgpy()" />
                  <label for="payamex" class="paylabel">
                    <i class="fab fa-cc-amex fastylell"></i>
                  </label>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12">
            <div class="d-flex flex-column px-md-5 px-4 mb-4">
              <span>Credit Card Number</span>
              <div class="inputWithIcon">
                <input class="form-control" type="text" placeholder="5136 1845 5468 3894"
                  pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" />
                <span class="">
                  <img src="images/mastercard.png" id="paimg" alt="" style="width: 40px; height: 20px" />
                </span>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="d-flex flex-column ps-md-5 px-md-0 px-4 mb-4">
              <span>Expiration<span class="ps-1">Date</span></span>
              <div class="inputWithIcon">
                <input type="month" class="form-control" />
                <!-- <input type="month" name="" id=""> -->
                <!-- <span class="fas fa-calendar-alt"></span> -->
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="d-flex flex-column pe-md-5 px-md-0 px-4 mb-4">
              <span>Code CVV</span>
              <div class="inputWithIcon">
                <input type="tel" class="form-control" maxlength="3" pattern="[0-9]{3}" placeholder="123" />
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="col-12">
            <div class="d-flex flex-column px-md-5 px-4 mb-4">
              <span>Name</span>
              <div class="inputWithIcon">
                <input class="form-control text-uppercase" type="text" placeholder="John" />
                <span class="far fa-user"></span>
              </div>
            </div>
          </div>
          <div class="col-12 px-md-5 px-4 mt-3">
            <a style="text-decoration: none"><button type="submit" class="btn btn-primary w-100">
                $599.00
              </button></a>
            <!-- <div >Pay $599.00</div> -->
          </div>
        </div>
      </form>
    </div>
  </div>
  <script>
    // radio buttom validation
    function chgpy() {
      let paimg = document.getElementById("paimg");

      if (document.getElementById("paymas").checked)
        // console.log(document.getElementById("paymas").value);
        paimg.src = "images/mastercard.png";
      if (document.getElementById("payvisa").checked)
        // console.log(document.getElementById("payvisa").value);
        paimg.src = "images/visa1.png";
      if (document.getElementById("payamex").checked) {
        // console.log(document.getElementById("payamex").value);
        paimg.src = "images/american1.png";
      }

      // console.log(document.getElementById('payvisa').value);
    }
  </script>
  <!-- below is the ween nadha -->
  <script src="//code.tidio.co/r5typbnmc7v1ws5v7zbwyrx8bvqch6xv.js" async></script>
</body>

</html>