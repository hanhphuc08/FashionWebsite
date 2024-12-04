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
	<%@ include file="/commons/user/headerUser.jsp"%>;
	<!-- End Header -->

	<!-- Hero Section-->
	<section class="hero">
		<div class="container">
			<!-- Breadcrumbs -->
			<ol class="breadcrumb justify-content-center">
				<li class="breadcrumb-item"><a
					href="${pageContext.request.contextPath}/user/home">Trang chủ</a></li>
				<li class="breadcrumb-item active">Thanh toán</li>
			</ol>
			<!-- Hero Content-->
			<div class="hero-content pb-5 text-center">
				<h1 class="hero-heading">Thanh toán</h1>
				<div class="row">
					<div class="col-xl-8 offset-xl-2">
						<p class="lead text-muted">Chọn phương thức thanh toán</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Checkout-->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<ul class="custom-nav nav nav-pills mb-5">
						<li class="nav-item w-25"><a
							class="nav-link text-sm disabled"
							href="${pageContext.request.contextPath}/user/checkoutAddress">Địa
								chỉ</a></li>
						<li class="nav-item w-25"><a
							class="nav-link text-sm disabled"
							href="${pageContext.request.contextPath}/user/checkoutReview">Đơn
								hàng</a></li>
						<li class="nav-item w-50"><a class="nav-link text-sm active"
							href="${pageContext.request.contextPath}/user/checkoutPayment">Phương
								thức thanh toán</a></li>
					</ul>
					<div class="mb-5">
						<div id="accordion" role="tablist">
							<div class="block mb-3">
								<div class="block-header" id="headingOne" role="tab">
									<strong><a class="accordion-link"
										data-bs-toggle="collapse" href="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">TÀI KHOẢN
											NGÂN HÀNG</a></strong>
								</div>
								
								<div class="collapse show" id="collapseOne" role="tabpanel"
									aria-labelledby="headingOne" data-parent="#accordion">
									<div class="block-body">
										<form
											action="${pageContext.request.contextPath}/user/checkoutPayment"
											method="POST">
											<div class="row">
												<!-- Thông tin chuyển khoản -->
												<div class="col-md-6">
													<div class="mb-4">
														<label class="form-label" for="card-name">Tên Ngân
															hàng</label> <input class="form-control" type="text"
															name="card-name" id="card-name" value="Ngân hàng VCB"
															readonly>
													</div>

													<div class="mb-4">
														<label class="form-label" for="card-number">Số tài
															khoản</label> <input class="form-control" type="text"
															name="card-number" id="card-number" value="1031454525"
															readonly>
													</div>

													<div class="mb-4">
														<label class="form-label" for="name-card">Chủ tài
															khoản</label> <input class="form-control" type="text"
															name="name-card" id="name-card" value="HOÀNG MẠNH TƯỜNG"
															readonly>
													</div>

													<div class="mb-4">
														<label class="form-label" for="card-amount">Số
															tiền</label> <input class="form-control" type="text"
															name="finalTotal" id="card-amount" value="${finalTotal}"
															readonly>
													</div>

													<div class="mb-4">
														<label class="form-label" for="card-note">Nội dung
															chuyển khoản</label> <input class="form-control" type="text"
															name="noidungck" id="card-note" value="P2TS${userID}"
															readonly>
													</div>
													
												</div>

												<!-- Mã QR -->
												<div class="col-md-6 d-flex align-items-center">
													<div class="text-center w-100">
														<label class="form-label d-block" for="qr-code">QR
															Code</label> <img
															src="https://qr.sepay.vn/img?bank=Vietcombank&acc=1031454525&template=compact&amount=${finalTotal}&des=P2TS${userID}"
															alt="QR Code" id="qr-code" class="img-fluid"
															style="max-width: 200px; height: auto; border: 1px solid #ddd;">
													</div>
												</div>
											</div>

											<!-- Phương thức thanh toán -->
											<div class="block mb-3">
												<div class="block-header" id="headingThree" role="tab">
													<strong>Chọn phương thức thanh toán</strong>
												</div>
												<div class="block-body py-5 d-flex align-items-center">
													<!-- Chuyển khoản -->
													<div class="form-check me-4">
														<input class="form-check-input" type="radio"
															name="paymentMethod" id="bankTransfer"
															value="Chuyển khoản" checked> <label
															class="form-check-label" for="bankTransfer"> <strong>Chuyển
																khoản</strong>
														</label>
													</div>
													<!-- Thanh toán khi nhận hàng -->
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="paymentMethod" id="cashOnDelivery" value="Tiền mặt">
														<label class="form-check-label" for="cashOnDelivery">
															<strong>Thanh toán khi nhận hàng</strong>
														</label>
													</div>
												</div>
											</div>
											

											<!-- Nút xác nhận -->
											<div
												class="d-flex justify-content-between flex-column flex-lg-row">
												<!-- Nút quay lại -->
												<a class="btn btn-link text-muted"
													href="${pageContext.request.contextPath}/user/checkoutReview">
													<i class="fa fa-angle-left me-2"></i> Quay lại trang đơn
													hàng
												</a>
												<!-- Nút đặt hàng -->
												<button type="submit" class="btn btn-dark">Đặt hàng</button>
											</div>
										</form>

									</div>

								</div>
								


							</div>
						</div>
					</div>
					</div>
					<div class="col-lg-4">
									<div class="block mb-5">
										<div class="block-header">
											<h6 class="text-uppercase mb-0">Tổng tiền đơn hàng dự
												kiến</h6>
										</div>
										<div class="block-body bg-light pt-1">
											<p class="text-sm">Chi phí vận chuyển và chi phí bổ sung
												sẽ được tính dựa trên các sản phẩm bạn đã chọn.</p>
											<ul class="order-summary mb-0 list-unstyled">
												<li class="order-summary-item"><span>Tổng tiền
														ước tính</span><span>${totalAmountFormatted }</span></li>
												<li class="order-summary-item"><span>Phí vận
														chuyện</span><span>${shippingFormatted }</span></li>
												<li class="order-summary-item"><span>Thuế dịch
														vụ</span><span>${serviceTaxFormatted }</span></li>
												<li class="order-summary-item border-0"><span>Tổng
														tiền</span><strong class="order-summary-total">${finalTotalFormatted }</strong></li>
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

	<script>
		document.querySelector("form").addEventListener("submit", function(e) {
			const submitButton = this.querySelector("button[type='submit']");
			submitButton.disabled = true;
		});
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
	<script src="js/theme.30e7c8f9.js"></script>
	<script
		src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="js/demo.9833433a.js"></script>
</body>
</html>