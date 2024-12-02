<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>P2TS Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<link rel="stylesheet" href="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/fonts/hkgrotesk/stylesheet.2e9c9834.css">
<!-- owl carousel-->
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/assets/owl.carousel.css">
<!-- Lightbox -->
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/css/glightbox.min.css">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/style.default.7acfaf01.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/css/custom.0a822280.css">
<!-- Favicon-->
<link rel="shortcut icon"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/favicon.png">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/solid.css"
	integrity="sha384-TbilV5Lbhlwdyc4RuIV/JhD8NR+BfMrvz4BL5QFa2we1hQu6wvREr3v6XSRfCTRp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/regular.css"
	integrity="sha384-avJt9MoJH2rB4PKRsJRHZv7yiFZn8LrnXuzvmZoD3fh1aL6aM6s0BBcnCvBe6XSD"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/brands.css"
	integrity="sha384-7xAnn7Zm3QC1jFjVc1A6v/toepoG3JXboQYzbM0jrPzou9OFXm/fY6Z/XiIebl/k"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/fontawesome.css"
	integrity="sha384-ozJwkrqb90Oa3ZNb+yKFW2lToAWYdTiF1vt8JiH5ptTGHTGcN7qdoR1F95e0kYyG"
	crossorigin="anonymous">
</head>
<body>
	<!--  Begin Header -->
	<%@ include file="/commons/web/header.jsp"%>;
	<!-- End Header -->


 <!-- Hero Section-->
    <section class="hero">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
          <li class="breadcrumb-item active">Cửa hàng        </li>
        </ol>
        <!-- Hero Content-->
        <div class="hero-content pb-5 text-center">
          <h1 class="hero-heading">Toàn bộ sản phẩm</h1>
          <div class="row">   
            <div class="col-xl-8 offset-xl-2"><p class="lead text-muted">“ Mang sản phẩm đến cho khách hàng bằng cái Tâm"</p></div>
          </div>
        </div>
      </div>
    </section>

    <div class="container-fluid">
      <div class="px-xl-5">
        <div class="row">
          <!-- Grid -->
          <div class="products-grid col-xl-9 col-lg-8 order-lg-2">
            <header class="product-grid-header">
             

						<div class="mb-3 d-flex align-items-center">
              	<span class="d-inline-block me-2">Sắp xếp theo </span>
              	<form action="${pageContext.request.contextPath}/categories" method ="GET">
              		<input type="hidden" name="typeCategoryCode" value="${not empty typeCategoryCode ? typeCategoryCode : ''}" />
              		<input type="hidden" name="categoryCode" value="${not empty categoryCode ? categoryCode : ''}" />
                	<select class="form-select w-auto border-0" name = "orderby" onchange = "this.form.submit()">
                  		<option value="0" ${orderby == 0 ? 'select' : ''}>Toàn bộ</option>
                  		<option value="1" ${orderby == 1 ? 'select' : ''}>Hàng mới về</option>
                  		<option value="2" ${orderby == 2 ? 'select' : ''}>Từ cao đến thấp</option>
                  		<option value="3" ${orderby == 3 ? 'select' : ''}>Từ thấp đến cao</option>
                	</select>
                	<input type = "hidden" name = "page" value="${currentPage }"/>
                </form>
              </div>
            </header>
            <div class="row">
            	<c:forEach items="${listP}" var= "o">	
              <!-- product-->
              <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="product">
                  <div class="product-image">
                    <img class="img-fluid" src="${o.image }" alt="${o.productName }"/>
                    <div class="product-hover-overlay">
                    	<a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/categoryDetail?productCode=${o.productCode}"></a>
                      <div class="product-hover-overlay-buttons">
                      	<a class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block" href="${pageContext.request.contextPath}/login">
                      		<i class="fa fa-shopping-cart"></i>
                      	</a>
                      	<a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/categoryDetail?productCode=${o.productCode}">
                      		<i class="fa-search fa"></i></a>
                      </div>
                    </div>
                  </div>
                  <div class="py-2">
                    <p class="text-muted text-sm mb-1">${o.categoryName}</p>
                    
                    <h3 class="h6 text-uppercase mb-1"><a class="text-dark"
                    	 href="${pageContext.request.contextPath}/categoryDetail?productCode=${o.productCode}">
                    	 ${o.productName }</a>
                    </h3>
                    <span class="text-muted">${o.price }</span>
                  </div>
                </div>
              </div>
              </c:forEach>
              <!-- /product-->

            </div>
            <!-- Pagination-->
					<nav class="d-flex justify-content-center mb-5 mt-3"
						aria-label="page navigation">
						<ul class="pagination">
							<!-- Nút "Trước" -->
							<li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
								<a class="page-link"
                              href="?typeCategoryCode=${typeCategoryCode}&categoryCode=${categoryCode}&page=${currentPage - 1}&orderby=${orderby}"
								aria-label="Previous">Trước</a>
							</li>

							<!-- Các trang -->
							<c:forEach begin="1" end="${totalPages}" var="i">
								<li class="page-item ${i == currentPage ? 'active' : ''}">
                                  <a class="page-link"
									 href="?typeCategoryCode=${typeCategoryCode}&categoryCode=${categoryCode}&page=${i}&orderby=${orderby}">${i}</a>
								</li>
							</c:forEach>

							<!-- Nút "Tiếp" -->
							<li
								class="page-item ${currentPage == totalPages ? 'disabled' : ''}">
								<a class="page-link"
                               href="?typeCategoryCode=${typeCategoryCode}&categoryCode=${categoryCode}&page=${currentPage + 1}&orderby=${orderby}"
                                aria-label="Next">Tiếp</a>
							</li>
						</ul>
					</nav>
				</div>
          <!-- / Grid End-->

          <!-- Sidebar-->
          <div class="sidebar col-xl-3 col-lg-4 pr-xl-5 order-lg-1">
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#categoriesMenu" aria-expanded="false"
							aria-controls="categoriesMenu"> Product Categories </a>
						<div class="expand-lg collapse" id="categoriesMenu">
							<div class="nav nav-pills flex-column mt-4 mt-lg-0">
								<!-- Lặp qua danh sách TypeCategory -->
								<c:forEach items="${listType}" var="type">
									<a class="nav-link d-flex justify-content-between mb-2" href="?typeCategoryCode=${type.typeCategoryCode}&page=1&orderby=${orderby}">
										<span>${type.typeCategoryName}</span>
									</a>
				
									<div class="nav nav-pills flex-column ms-3">
										<c:forEach items="${listC}" var="cate">
											<c:if
												test="${cate.typeCategoryCode == type.typeCategoryCode}">
												<a class="nav-link mb-2"
													href="?categoryCode=${cate.categoryCode}&page=1&orderby=${orderby}">
													${cate.categoryName} </a>
											</c:if>
										</c:forEach>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="sidebar-block px-3 px-lg-0"><a class="d-lg-none block-toggler" data-bs-toggle="collapse" href="#priceFilterMenu" aria-expanded="false" aria-controls="priceFilterMenu">Filter by price</a>
              
					
					
					
				</div>
				<!-- /Sidebar end-->
			</div>
		</div>
	</div>
	<!-- Quickview Modal    -->
	
	<div id="scrollTop">
		<i class="fa fa-long-arrow-alt-up"></i>
	</div>


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
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery/jquery.min.js"></script>
	<!-- Bootstrap JavaScript Bundle (Popper.js included)-->
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Owl Carousel-->
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel/owl.carousel.js"></script>
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
	<!-- NoUI Slider (price slider)-->
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.min.js"></script>
	<!-- Smooth scrolling-->
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
	<!-- Lightbox gallery-->
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/glightbox/js/glightbox.min.js">
		
	</script>
	<!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
	<script src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/object-fit-images/ofi.min.js"></script>
	<script>
		var basePath = '${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/'
	</script>
	<script
		src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/theme.30e7c8f9.js"></script>
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script
		src="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
	<script>
		var snapSlider = document.getElementById('slider-snap');

		noUiSlider.create(snapSlider, {
			start : [ 40, 110 ],
			snap : false,
			connect : true,
			step : 1,
			range : {
				'min' : 0,
				'max' : 250
			}
		});
		var snapValues = [ document.getElementById('slider-snap-value-lower'),
				document.getElementById('slider-snap-value-upper') ];
		var inputValues = [ document.getElementById('slider-snap-input-lower'),
				document.getElementById('slider-snap-input-upper') ];
		snapSlider.noUiSlider.on('update', function(values, handle) {
			snapValues[handle].innerHTML = values[handle];
		});

		snapSlider.noUiSlider.on('change', function(values, handle) {
			inputValues[handle].value = values[handle];
		});
	</script>
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js"></script>

</body>

</html>
                      	