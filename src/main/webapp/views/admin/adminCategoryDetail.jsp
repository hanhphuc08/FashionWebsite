<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>P2TS Shop</title>
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
	<%@ include file="/commons/admin/header.jsp" %>;
	<!-- End Header -->

     <!-- Hero Section-->
    <section class="product-details">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6 py-3 order-2 order-lg-1">
                    <div class="owl-carousel owl-theme owl-dots-modern detail-full" data-slider-id="1">
                        <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-1.jpg) no-repeat; background-size: cover;"></div>
                        <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-2.jpg) no-repeat; background-size: cover;"></div>
                        <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-3.jpg) no-repeat; background-size: cover;"></div>
                        <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-3.jpg) no-repeat; background-size: cover;"></div>
                        <div class="detail-full-item" style="background: center center url(https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-4.jpg) no-repeat; background-size: cover;"></div>
                    </div>
                </div>
                <div class="align-items-start col-lg-6 col-xl-5 ps-lg-5 mb-5 order-1 order-lg-2">
                    <div>
                        <ul class="breadcrumb justify-content-start">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/home">Trang chủ</a></li>
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/categories">Toàn bộ sản phẩm</a></li>
                            <li class="breadcrumb-item active">Áo khoác</li>
                        </ul>
                        <h3 class="mb-4">Áo thun nam trơn</h3>
                        <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
                            <ul class="list-inline mb-2 mb-sm-0">
                                <li class="list-inline-item h4 fw-light mb-0">165.000</li>
                                <li class="list-inline-item text-muted fw-light">
                                    <del>290.000</del>
                                </li>
                            </ul>
                        </div>
                        <p class="text-muted">Áo thun trơn đơn giản với chất vải thấm hút mồ hôi tối đa.</p>
    
                        <form action="#">
                            <div class="row mb-3">
                                <div class="col-sm-6 detail-option">
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
                                    <label class="btn btn-sm btn-outline-secondary detail-option-btn-label" for="size_3"> XL
                                        <input class="input-invisible" type="radio" name="size" value="value_3" id="size_3" required>
                                    </label>
                                </div>
                            </div>
    
                            <div class="row mb-3">
                                <div class="col-sm-6 detail-option">
                                    <label class="detail-option-heading fw-bold">Sản phẩm <span>(*)</span></label>
                                    <div class="d-flex align-items-center">
                                        <input class="form-control detail-quantity" name="items" type="number" value="1">
                                        <!-- Số lượng hàng có sẵn -->
                                        <span class="available-stock ms-2">Số lượng còn lại: <strong>20</strong></span> 
                                    </div>
                                </div>
                                <div class="col-sm-6 detail-option">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <button class="btn btn-dark btn-lg mb-1" type="submit"> <i class="fa fa-shopping-cart me-2"></i>Thêm vào giỏ hàng</button>
                                </li>
                            </ul>
                        </div>
                            </div>
                        </form>
                        <div class="mt-2">
                            <h6 class="detail-option-heading">Mô tả sản phẩm</h6>
                            <p class="text-muted my-2">1. Kiểu sản phẩm: Áo thun trơn tay ngắn</p>
                            <p class="text-muted my-2">2. Co giãn tốt, chống co rút tốt, giữ form tốt dù có giặt qua nhiều nước, thấm hút và thoát mồ hôi tốt.</p>
                            <p class="text-muted my-2">3. Chất liệu: 100% cotton</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="mt-5">
        <div class="container">
            <ul class="nav nav-tabs flex-column flex-sm-row" role="tablist">
                <li class="nav-item"><a class="nav-link detail-nav-link" data-bs-toggle="tab" role="tab"></a></li>
            </ul>
            <div class="tab-content py-4">
                <div class="tab-pane" id="additional-information" role="tabpanel"></div>
            </div>
        </div>
    </section>

      <section class="my-5">
        <div class="container">
          <header class="text-center">
            <h4 class="text-uppercase mb-5">Sản phẩm tương tự</h4>
          </header>
          <div class="row">
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image">
                  <div class="ribbon ribbon-info">Mới</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494312-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Jackets</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">White Tee</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-590881-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Denim</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">Black blouse</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image">
                  <div class="ribbon ribbon-primary">Giảm giá</div><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-596319-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Accessories</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">College jacket</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ethan-haddox-484912-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Denim</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">Carrot-fit jeans</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494231-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Jackets</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">Striped T-Shirt</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
            <!-- product-->
            <div class="col-lg-2 col-md-4 col-6">
              <div class="product">
                <div class="product-image"><img class="img-fluid" src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/averie-woodard-319832-unsplash.jpg" alt="product"/>
                  <div class="product-hover-overlay"><a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/user/categoryDetail"></a>
                    <div class="product-hover-overlay-buttons"><a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/user/categoryDetail"><i class="fa-search fa"></i><span class="btn-buy-label ms-2">Xem</span></a>
                    </div>
                  </div>
                </div>
                <div class="py-2">
                  <p class="text-muted text-sm mb-1">Shirts</p>
                  <h3 class="h6 text-uppercase mb-1"><a class="text-dark" href="${pageContext.request.contextPath}/user/categoryDetail">Short top</a></h3><span class="text-muted">$40.00</span>
                </div>
              </div>
            </div>
            <!-- /product-->
          </div>
        </div>
      </section>
  <!--  Begin Footer -->
	<%@ include file="/commons/web/footer.jsp" %>
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