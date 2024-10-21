<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="fonts/hkgrotesk/stylesheet.2e9c9834.css">
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
				<li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
				<li class="breadcrumb-item active"><a href="categories">Cửa hàng</a></li>
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
						<div class="me-3 mb-3">
							Hiển thị <strong>1-12 </strong>trong <strong>158 </strong>sản
							phẩm
						</div>
						<div class="me-3 mb-3">
							<span class="me-2">Hiển thị</span><a
								class="product-grid-header-show active" href="#">12 </a><a
								class="product-grid-header-show " href="#">24 </a><a
								class="product-grid-header-show " href="#">Toàn bộ </a>
						</div>
						<div class="mb-3 d-flex align-items-center">
							<span class="d-inline-block me-2">Sắp xếp theo </span> <select
								class="form-select w-auto border-0">
								<option value="orderby_0">Toàn bộ</option>
								<option value="orderby_1">Hàng mới về</option>
								<option value="orderby_2">Nổi bật</option>
								<option value="orderby_3">Từ cao đến thấp</option>
								<option value="orderby_3">Từ thấp đến cao</option>
								<option value="orderby_3">Đang giảm giá</option>
							</select>
						</div>
					</header>
					<div class="row">
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<div class="ribbon ribbon-info">Hàng mới</div>
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494312-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Áo thun</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Áo thun trắng</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-590881-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Demin</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="admin/category/detail">Black
											blouse</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<div class="ribbon ribbon-primary">Giảm Giá</div>
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-596319-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Accessories</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">College jacket</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ethan-haddox-484912-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Denim</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Carrot-fit jeans</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494231-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Jackets</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Striped T-Shirt</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/averie-woodard-319832-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Shirts</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Short top</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<div class="ribbon ribbon-danger">hết hàng</div>
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/serrah-galos-494279-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Sweaters</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Ethnic Sweater</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/dmitriy-ilkevich-437760-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Coats</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Beige</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ian-dooley-347968-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">T-Shirts</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Skull Tee</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/alex-holyoake-571682-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Denim</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Trucker jacket</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/ao-456813-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Denim</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Blouse</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
						<!-- product-->
						<div class="col-xl-3 col-lg-4 col-sm-6">
							<div class="product">
								<div class="product-image">
									<img class="img-fluid"
										src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/product/kyle-loftus-592041-unsplash.jpg"
										alt="product" />
									<div class="product-hover-overlay">
										<a class="product-hover-overlay-link" href="detail.html"></a>
										<div class="product-hover-overlay-buttons">
											<a
												class="btn btn-outline-dark btn-product-left d-none d-sm-inline-block"
												href="#"><i class="fa fa-shopping-cart"></i></a><a
												class="btn btn-dark btn-buy" href="detail.html"><i
												class="fa-search fa"></i></a><a
												class="btn btn-outline-dark btn-product-right d-none d-sm-inline-block"
												href="#" data-bs-toggle="modal"
												data-bs-target="#exampleModal"><i
												class="fa fa-expand-arrows-alt"></i></a>
										</div>
									</div>
								</div>
								<div class="py-2">
									<p class="text-muted text-sm mb-1">Denim</p>
									<h3 class="h6 text-uppercase mb-1">
										<a class="text-dark" href="detail.html">Shirt</a>
									</h3>
									<span class="text-muted">$40.00</span>
								</div>
							</div>
						</div>
						<!-- /product-->
					</div>
					<!-- Pagination-->
					<nav class="d-flex justify-content-center mb-5 mt-3"
						aria-label="page navigation">
						<ul class="pagination">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"><span aria-hidden="true">Trước</span><span
									class="sr-only">Previous</span></a></li>
							<li class="page-item active"><a class="page-link" href="#">1
							</a></li>
							<li class="page-item"><a class="page-link" href="#">2 </a></li>
							<li class="page-item"><a class="page-link" href="#">3 </a></li>
							<li class="page-item"><a class="page-link" href="#">4 </a></li>
							<li class="page-item"><a class="page-link" href="#">5 </a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"><span aria-hidden="true">Tiếp</span><span
									class="sr-only">Next </span></a></li>
						</ul>
					</nav>
				</div>
				<!-- / Grid End-->
				<!-- Sidebar-->
				<div class="sidebar col-xl-3 col-lg-4 pr-xl-5 order-lg-1">
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#categoriesMenu" aria-expanded="false"
							aria-controls="categoriesMenu">Product Categories</a>
						<div class="expand-lg collapse" id="categoriesMenu">
							<div class="nav nav-pills flex-column mt-4 mt-lg-0">
								<a class="nav-link d-flex justify-content-between mb-2 "
									href="#"><span>Áo khoác / Jacket</span><span
									class="sidebar-badge"> 120</span></a>
								<div class="nav nav-pills flex-column ms-3">
									<a class="nav-link mb-2" href="#">Áo Hoodie / Sweater</a><a
										class="nav-link mb-2" href="#">Áo Len / Cardigan</a><a
										class="nav-link mb-2" href="#">Áo Gió</a><a
										class="nav-link mb-2" href="#">Áo khoác không tay / Gilê</a>
								</div>
								<a class="nav-link d-flex justify-content-between mb-2 active"
									href="#"><span>Quần</span><span class="sidebar-badge">
										55</span></a>
								<div class="nav nav-pills flex-column ms-3">
									<a class="nav-link mb-2" href="#">Quần Ngắn</a><a
										class="nav-link mb-2" href="#">Quần Dài</a><a
										class="nav-link mb-2" href="#">Quần Jogger</a>
								</div>
								<a class="nav-link d-flex justify-content-between mb-2 "
									href="#"><span>Áo</span><span class="sidebar-badge">
										80</span></a>
								<div class="nav nav-pills flex-column ms-3">
									<a class="nav-link mb-2" href="#">Áo thun</a><a
										class="nav-link mb-2" href="#">Áo dây</a><a
										class="nav-link mb-2" href="#">Áo Bomber</a><a
										class="nav-link mb-2" href="#">Áo Blazer</a>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#priceFilterMenu" aria-expanded="false"
							aria-controls="priceFilterMenu">Filter by price</a>
						<div class="expand-lg collapse" id="priceFilterMenu">
							<h6 class="sidebar-heading d-none d-lg-block">Giá</h6>
							<div class="mt-4 mt-lg-0" id="slider-snap"></div>
							<div class="nouislider-values">
								<div class="min">
									Từ <span id="slider-snap-value-lower"></span>
								</div>
								<div class="max">
									Đến <span id="slider-snap-value-upper"></span>
								</div>
								<input class="slider-snap-input" type="hidden" name="pricefrom"
									id="slider-snap-input-lower" value="40"> <input
									class="slider-snap-input" type="hidden" name="priceto"
									id="slider-snap-input-upper" value="110">
							</div>
						</div>
					</div>
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#brandFilterMenu" aria-expanded="true"
							aria-controls="brandFilterMenu">Filter by brand</a>
						<!-- Brand filter menu - this menu has .show class, so is expanded by default-->
						<div class="expand-lg collapse show" id="brandFilterMenu">
							<h6 class="sidebar-heading d-none d-lg-block">Thương hiệu</h6>
							<form class="mt-4 mt-lg-0" action="#">
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="brand0" type="checkbox"
											name="clothes-brand" checked> <label
											class="form-check-label" for="brand0">Calvin Klein <small>(18)</small></label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="brand1" type="checkbox"
											name="clothes-brand" checked> <label
											class="form-check-label" for="brand1">Levi Strauss <small>(30)</small></label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="brand2" type="checkbox"
											name="clothes-brand"> <label class="form-check-label"
											for="brand2">Hugo Boss <small>(120)</small></label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="brand3" type="checkbox"
											name="clothes-brand"> <label class="form-check-label"
											for="brand3">Tomi Hilfiger <small>(70)</small></label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="brand4" type="checkbox"
											name="clothes-brand"> <label class="form-check-label"
											for="brand4">Tom Ford <small>(110)</small></label>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#sizeFilterMenu" aria-expanded="false"
							aria-controls="sizeFilterMenu">Filter by size</a>
						<!-- Size filter menu-->
						<div class="expand-lg collapse" id="sizeFilterMenu">
							<h6 class="sidebar-heading d-none d-lg-block">Size</h6>
							<form class="mt-4 mt-lg-0" action="#">
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="size0" type="radio"
											name="size" checked> <label class="form-check-label"
											for="size0">S</label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="size1" type="radio"
											name="size"> <label class="form-check-label"
											for="size1">M</label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="size2" type="radio"
											name="size"> <label class="form-check-label"
											for="size2">L</label>
									</div>
								</div>
								<div class="mb-1">
									<div class="form-check">
										<input class="form-check-input" id="size3" type="radio"
											name="size"> <label class="form-check-label"
											for="size3">XL</label>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="sidebar-block px-3 px-lg-0">
						<a class="d-lg-none block-toggler" data-bs-toggle="collapse"
							href="#colourFilterMenu" aria-expanded="false"
							aria-controls="colourFilterMenu">Filter by colour</a>
						<!-- Size filter menu-->
						<div class="expand-lg collapse" id="colourFilterMenu">
							<h6 class="sidebar-heading d-none d-lg-block">Màu sắc</h6>
							<div class="mt-4 mt-lg-0">
								<ul class="list-inline mb-0 colours-wrapper">
									<li class="list-inline-item"><label class="btn-colour"
										for="colour_sidebar_Blue" style="background-color: #668cb9"
										data-allow-multiple> </label> <input class="input-invisible"
										type="checkbox" name="colour" value="value_sidebar_Blue"
										id="colour_sidebar_Blue"></li>
									<li class="list-inline-item"><label class="btn-colour"
										for="colour_sidebar_White" style="background-color: #fff"
										data-allow-multiple> </label> <input class="input-invisible"
										type="checkbox" name="colour" value="value_sidebar_White"
										id="colour_sidebar_White"></li>
									<li class="list-inline-item"><label class="btn-colour"
										for="colour_sidebar_Violet" style="background-color: #8b6ea4"
										data-allow-multiple> </label> <input class="input-invisible"
										type="checkbox" name="colour" value="value_sidebar_Violet"
										id="colour_sidebar_Violet"></li>
									<li class="list-inline-item"><label class="btn-colour"
										for="colour_sidebar_Red" style="background-color: #dd6265"
										data-allow-multiple> </label> <input class="input-invisible"
										type="checkbox" name="colour" value="value_sidebar_Red"
										id="colour_sidebar_Red"></li>
								</ul>
							</div>
						</div>
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
								<h2 class="mb-4 mt-4 mt-lg-1">Áo khoác</h2>
								<div
									class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-sm-between mb-4">
									<ul class="list-inline mb-2 mb-sm-0">
										<li class="list-inline-item h4 fw-light mb-0">65.00</li>
										<li class="list-inline-item text-muted fw-light"><del>90.00</del>
										</li>
									</ul>
									<div class="d-flex align-items-center">
										<ul class="list-inline me-2 mb-0">
											<li class="list-inline-item me-0"><i
												class="fa fa-star text-primary"></i></li>
											<li class="list-inline-item me-0"><i
												class="fa fa-star text-primary"></i></li>
											<li class="list-inline-item me-0"><i
												class="fa fa-star text-primary"></i></li>
											<li class="list-inline-item me-0"><i
												class="fa fa-star text-primary"></i></li>
											<li class="list-inline-item me-0"><i
												class="fa fa-star text-gray-300"></i></li>
										</ul>
										<span class="text-muted text-uppercase text-sm">25 đánh
											giá</span>
									</div>
								</div>
								<p class="mb-4 text-muted">blablablabla....</p>
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
											</label>
										</div>
										<div class="col-sm-6 col-lg-12 detail-option mb-3">
											<h6 class="detail-option-heading">
												Phân loại <span>(*)</span>
											</h6>
											<label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="material_0"> Hoodie <input
												class="input-invisible" type="radio" name="material"
												value="value_0" id="material_0" required>
											</label> <label
												class="btn btn-sm btn-outline-secondary detail-option-btn-label"
												for="material_1"> Cardigan <input
												class="input-invisible" type="radio" name="material"
												value="value_1" id="material_1" required>
											</label>
										</div>
										<div class="col-12 detail-option mb-3">
											<h6 class="detail-option-heading">
												Màu sắc <span>(*)</span>
											</h6>
											<ul class="list-inline mb-0 colours-wrapper">
												<li class="list-inline-item"><label class="btn-colour"
													for="colour_Blue" style="background-color: #668cb9">
												</label> <input class="input-invisible" type="radio" name="colour"
													value="value_Blue" id="colour_Blue" required></li>
												<li class="list-inline-item"><label class="btn-colour"
													for="colour_White" style="background-color: #fff">
												</label> <input class="input-invisible" type="radio" name="colour"
													value="value_White" id="colour_White" required></li>
												<li class="list-inline-item"><label class="btn-colour"
													for="colour_Violet" style="background-color: #8b6ea4">
												</label> <input class="input-invisible" type="radio" name="colour"
													value="value_Violet" id="colour_Violet" required></li>
												<li class="list-inline-item"><label class="btn-colour"
													for="colour_Red" style="background-color: #dd6265">
												</label> <input class="input-invisible" type="radio" name="colour"
													value="value_Red" id="colour_Red" required></li>
											</ul>
										</div>
										<div class="col-12 col-lg-6 detail-option mb-5">
											<label class="detail-option-heading fw-bold">Sản phẩm
												<span>(*)</span>
											</label> <input class="form-control detail-quantity" name="items"
												type="number" value="1">
										</div>
									</div>
									<ul class="list-inline">
										<li class="list-inline-item">
											<button class="btn btn-dark btn-lg mb-1" type="submit">
												<i class="fa fa-shopping-cart me-2"></i>Thêm vào giỏ hàng
											</button>
										</li>
										<li class="list-inline-item"><a
											class="btn btn-outline-secondary mb-1" href="#"> <i
												class="far fa-heart me-2"></i>Thêm vào yêu thích
										</a></li>
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
	<%@ include file="/commons/web/footer.jsp"%>;
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

		injectSvgSprite('Template/demo.bootstrapious.com/sell/1-2-0/icons/orion-svg-sprite.svg');
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
		var basePath = 'Template/demo.bootstrapious.com/sell/2-0-1/'
	</script>
	<script
		src="Template/demo.bootstrapious.com/sell/2-0-1/js/theme.30e7c8f9.js"></script>
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script
		src="Template/demo.bootstrapious.com/sell/2-0-1/js/demo.9833433a.js"></script>
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