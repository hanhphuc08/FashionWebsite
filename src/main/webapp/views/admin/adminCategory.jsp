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
<link rel="stylesheet"
	href="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Template/demo.bootstrapious.com/sell/2-0-1/fonts/hkgrotesk/stylesheet.2e9c9834.css">
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
	<style>
    .delete-icon {
        position: absolute;
        top: 10px;
        right: 10px;
        background-color: rgba(0, 0, 0, 0.6);
        color: white;
        border-radius: 50%;
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        z-index: 10;
    }

    .delete-icon:hover {
        background-color: rgba(255, 0, 0, 0.8);
    }

    .product-image {
        position: relative;
    }
</style>
</head>
<body>

	<!--  Begin Header -->
	<%@ include file="/commons/admin/headerAdmin.jsp"%>;
	<!-- End Header -->

	<!-- Hero Section-->
	<section class="hero">
		<div class="container">
			<!-- Breadcrumbs -->
			<ol class="breadcrumb justify-content-center">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/admin/home">Trang chủ</a></li>
				<li class="breadcrumb-item active">Cửa hàng</li>
			</ol>
			<!-- Hero Content-->
			<div class="hero-content pb-5 text-center">
				<h1 class="hero-heading">Toàn bộ sản phẩm</h1>
				<div class="row">
					<div class="col-xl-8 offset-xl-2">
						<p class="lead text-muted">“ Mang sản phẩm đến cho khách hàng
							bằng cái Tâm"</p>
					</div>
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
                        <a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/admin/addProducts">Thêm sản phẩm</a>
                   
				<div class="mb-3 d-flex align-items-center">
              	<span class="d-inline-block me-2">Sắp xếp theo </span>
              	<form action="${pageContext.request.contextPath}/admin/categories" method ="GET">
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
                 <div class="delete-icon">
				    <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="GET" onsubmit="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này không?');">
				        <input type="hidden" name="productCode" value="${o.productCode}" />
				        <button type="submit" class="btn btn-danger" style="border: none; background: none; color: white;">
				            <i class="fas fa-times"></i>
				        </button>
				    </form>
				</div>


                    
                    <img class="img-fluid" src="${o.image }" alt="${o.productName }"/>
                    <div class="product-hover-overlay">
                    	<a class="product-hover-overlay-link" href="${pageContext.request.contextPath}/admin/categoryDetail?productCode=${o.productCode}"></a>
                      <div class="product-hover-overlay-buttons">
                      	<a class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block" href="${pageContext.request.contextPath}/admin/manageCategory?productCode=${o.productCode}">
                      		<i class="fas fa-pen"></i>
                      	</a>
                      	<a class="btn btn-dark btn-buy" href="${pageContext.request.contextPath}/admin/categoryDetail?productCode=${o.productCode}">
                      		<i class="fa-search fa"></i></a>
                      		
                      </div>
                    </div>
                  </div>
                  
                  <div class="py-2">
                    <p class="text-muted text-sm mb-1">${o.categoryName}</p>
                    
                    <h3 class="h6 text-uppercase mb-1"><a class="text-dark"
                    	 href="${pageContext.request.contextPath}/admin/categoryDetail?productCode=${o.productCode}">
                    	 ${o.productName }</a>
                    </h3>
                    <span class="text-muted">${o.priceFormatted }</span>
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
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#priceFilterMenu" aria-expanded="false"
							aria-controls="priceFilterMenu">Filter by price</a>
						
					</div>
					
					
					
				</div>
				<!-- /Sidebar end-->
			</div>
		</div>
	</div>
	<!-- Quickview Modal    -->
	<div class="modal fade quickview" id="exampleModal" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<button class="close modal-close" type="button"
					data-bs-dismiss="modal" aria-label="Close">
					<svg class="svg-icon w-100 h-100 svg-icon-light align-middle">
              <use xlink:href="#close-1"> </use>
            </svg>
				</button>
				<div class="modal-body">
					<div class="ribbon ribbon-primary">Giảm giá</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="owl-carousel owl-theme owl-dots-modern detail-full"
								data-slider-id="1">
								<div class="detail-full-item-modal"
									style="background: center center url('https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-1.jpg') no-repeat; background-size: cover;">
								</div>
								<div class="detail-full-item-modal"
									style="background: center center url('https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-2.jpg') no-repeat; background-size: cover;">
								</div>
								<div class="detail-full-item-modal"
									style="background: center center url('https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-596319-detail-3.jpg') no-repeat; background-size: cover;">
								</div>
								<div class="detail-full-item-modal"
									style="background: center center url('https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-3.jpg') no-repeat; background-size: cover;">
								</div>
								<div class="detail-full-item-modal"
									style="background: center center url('https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-594535-unsplash-detail-4.jpg') no-repeat; background-size: cover;">
								</div>
							</div>
						</div>
						<div class="col-lg-6 d-flex align-items-center">
							<div>
								<h2 class="mb-4 mt-4 mt-lg-1">Áo thun nam trơn</h2>
								<div
									class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
									<ul class="list-inline mb-2 mb-sm-0">
										<li class="list-inline-item h4 fw-light mb-0">165.000</li>
										<li class="list-inline-item text-muted fw-light"><del>290.000</del>
										</li>
									</ul>
								</div>
								<p class="mb-4 text-muted">Áo thun trơn đơn giản với chất
									vải thấm hút mồ hôi tối đa.</p>
								<form action="#">
									<div class="row">
										<div class="col-sm-6 col-lg-12 detail-option mb-3">
											<h6 class="detail-option-heading">
												Size <span>(*)</span>
											</h6>
											<label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="size_0"> S <input class="input-invisible"
												type="radio" name="size" value="value_0" id="size_0"
												required>
											</label> <label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="size_1"> M <input class="input-invisible"
												type="radio" name="size" value="value_1" id="size_1"
												required>
											</label> <label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="size_2"> L <input class="input-invisible"
												type="radio" name="size" value="value_2" id="size_2"
												required>
											</label> <label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="size_2"> XL <input class="input-invisible"
												type="radio" name="size" value="value_3" id="size_3"
												required>
											</label>
										</div>
										<div class="col-12 col-lg-6 detail-option mb-5">
											<label class="detail-option-heading fw-bold">Sản phẩm
												<span>(*)</span>
											</label> <input class="form-control detail-quantity" name="items"
												type="number" value="1">

											<!-- Số lượng hàng có sẵn -->
											<span class="available-stock">Số lượng còn lại: <strong>20</strong></span>
										</div>
									</div>
									<ul class="list-inline">
										<li class="list-inline-item">
											<button class="btn btn-dark btn-lg mb-1" type="submit">
												<i class="fa fa-shopping-cart me-2"></i>Thêm vào giỏ hàng
											</button>
										</li>
									</ul>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="scrollTop">
		<i class="fa fa-long-arrow-alt-up"></i>
	</div>
	<button class="btn btn-primary btn-sm d-none d-lg-block" type="button"
		data-bs-toggle="collapse" data-bs-target="#style-switch"
		id="style-switch-button">
		<i class="fa fa-cog fa-2x"></i>
	</button>
	<div class="collapse" id="style-switch">
		<div class="p-3">
			<h6 class="text-uppercase mb-4">Select theme colour</h6>
			<form class="mb-3">
				<select class="form-select style-switch-select" name="colour"
					id="colour">
					<option value="">select colour variant</option>
					<option value="css/style.default.7acfaf01.css">blue</option>
					<option value="css/style.pink.bcb9f645.css">pink</option>
					<option value="css/style.green.eba38840.css">green</option>
					<option value="css/style.red.e64fe507.css">red</option>
					<option value="css/style.violet.00703a6d.css">violet</option>
				</select>
			</form>
			<p class="text-muted text-sm">Stylesheet switching is done with
				JavaScript and can cause a blink while page loads. This will not
				happen in your production code.</p>
		</div>
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
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/object-fit-images/ofi.min.js"></script>
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