<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sell - Bootstrap 5 Ecommerce Template</title>
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
      <!--  Begin Header -->
	<header class="header">
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
	<!-- End Header -->
    <section class="product-details">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6 py-3 order-2 order-lg-1">
            <div class="owl-carousel owl-theme owl-dots-modern detail-full" data-slider-id="1">
              <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-1.jpg) no-repeat; background-size: cover;">     </div>
              <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-2.jpg) no-repeat; background-size: cover;">     </div>
              <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-3.jpg) no-repeat; background-size: cover;">     </div>
              <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-3.jpg) no-repeat; background-size: cover;">     </div>
              <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-4.jpg) no-repeat; background-size: cover;">     </div>
            </div>
          </div>
          <div class="d-flex align-items-center col-lg-6 col-xl-5 ps-lg-5 mb-5 order-1 order-lg-2">
            <div>
              <ul class="breadcrumb justify-content-start">
                <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                <li class="breadcrumb-item"><a href="category.html">Toàn bộ sản phẩm</a></li>
                <li class="breadcrumb-item active">Áo khoác</li>
              </ul>
              <h1 class="mb-4">Áo khoác</h1>
              <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                <ul class="list-inline mb-2 mb-sm-0">
                  <li class="list-inline-item h4 fw-light mb-0">65.00</li>
                  <li class="list-inline-item text-muted fw-light"> 
                    <del>90.00</del>
                  </li>
                </ul>
                <div class="d-flex align-items-center">
                  <ul class="list-inline me-2 mb-0">
                    <li class="list-inline-item me-0"><i class="fa fa-star text-primary"></i></li>
                    <li class="list-inline-item me-0"><i class="fa fa-star text-primary"></i></li>
                    <li class="list-inline-item me-0"><i class="fa fa-star text-primary"></i></li>
                    <li class="list-inline-item me-0"><i class="fa fa-star text-primary"></i></li>
                    <li class="list-inline-item me-0"><i class="fa fa-star text-gray-300"></i></li>
                  </ul><span class="text-muted text-uppercase text-sm">25 đánh giá</span>
                </div>
              </div>
              <p class="mb-4 text-muted">Blablabla......</p>
              <form action="#">
                <div class="row">
                  <div class="col-sm-6 col-lg-12 detail-option mb-3">
                    <h6 class="detail-option-heading">Size <span>(*)</span></h6>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_0"> S
                      <input class="input-invisible" type="radio" name="size" value="value_0" id="size_0" required>
                    </label>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_1"> M
                      <input class="input-invisible" type="radio" name="size" value="value_1" id="size_1" required>
                    </label>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_2"> L
                      <input class="input-invisible" type="radio" name="size" value="value_2" id="size_2" required>
                    </label>
                  </div>
                  <div class="col-sm-6 col-lg-12 detail-option mb-3">
                    <h6 class="detail-option-heading">Phân loại <span>(*)</span></h6>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="material_0"> Hoodie
                      <input class="input-invisible" type="radio" name="material" value="value_0" id="material_0" required>
                    </label>
                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="material_1"> Cardigan
                      <input class="input-invisible" type="radio" name="material" value="value_1" id="material_1" required>
                    </label>
                  </div>
                  <div class="col-12 detail-option mb-3">
                    <h6 class="detail-option-heading">Màu sắc <span>(*)</span></h6>
                    <ul class="list-inline mb-0 colours-wrapper">
                      <li class="list-inline-item">
                        <label class="btn-colour" for="colour_Blue" style="background-color: #668cb9"> </label>
                        <input class="input-invisible" type="radio" name="colour" value="value_Blue" id="colour_Blue" required>
                      </li>
                      <li class="list-inline-item">
                        <label class="btn-colour" for="colour_White" style="background-color: #fff"> </label>
                        <input class="input-invisible" type="radio" name="colour" value="value_White" id="colour_White" required>
                      </li>
                      <li class="list-inline-item">
                        <label class="btn-colour" for="colour_Violet" style="background-color: #8b6ea4"> </label>
                        <input class="input-invisible" type="radio" name="colour" value="value_Violet" id="colour_Violet" required>
                      </li>
                      <li class="list-inline-item">
                        <label class="btn-colour" for="colour_Red" style="background-color: #dd6265"> </label>
                        <input class="input-invisible" type="radio" name="colour" value="value_Red" id="colour_Red" required>
                      </li>
                    </ul>
                  </div>
                  <div class="col-12 col-lg-6 detail-option mb-5">
                    <label class="detail-option-heading fw-bold">Sản phẩm <span>(*)</span></label>
                    <input class="form-control detail-quantity" name="items" type="number" value="1">
                  </div>
                </div>
                <ul class="list-inline">
                  <li class="list-inline-item">
                    <button class="btn btn-dark btn-lg mb-1" type="submit"> <i class="fa fa-shopping-cart me-2"></i>Thêm vào giỏ hàng</button>
                  </li>
                  <li class="list-inline-item"><a class="btn btn-outline-secondary mb-1" href="#"> <i class="far fa-heart me-2"></i>Thêm vào yêu thích</a></li>
                </ul>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>


    <section class="mt-5">
      <div class="container">
        <ul class="nav nav-tabs flex-column flex-sm-row" role="tablist">
          <li class="nav-item"><a class="nav-link detail-nav-link active" data-bs-toggle="tab" href="#description" role="tab">Mô tả</a></li>
          <li class="nav-item"><a class="nav-link detail-nav-link" data-bs-toggle="tab" href="#reviews" role="tab">Đánh giá</a></li>
        </ul>
        <div class="tab-content py-4">
          <div class="tab-pane active px-3" id="description" role="tabpanel">
            <p class="text-muted">Blablablabla...............</p>
            <p class="text-muted">Blablablabla...............</p>
          </div>
          <div class="tab-pane" id="additional-information" role="tabpanel">
           
          </div>
          <div class="tab-pane" id="reviews" role="tabpanel">
            <div class="row mb-5">
              <div class="col-lg-10 col-xl-9">
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/person-1.jpg" alt="Han Solo"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Han Solo</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i>
                    </div>
                    <p class="text-muted">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/person-2.jpg" alt="Luke Skywalker"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Luke Skywalker</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                    </div>
                    <p class="text-muted">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. &quot;What's happened to me?&quot; he thought. It wasn't a dream.     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/person-3.jpg" alt="Princess Leia"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Princess Leia</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-gray-200"></i><i class="fa fa-xs fa-star text-gray-200"></i>
                    </div>
                    <p class="text-muted">His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table.     </p>
                  </div>
                </div>
                <div class="review d-flex">
                  <div class="flex-shrink-0 text-center me-4 me-xl-5"><img class="review-image" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/person-4.jpg" alt="Jabba Hut"><span class="text-uppercase text-muted">Dec 2018</span></div>
                  <div>
                    <h5 class="mt-2 mb-1">Jabba Hut</h5>
                    <div class="mb-2"><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i><i class="fa fa-xs fa-star text-warning"></i>
                    </div>
                    <p class="text-muted">Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame.     </p>
                  </div>
                </div>
                <div class="py-5 px-3">
                  <h5 class="text-uppercase mb-4">Đánh giá của bạn</h5>
                  <form class="form" id="contact-form" method="post" action="contact.php">
                    <div class="row">
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="name">Tên *</label>
                          <input class="form-control" type="text" name="name" id="name" placeholder="Họ và tên" required="required">
                        </div>
                      </div>
                      <div class="col-sm-6">
                        <div class="mb-4">
                          <label class="form-label" for="rating">Đánh giá *</label>
                          <select class="custom-select focus-shadow-0" name="rating" id="rating">
                            <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                            <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                            <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                            <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                            <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                          </select>
                        </div>
                      </div>
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="email">Email *</label>
                      <input class="form-control" type="email" name="email" id="email" placeholder="Nhập email" required="required">
                    </div>
                    <div class="mb-4">
                      <label class="form-label" for="review">Viết đánh giá *</label>
                      <textarea class="form-control" rows="4" name="review" id="review" placeholder="Đánh gía của bạn" required="required"></textarea>
                    </div>
                    <button class="btn btn-outline-dark" type="submit">Hoàn tất đánh giá </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



    <section class="my-5">
      <div class="container">
        <header class="text-center">
          <h6 class="text-uppercase mb-5">Sản phẩm tương tự</h6>
        </header>
        <div class="row">
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image">
                <div class="ribbon ribbon-info">Mới</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494312-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Jackets</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">White Tee</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-590881-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Black blouse</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image">
                <div class="ribbon ribbon-primary">Giảm giá</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-596319-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Accessories</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">College jacket</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ethan-haddox-484912-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Denim</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Carrot-fit jeans</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494231-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Jackets</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Striped T-Shirt</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
          <!-- product-->
          <div class="col-lg-2 col-md-4 col-6">
            <div class="product">
              <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/averie-woodard-319832-unsplash.jpg" alt="product"/>
                <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="detail.html"></a>
                  <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="detail.html"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                  </div>
                </div>
              </div>
              <div class="py-2">
                <p class="text-muted text-sm mb-1">Shirts</p>
                <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="detail.html">Short top</a></h3><span class="text-muted">$40.00</span>
              </div>
            </div>
          </div>
          <!-- /product-->
        </div>
      </div>
    </section>
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
  <!--  Begin Footer -->
	<%@ include file="/commons/web/footer.jsp" %>;
	<!-- End Footer -->


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