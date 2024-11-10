<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>UserAccount</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/fonts/hkgrotesk/stylesheet.2e9c9834.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/assets/owl.carousel.css">
    <!-- Lightbox -->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/css/glightbox.min.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/style.default.7acfaf01.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/custom.0a822280.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/solid.css" integrity="sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/regular.css" integrity="sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/brands.css" integrity="sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/fontawesome.css" integrity="sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG" crossorigin="anonymous">
  </head>
  <body>
    

      <!-- Top Bar-->
      <div class="top-bar">
        <div class="container-fluid">
          <div class="row d-flex align-items-center">
            <div class="col-sm-7 d-none d-sm-block">
              <ul class="list-inline topbar-text mb-0">
                <li class="list-inline-item pe-3 me-0">
                  <svg class="svg-icon me-2">
                    <use xlink:href="#calls-1"> </use>
                  </svg>0362 980 918
                </li>
                <li class="list-inline-item px-3 border-start d-none d-lg-inline-block">Miễn phí vận chuyển cho đơn hàng từ $300</li>
              </ul>
            </div>
            <div class="col-sm-5 d-flex justify-content-end">
              <!-- Language Dropdown-->
              <div class="dropdown border-end px-3"><a class="dropdown-toggle topbar-link" id="langsDropdown" href="#" data-bs-toggle="dropdown" data-bs-display="static" aria-haspopup="true" aria-expanded="false"><img class="topbar-flag" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/gb.svg" alt="english">English</a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated" aria-labelledby="langsDropdown"><a class="dropdown-item text-sm" href="#"><img class="topbar-flag" src="https://st.quantrimang.com/photos/image/2021/09/05/Co-Vietnam.png" alt="vietnam">VietNam</a><a class="dropdown-item text-sm" href="#"> <img class="topbar-flag" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/fr.svg" alt="french">French</a></div>
              </div>
              <!-- Currency Dropdown-->
              <div class="dropdown ps-3 ms-0"><a class="dropdown-toggle topbar-link" id="currencyDropdown" href="#" data-bs-toggle="dropdown" data-bs-display="static" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-dollar-sign text-xs align-middle mt-n1 me-2"> </i>USD</a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animated" aria-labelledby="currencyDropdown"><a class="dropdown-item text-sm" href="#"> <i class="fas fa-euro-sign text-xs align-middle mt-n1 me-2"> </i>EUR</a><a class="dropdown-item text-sm" href="#"><i> <span>₫</span> </i> VND</a></div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Top Bar End-->
      <!-- Navbar-->
      <nav class="navbar navbar-expand-lg navbar-sticky navbar-airy navbar-light bg-white bg-fixed-white">
        <div class="container-fluid">  
          <!-- Navbar Header  --><a class="navbar-brand" href="${pageContext.request.contextPath}/user/home"><svg class="navbar-brand-svg" viewBox="0 0 231 77" width="231" height="77" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path class="navbar-brand-svg-text" d="M217 613 c-4 -3 -7 -94 -7 -200 l0 -194 43 3 42 3 3 63 3 62 43 0 c83 0 156 80 142 155 -9 47 -50 92 -94 105 -41 11 -165 14 -175 3z m171 -95 c7 -7 12 -21 12 -33 0 -31 -19 -45 -62 -45 l-38 0 0 45 0 45 38 0 c21 0 43 -5 50 -12z M720 601 c-38 -20 -85 -80 -73 -92 19 -18 69 -13 91 9 15 15 34 22 60 22 43 0 62 -14 62 -47 0 -18 -14 -30 -77 -60 -72 -35 -80 -42 -105 -92 -16 -30 -28 -70 -28 -88 l0 -34 148 3 147 3 0 40 0 40 -92 3 c-51 1 -93 6 -93 11 0 14 34 38 75 52 21 8 57 31 78 51 37 35 39 40 35 83 -3 25 -14 55 -24 67 -44 48 -142 63 -204 29z M1100 575 l0 -45 50 0 50 0 0 -156 0 -155 43 3 42 3 3 152 3 152 47 3 47 3 0 40 0 40 -142 3 -143 3 0 -46z M1593 604 c-40 -20 -67 -74 -59 -118 8 -43 39 -70 111 -100 71 -29 89 -50 61 -72 -29 -21 -61 -17 -93 10 l-29 24 -32 -20 c-39 -25 -40 -32 -4 -68 28 -27 86 -50 127 -50 38 1 103 38 119 69 39 75 2 138 -105 181 -49 19 -64 30 -64 45 0 27 55 33 80 9 15 -16 19 -16 51 -1 40 19 43 36 12 64 -51 46 -115 56 -175 27z M1980 279 c-9 -16 -8 -26 5 -45 8 -13 22 -24 30 -24 19 0 45 28 45 49 0 41 -61 57 -80 20z" transform="translate(0 77) scale(0.1,-0.1)" fill="#212529"/>

</svg></a>
          <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mx-auto">
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/home">Trang chủ</a>
              </li>
              
              <li class="nav-item"><a class="nav-link" href="#">Thương hiệu</a>
              </li>
               
               <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/user/categories">Sản phẩm</a>
              </li>
             
              <li class="nav-item"><a class="nav-link" href="#">Giới thiệu</a>
              </li>
              
              <li class="nav-item"><a class="nav-link" href="#">Liên hệ</a>
              </li>
             
            </ul>
            <div class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
             <!-- Search Button-->
              <div class="nav-item navbar-icon-link" data-bs-toggle="search">
                <svg class="svg-icon">
                  <use xlink:href="#search-1"> </use>
                </svg>
              </div>
              
              <!-- Cart Dropdown-->
              <div class="nav-item dropdown"><a class="navbar-icon-link d-lg-none" href="cart.html"> 
                  <svg class="svg-icon">
                    <use xlink:href="#cart-1"> </use>
                  </svg><span class="text-sm ms-2 ms-lg-0 text-uppercase text-sm fw-bold d-none d-sm-inline d-lg-none">giỏ hàng</span></a>
                  <div class="d-none d-lg-block"><a class="navbar-icon-link" id="cartdetails" href="cart" data-bs-target="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <svg class="svg-icon">
                      <use xlink:href="#cart-1"> </use>
                    </svg>
                    <div class="navbar-icon-link-badge">3                         </div></a>
                  <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end p-4" aria-labelledby="cartdetails">
                    <div class="navbar-cart-product-wrapper">
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-ian-dooley-347968-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                            <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">Skull Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-kyle-loftus-596319-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                            <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">Transparent Blouse</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                      <!-- cart item-->
                      <div class="navbar-cart-product"> 
                        <div class="d-flex align-items-center"><a href="detail.html"><img class="img-fluid navbar-cart-product-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/product-square-serrah-galos-494312-unsplash.jpg" alt="..."></a>
                          <div class="w-100"><a class="navbar-cart-product-close" href="#"><i class="fa fa-times">                                                   </i></a>
                          <div class="ps-3"> <a class="navbar-cart-product-link" href="detail.html">White Tee</a><small class="d-block text-muted">Quantity: 1 </small><strong class="d-block text-sm">$75.00 </strong></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- total price-->
                    <div class="navbar-cart-total"><span class="text-uppercase text-muted">Tổng tiển</span><strong class="text-uppercase">$75.00</strong></div>
                    <!-- buttons-->
                    <div class="d-flex justify-content-between"><a class="btn btn-link text-dark me-3" href="cart">giỏ hàng<i class="fa-arrow-right fa"></i></a><a class="btn btn-outline-dark" href="checkout1.html">Thanh toán</a></div>
                  </div>
                </div>
              </div>

              <!-- User Not Logged - link to login page-->
              <div class="nav-item dropdown"><a class="navbar-icon-link" id="userdetails" href="#" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <svg class="svg-icon">
                    <use xlink:href="#male-user-1"> </use>
                  </svg></a>
                <div class="dropdown-menu dropdown-menu-animated dropdown-menu-end" aria-labelledby="userdetails"> <a class="dropdown-item" href="customer-orders.html">Đơn hàng</a><a class="dropdown-item" href="${pageContext.request.contextPath}/user/UserAddress">Địa chỉ</a><a class="dropdown-item" href="${pageContext.request.contextPath}/user/UserAccount">Hồ sơ của tôi</a>
                  <div class="dropdown-divider my-0"></div><a class="dropdown-item" href="login">Đăng xuất</a>
                </div>
              </div>
      </nav>
      <!-- /Navbar -->
      <!-- Fullscreen search area-->
      <div class="search-area-wrapper">
        <div class="search-area d-flex align-items-center justify-content-center">
          <div class="close-btn">
            <svg class="svg-icon svg-icon-light w-3rem h-3rem">
              <use xlink:href="#close-1"> </use>
            </svg>
          </div>
          <form class="search-area-form" action="#">
            <div class="mb-4 position-relative">
              <input class="search-area-input" type="search" name="search" id="search" placeholder="What are you looking for?">
              <button class="search-area-button" type="submit">
                <svg class="svg-icon">
                  <use xlink:href="#search-1"> </use>
                </svg>
              </button>
            </div>
          </form>
        </div>
      </div>
      <!-- /Fullscreen search area-->
    </header>
    
    <!-- Hero Section-->
    <section class="hero">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
          <li class="breadcrumb-item active">Hồ sơ của tôi</li>
        </ol>
        <!-- Hero Content-->
        <div class="hero-content pb-5 text-center">
          <h1 class="hero-heading">Hồ Sơ của tôi</h1>
          <div class="row">   
            <div class="col-xl-8 offset-xl-2"><p class="lead text-muted">Quản lý thông tin hồ sơ để bảo mật tài khoản</p></div>
          </div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row">
          <div class="col-lg-8 col-xl-9">
            <div class="block mb-5">
              <div class="block-header"><strong class="text-uppercase">Thay đổi mật khẩu</strong></div>
              <div class="block-body">
                <form>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="password_old">Mật khẩu cũ</label>
                        <input class="form-control" id="password_old" type="password">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="text-center mt-4">
                        <button class="btn btn-outline-dark" type="submit" href="forgotPassword">không được quên mật khẩu</button>
                      </div>
                    </div>
                  </div>
                  <!-- /.row-->
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="password_1">Mật khẩu mới</label>
                        <input class="form-control" id="password_1" type="password">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="password_2">Nhập lại mật khẩu mới</label>
                        <input class="form-control" id="password_2" type="password">
                      </div>
                    </div>
                    <div class="text-center mt-4">
                      <button class="btn btn-outline-dark" type="submit"><i class="far fa-save me-2"></i>Thay đổi mật khẩu</button>
                    </div>
                  </div>
                <form>
                  
                 
                      
              </div>
            </div>
            <div class="block mb-5">
              <div class="block-header"><strong class="text-uppercase">Thông tin tài khoản</strong></div>
              <div class="block-body">
                <form>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="Fullname">Tên</label>
                        <input class="form-control" id="Fullname" type="text">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-control" id="email" type="text">
                      </div>
                    </div>
                  </div>
                  <!-- /.row-->
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="phone">Số điện thoại</label>
                        <input class="form-control" id="phone" type="text">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="DateOfBirth">Ngày sinh</label>
                        <input class="form-control" id="DateOfBirth" type="date">
                      </div>
                    </div>
                  </div>
                  <!-- /.row-->
                  <div class="text-center mt-4">
                    <button class="btn btn-outline-dark" type="submit"><i class="far fa-save me-2"></i>Lưu thay đổi</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <!-- Customer Sidebar-->
          <div class="col-xl-3 col-lg-4 mb-5">
            <div class="customer-sidebar card border-0"> 
              <div class="customer-profile"><a class="d-inline-block" href="#"><img class="img-fluid rounded-circle customer-image shadow" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-589739-unsplash-avatar.jpg" alt=""></a>
                <h5>Anhthu</h5>
                <p class="text-muted text-sm mb-0">ở nhà</p>
              </div>
              <nav class="list-group customer-nav"><a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="customer-orders.html"><span>
                    <svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#paper-bag-1"> </use>
                    </svg>Đơn hàng</span>
                  <div class="badge rounded-pill bg-dark fw-normal px-3">5</div></a><a class="active list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="customer-account.html"><span>
                    <svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#male-user-1"> </use>
                    </svg>Hồ sơ của tôi</span></a><a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="${pageContext.request.contextPath}/user/UserAccount"><span>
                    <svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#navigation-map-1"> </use>
                    </svg>Địa chỉ</span></a><a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="${pageContext.request.contextPath}/user/UserAddress"><span>
                    <svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#exit-1"> </use>
                    </svg>Đăng xuẩt</span></a>
              </nav>
            </div>
          </div>
          <!-- /Customer Sidebar-->
        </div>
      </div>
    </section>
 <!--  Begin Footer -->
	<%@ include file="/commons/web/footer.jsp" %>;
	<!-- End Footer -->
    
    <div id="scrollTop"><i class="fa fa-long-arrow-alt-up"></i></div>
    <button class="btn btn-primary btn-sm d-none d-lg-block" type="button" data-bs-toggle="collapse" data-bs-target="#style-switch" id="style-switch-button"><i class="fa fa-cog fa-2x"></i></button>
    <div class="collapse" id="style-switch">
      <div class="p-3">
        <h6 class="text-uppercase mb-4">Select theme colour</h6>
        <form class="mb-3">
          <select class="form-select style-switch-select" name="colour" id="colour">
            <option value="">select colour variant</option>
            <option value="css/style.default.7acfaf01.css">blue</option>
            <option value="css/style.pink.bcb9f645.css">pink</option>
            <option value="css/style.green.eba38840.css">green</option>
            <option value="css/style.red.e64fe507.css">red</option>
            <option value="css/style.violet.00703a6d.css">violet</option>
          </select>
        </form>
        <p class="text-muted text-sm">Stylesheet switching is done with JavaScript and can cause a blink while page loads. This will not happen in your production code.</p>
      </div>
    </div>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }
      // this is set to Bootstrapious website as you cannot 
      // inject local SVG sprite (using only 'icons/orion-svg-sprite.a4dea202.svg' path)
      // while using file:// protocol
      // pls don't forget to change to your domain :)
      injectSvgSprite('${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/1-2-0/icons/orion-svg-sprite.svg'); 
      
    </script>
    <!-- jQuery-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JavaScript Bundle (Popper.js included)-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Owl Carousel-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/owl.carousel.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
    <!-- NoUI Slider (price slider)-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.min.js"></script>
    <!-- Smooth scrolling-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Lightbox gallery-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/js/glightbox.min.js"> </script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/object-fit-images/ofi.min.js"></script>
    <script>var basePath = ''</script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/theme.30e7c8f9.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
  </body>
</html>