<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PT2S Shop</title>
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
	<%@ include file="/commons/user/headerUser.jsp" %>;
	<!-- End Header -->

    <!-- Hero Section-->
    <section class="hero">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/user/home">Trang chủ</a></li>
          <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/user/cart">Giỏ hàng</a></li>
        </ol>
        <!-- Hero Content-->
        <div class="hero-content pb-5 text-center">
          <h1 class="hero-heading">Chi tiết giỏ hàng</h1>
          <div class="row">   
            <div class="col-xl-8 offset-xl-2"><p class="lead text-muted">Bạn đang có ${cartItems.size() > 0 ? cartItems.size() : "0"} sản phẩm trong giỏ hàng</p></div>
          </div>
        </div>
      </div>
    </section>
    <!-- Shopping Cart Section-->
    <section>
      <div class="container">
        <div class="row mb-5"> 
          <div class="col-lg-8">
            <div class="cart">
              <div class="cart-wrapper">
                <div class="cart-header text-center">
                  <div class="row">
                    <div class="col-5">sản phẩm</div>
                    <div class="col-2">Giá</div>
                    <div class="col-2">Sổ lượng</div>
                    <div class="col-2">Tổng</div>
                    <div class="col-1"></div>
                  </div>
                </div>
                <div class="cart-body">
                 			<c:if test="${cartItems.size() == 0}">
                                <div class="cart-item text-center">
                                    <p class="text-muted">Giỏ hàng của bạn hiện đang trống!</p>
                                </div>
                            </c:if>
                  <!-- Product-->
                  <div class="cart-item">
                  <c:forEach items="${cartItems}" var="item">
   
                    <div class="row d-flex align-items-center text-center">
                      <div class="col-5">
                        <div class="d-flex align-items-center"><a href="${pageContext.request.contextPath}/user/categoryDetail?productCode=${item.productCode}">
                        <img class="cart-item-img" src="${item.image}" alt="${item.productName}"></a>
                          <div class="cart-title text-start"><a class="text-uppercase text-dark" 
                          href="${pageContext.request.contextPath}/user/categoryDetail?productCode=${item.productCode}">
                          <strong>${item.productName}</strong>
                          </a><br><span class="text-muted text-sm">Size: ${item.size}</span><br>
                          <span class="text-muted text-sm">Colour: ${item.color }</span>
                          </div>
                        </div>
                      </div>
                      <div class="col-2">${item.priceFormatted}</div>
                      <div class="col-2">
							<div class="d-flex align-items-center">
								<%-- <a
									href="${pageContext.request.contextPath}/user/cart/?action=remove&productCode=${item.productCode}&size=${item.size }&quantityChange=-1"
									class="btn btn-items btn-items-decrease">
									<c:if test="${item.quantity <= 1}">style="pointer-events: none; opacity: 0.5;"</c:if>-</a> --%>
									
									<input class="form-control text-center input-items" type="text"
										value="${item.quantity}" readonly>
									<%-- <a
										href="${pageContext.request.contextPath}/user/cart?action=add&productCode=${item.productCode}&size=${item.size}&quantityChange=1"  
            								class="btn btn-items btn-items-increase" 
            							<c:if test="${item.quantity >= item.stockQuantity}">style="pointer-events: none; opacity: 0.5;"</c:if>>+</a> --%>
							</div>
						</div>
                      <div class="col-2 text-center">${item.totalPriceFormatted}</div>
                      <div class="col-1 text-center">
                     <form action="${pageContext.request.contextPath}/user/cart" method="POST">
    					<input type="hidden" name="action" value="delete">
    					<input type="hidden" name="productCode" value="${item.productCode}">
    					<input type="hidden" name="size" value="${item.size}">
    					<input type="hidden" name="quantity" value="${item.quantity}">
    						<button type="submit" class="cart-remove btn btn-link">
        						<i class="fa fa-times"></i>
    						</button>
					</form>
                     </div>
                    </div>
                    </c:forEach>
                  </div>
                  <!-- Product-->
                  
                </div>
              </div>
            </div>
            <div class="my-5 d-flex justify-content-between flex-column flex-lg-row"><a class="btn btn-link text-muted" href="${pageContext.request.contextPath}/user/categories"><i class="fa fa-chevron-left"></i>Tiếp tục mua sắm</a><a class="btn btn-dark" href="${pageContext.request.contextPath}/user/checkoutAddress">Tiến hành thanh toán<i class="fa fa-chevron-right"></i>                                                     </a></div>
          </div>
          <div class="col-lg-4">
            <div class="block mb-5">
              <div class="block-header">
                <h6 class="text-uppercase mb-0">Tổng tiền đơn hàng dự kiến</h6>
              </div>
              <div class="block-body bg-light pt-1">
                <p class="text-sm">Chi phí vận chuyển và chi phí bổ sung sẽ được tính dựa trên các sản phẩm bạn đã chọn.</p>
                <ul class="order-summary mb-0 list-unstyled">
                  <li class="order-summary-item"><span>Tổng tiền ước tính</span><span>${totalAmountFormatted }</span></li>
                  <li class="order-summary-item"><span>Phí vận chuyện</span><span>${shippingFormatted}</span></li>
                  <li class="order-summary-item"><span>Thuế dịch vụ</span><span>${serviceTaxFormatted }</span></li>
                  <li class="order-summary-item border-0"><span>Tổng tiền</span><strong class="order-summary-total">${finalTotalFormatted }</strong></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

	<!--  Begin Footer -->
	<%@ include file="/commons/web/footer.jsp"%>
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
    <script>var basePath = 'Template/demo.bootstrapious.com/sell/2-0-1/'</script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/theme.30e7c8f9.js"></script>
    <script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
  </body>
</html>