<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@taglib prefix="fn" uri="jakarta.tags.functions" %>
<%@taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>P2TS Shop</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="noindex">
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
</head>
<body>
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

	<%@include file="/commons/admin/headerAdmin.jsp"%>

	<div class="container-fluid">

		<!-- Title -->


		<div class="row">
			<!-- <div class="col-lg-6 col-xxl-3 d-flex">

				Card
				<div class="card border-0 flex-fill w-100">
					<div class="card-body">
						<div class="row">
							<div class="col">

								Title
								<h5 class="text-uppercase text-muted fw-semibold mb-2">
									Clients</h5>

								Subtitle
								<h2 class="mb-0">6,328</h2>
							</div>
							<div class="col-auto">

								Icon
								<svg viewBox="0 0 24 24" height="30" width="30"
									class="text-primary" xmlns="http://www.w3.org/2000/svg">
									<path
										d="M2.250 6.000 A2.250 2.250 0 1 0 6.750 6.000 A2.250 2.250 0 1 0 2.250 6.000 Z"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" />
									<path d="M4.5,9.75A3.75,3.75,0,0,0,.75,13.5v2.25h1.5l.75,6H6"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" />
									<path
										d="M17.250 6.000 A2.250 2.250 0 1 0 21.750 6.000 A2.250 2.250 0 1 0 17.250 6.000 Z"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" />
									<path
										d="M19.5,9.75a3.75,3.75,0,0,1,3.75,3.75v2.25h-1.5l-.75,6H18"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" />
									<path
										d="M9.000 3.750 A3.000 3.000 0 1 0 15.000 3.750 A3.000 3.000 0 1 0 9.000 3.750 Z"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" />
									<path
										d="M17.25,13.5a5.25,5.25,0,0,0-10.5,0v2.25H9l.75,7.5h4.5l.75-7.5h2.25Z"
										fill="none" stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5" /></svg>
							</div>
						</div>
						/ .row
					</div>
					<div class="card-footer">
						<div class="row justify-content-between">
							<div class="col-auto">

								Label
								<p class="fs-6 text-muted text-uppercase mb-0">Today clients
								</p>

								Comment
								<p class="fs-5 fw-bold mb-0">57</p>
							</div>
							<div class="col text-end text-truncate">

								Label
								<p class="fs-6 text-muted text-uppercase mb-0">Monthly
									clients</p>

								Comment
								<p class="fs-5 fw-bold mb-0">681</p>
							</div>
						</div>
						/ .row
					</div>
				</div>-->
			
			<div class="col-lg-6 col-xxl-3 d-flex">

				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-body">
						<div class="row">
							<div class="col">

								<!-- Title -->
								<h5 class="text-uppercase text-muted fw-semibold mb-2">
									Tổng đơn hàng </h5>

								<!-- Subtitle -->
								<h2 class="mb-0">${orderTotal }</h2>
							</div>
							<div class="col-auto">

								<!-- Icon -->
								<svg xmlns="http://www.w3.org/2000/svg" fill="none"
									viewBox="0 0 24 24" height="30" width="30" class="text-primary">
									<path stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5"
										d="M6 19.1249H15.921C16.2753 19.125 16.6182 18.9996 16.889 18.7709C17.1597 18.5423 17.3407 18.2253 17.4 17.8759L20.037 2.37593C20.0965 2.02678 20.2776 1.70994 20.5483 1.48153C20.819 1.25311 21.1618 1.12785 21.516 1.12793H22.5" />
									<path stroke="currentColor" stroke-width="1.5"
										d="M7.875 22.125C7.66789 22.125 7.5 21.9571 7.5 21.75C7.5 21.5429 7.66789 21.375 7.875 21.375" />
									<path stroke="currentColor" stroke-width="1.5"
										d="M7.875 22.125C8.08211 22.125 8.25 21.9571 8.25 21.75C8.25 21.5429 8.08211 21.375 7.875 21.375" />
									<path stroke="currentColor" stroke-width="1.5"
										d="M15.375 22.125C15.1679 22.125 15 21.9571 15 21.75C15 21.5429 15.1679 21.375 15.375 21.375" />
									<path stroke="currentColor" stroke-width="1.5"
										d="M15.375 22.125C15.5821 22.125 15.75 21.9571 15.75 21.75C15.75 21.5429 15.5821 21.375 15.375 21.375" />
									<path stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="1.5"
										d="M17.9529 14.6251H5.88193C5.21301 14.625 4.5633 14.4014 4.03605 13.9897C3.5088 13.5781 3.13425 13.002 2.97193 12.3531L1.52193 6.55309C1.49426 6.44248 1.49218 6.32702 1.51583 6.21548C1.53949 6.10394 1.58827 5.99927 1.65846 5.90941C1.72864 5.81955 1.81839 5.74688 1.92089 5.69692C2.02338 5.64696 2.13591 5.62103 2.24993 5.62109H19.4839" /></svg>
							</div>
						</div>
						<!-- / .row -->
					</div>
					<div class="card-footer">
						<div class="row justify-content-between">
							<div class="col-auto">

								<!-- Label -->
								<p class="fs-6 text-muted text-uppercase mb-0">Hôm nay
								</p>

								<!-- Comment -->
								<p class="fs-5 fw-bold mb-0">${orderTotalToday }</p>
							</div>
							<div class="col text-end text-truncate">

								<!-- Label -->
								<p class="fs-6 text-muted text-uppercase mb-0">Tháng</p>

								<!-- Comment -->
								<p class="fs-5 fw-bold mb-0">${orderTotalMonth }</p>
							</div>
							
							<%-- <div class="col text-end text-truncate">

								<!-- Label -->
								<p class="fs-6 text-muted text-uppercase mb-0">Huỷ</p>

								<!-- Comment -->
								<p class="fs-5 fw-bold mb-0">${orderCancelled }</p>
							</div> --%>
						</div>
						<!-- / .row -->
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-xxl-3 d-flex">

				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div class="card-body">
						<div class="row">
							<div class="col">

								<!-- Title -->
								<h5 class="text-uppercase text-muted fw-semibold mb-2">
									Tổng tiền</h5>

								<!-- Subtitle -->
								<h2 class="mb-0">${totalAmount }</h2>
							</div>
							<div class="col-auto">

								<!-- Icon -->
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									height="30" width="30" class="text-primary">
									<defs>
									<style>
									.a {
										fill: none;
										stroke: currentColor;
										stroke-linecap: round;
										stroke-linejoin: round;
										stroke-width: 1.5px;
									}
									</style></defs>
									<title>monitor-graph-line</title><polygon class="a"
										points="15 23.253 9 23.253 9.75 18.753 14.25 18.753 15 23.253" />
									<line class="a" x1="6.75" y1="23.253" x2="17.25" y2="23.253" />
									<rect class="a" x="0.75" y="0.753" width="22.5" height="18"
										rx="3" ry="3" />
									<path class="a"
										d="M18.75,5.253H16.717a1.342,1.342,0,0,0-.5,2.588l2.064.825a1.342,1.342,0,0,1-.5,2.587H15.75" />
									<line class="a" x1="17.25" y1="5.253" x2="17.25" y2="4.503" />
									<line class="a" x1="17.25" y1="12.003" x2="17.25" y2="11.253" />
									<path class="a"
										d="M.75,11.253,4.72,7.284a.749.749,0,0,1,1.06,0L7.72,9.223a.749.749,0,0,0,1.06,0l3.97-3.97" />
									<line class="a" x1="0.75" y1="15.753" x2="23.25" y2="15.753" /></svg>
							</div>
						</div>
						<!-- / .row -->
					</div>
					<div class="card-footer">
						<div class="row justify-content-between">
							<div class="col-auto">

								<!-- Label -->
								<p class="fs-6 text-muted text-uppercase mb-0">Tổng tiền hôm nay</p>

								<!-- Comment -->
								<p class="fs-5 fw-bold mb-0">${totalAmountToday }</p>
							</div>
							<div class="col text-end text-truncate">

								<!-- Label -->
								<p class="fs-6 text-muted text-uppercase mb-0">Tổng tiền tháng này</p>

								<!-- Comment -->
								<p class="fs-5 fw-bold mb-0">${totalAmountThisMonth }</p>
							</div>
						</div>
						<!-- / .row -->
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-xxl-3 d-flex">

				<!-- Card -->
				<div class="card border-0 text-bg-primary flex-fill w-100">
					<div class="card-body">

						<!-- Title -->
						<h4 class="text-uppercase fw-semibold mb-2">Lợi nhuận thu được</h4>

						<!-- Subtitle -->
						<h2 class="mb-0">${currentBalance }</h2>

						<!-- Chart -->
						<div class="chart-container h-70px">
							<canvas id="currentBalanceChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- / .row -->

		<div class="row">
			<div class="col-xxl-9 d-flex">

				<!-- Card -->
				<div class="card border-0 flex-fill w-100"
					data-list='{"valueNames": ["name", "price", "quantity", "amount", {"name": "sales", "attr": "data-sales"}], "page": 5}'
					id="topSellingProducts">
					<div class="card-header border-0 card-header-space-between">

						<!-- Title -->
						<h2 class="card-header-title h4 text-uppercase">Sản phẩm bán chạy</h2>

						<!-- Dropdown -->
						<div class="dropdown">
							<a href="javascript: void(0);"
								class="dropdown-toggle no-arrow text-secondary" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> <svg
									xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									height="14" width="14">
									<g>
									<circle cx="12" cy="3.25" r="3.25" style="fill: currentColor" />
									<circle cx="12" cy="12" r="3.25" style="fill: currentColor" />
									<circle cx="12" cy="20.75" r="3.25" style="fill: currentColor" /></g></svg>
							</a>
							<div class="dropdown-menu">
								<a href="javascript: void(0);" class="dropdown-item"> Action
								</a> <a href="javascript: void(0);" class="dropdown-item">
									Another action </a> <a href="javascript: void(0);"
									class="dropdown-item"> Something else here </a>
							</div>
						</div>
					</div>

					<!-- Table -->
					<div class="table-responsive">
						<table class="table align-middle table-edge table-nowrap mb-0">
							<thead class="thead-light">
							
								<tr>
									<th><a href="javascript: void(0);"
										class="text-muted list-sort" data-sort="name"> Tên sản phẩm </a></th>
									<th><a href="javascript: void(0);"
										class="text-muted list-sort" data-sort="name"> Màu </a></th>
									<th class="text-end"><a href="javascript: void(0);"
										class="text-muted list-sort" data-sort="price"> Giá </a></th>
									<th class="text-end"><a href="javascript: void(0);"
										class="text-muted list-sort" data-sort="quantity"> Số lượng đã bán </a></th>
									<th class="text-end"><a href="javascript: void(0);"
										class="text-muted list-sort" data-sort="amount"> Tổng thu được </a></th>
									
								</tr>
							
							</thead>

							<tbody class="list">
								<c:forEach var="product" items="${topProducts}">
								<tr>
									<td class="name fw-bold">${product.productName}</td>
									<td class="price text-end">${product.color}</td>
									<td class="price text-end">${product.priceFormatted}</td>
									<td class="quantity text-end">${product.totalQuantity}</td>
									<td class="amount text-end">${product.totalAmountFormatted}</td>
									
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- / .table-responsive -->
				</div>
			</div>
			<div class="col-xxl-3 d-flex">

				<!-- Card -->
				<div class="card border-0 flex-fill w-100">
					<div
						class="card-header border-0 border-0 card-header-space-between">

						<!-- Title -->
						<h2 class="card-header-title h4 text-uppercase">Các đơn hàng gần đây
						</h2>
					</div>

					<!-- Table -->
					<div class="table-responsive">
					 
						<table class="table table-sm table-borderless align-middle mb-0">
						
							<thead class="thead-light">
								<tr>
									<th>Name</th>
									<th class="text-end">Price</th>
								</tr>
							</thead>

							<tbody>
							<c:forEach var="order" items="${recentOrders}">
								<tr>
									<td>
										<div class="d-flex align-items-center">
											<div class="avatar avatar-circle avatar-xs me-2">
												<img
													src="https://d33wubrfki0l68.cloudfront.net/790b7dd581a3ac4fd0410afad0fb12c6e93c9e7a/b0657/assets/images/profiles/profile-07.jpeg"
													alt="..." class="avatar-img" width="30" height="30">
											</div>

											<div class="d-flex flex-column">
												<span class="fw-bold d-block">${order.fullName }</span> 
											</div>
										</div>
									</td>
									<td class="text-end">
										<div class="fw-bold">${order.formattedTotalAmount }</div>
									</td>
								</tr>
								</c:forEach>
							</tbody>
							
						</table>
					</div>
					<!-- / .table-responsive -->
				</div>
			</div>
		</div>
		<!-- / .row -->

		<div class="row">
			

			<div class="row">
				<div class="col d-flex">

					<!-- Card -->
					<div class="card border-0 flex-fill w-100">
						<div class="card-header border-0 card-header-space-between">

							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">Báo cáo doanh số
							</h2>

							<ul class="nav">
								<li class="nav-item" data-toggle="chart"
									data-target="#salesReportChart" data-dataset="0"><a
									class="nav-link active chart-legend" href="#"
									data-bs-toggle="tab"> <span
										class="legend-circle-lg bg-primary"></span> Income
								</a></li>
								<li class="nav-item" data-toggle="chart"
									data-target="#salesReportChart" data-dataset="1"><a
									class="nav-link chart-legend" href="#" data-bs-toggle="tab">
										<span class="legend-circle-lg bg-dark"></span> Expense
								</a></li>
							</ul>
						</div>

						<div class="card-body d-flex flex-column">

							<!-- Chart -->
							<div class="chart-container flex-grow-1 h-275px">
								<canvas id="salesReportChart"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- / .row -->
			<div class="row">
				<div class="col">

					<!-- Card -->
					<div class="card border-0 flex-fill w-100"
						data-list='{"valueNames": ["name", "email", "id", {"name": "date", "attr": "data-signed"}, "status"], "page": 8}'
						id="users">
						<div class="card-header border-0 card-header-space-between">

							<!-- Title -->
							<h2 class="card-header-title h4 text-uppercase">Người dùng</h2>
							<button type="button" class="btn btn-danger btn-sm"
								id="deleteUsersBtn">
								<i class="fas fa-trash-alt"></i> Xoá
							</button>

							
						</div>
						

						<!-- Table -->
						<div class="table-responsive">
							<table
								class="table align-middle table-edge table-hover table-nowrap mb-0">
								<thead class="thead-light">
									<tr>
										<th class="w-60px">
											<div class="form-check mb-0">
												<input class="form-check-input" type="checkbox" value=""
													id="checkAllCheckboxes">
											</div>
										</th>

										<th><a href="javascript: void(0);"
											class="text-muted list-sort" data-sort="name">Họ và tên
										</a></th>
										<th><a href="javascript: void(0);"
											class="text-muted list-sort" data-sort="email"> Email </a></th>
										<th><a href="javascript: void(0);"
											class="text-muted list-sort" data-sort="id"> User ID </a></th>
										<th><a href="javascript: void(0);"
											class="text-muted list-sort" data-sort="date">Ngày đăng ký
										</a></th>
										<th class="w-150px min-w-150px"><a
											href="javascript: void(0);" class="text-muted list-sort"
											data-sort="status"> Trạng thái</a></th>
									</tr>
								</thead>

								<c:forEach items="${listu}" var="u">
									<tr>
										<td>
											<div class="form-check mb-0">
												<input class="form-check-input user-checkbox"
													type="checkbox" value="${u.userID}">
											</div>
										</td>
										<td>
											<!-- <div class="avatar avatar-circle avatar-xs me-2">
												<img
													src="https://d33wubrfki0l68.cloudfront.net/9e7ac59225f733be5944b3e91271b33adb30cae7/56230/assets/images/profiles/profile-14.jpeg"
													alt="..." class="avatar-img" width="30" height="30">
											</div> --> <span class="name fw-bold">${u.fullname}</span>
										</td>
										<td class="email">${u.email }</td>
										<td class="id">${u.userID}</td>
										<td class="date" data-signed="1648252800">${u.createDate}</td>
										<td class="status"><span class="legend-circle bg-success"></span>Active</td>
									</tr>
									
								</c:forEach>
								<c:if test="${empty listu}">
									<tr>
										<td colspan="4">No users available.</td>
									</tr>
								</c:if>
							</table>
						</div>
						<!-- / .table-responsive -->

						<div class="card-footer">
							<div class="d-flex justify-content-between align-items-center">
								<div class="me-5 text-secondary small">
									Showing: <span class="list-pagination-page-first"></span> - <span
										class="list-pagination-page-last"></span> of <span
										class="list-pagination-pages"></span>
								</div>

								<!-- Pagination -->
								<ul class="pagination list-pagination mb-0"></ul>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- / .row -->
		</div>
		</div>
		<!-- / .container-fluid -->
</body>
<script>
document.getElementById("checkAllCheckboxes").addEventListener("change", function () {
    const allCheckboxes = document.querySelectorAll('.user-checkbox');
    const isChecked = this.checked;

    allCheckboxes.forEach(cb => {
        cb.checked = isChecked; 
    });
});

document.getElementById("deleteUsersBtn").addEventListener("click", function () {
    const checkAllCheckbox = document.getElementById("checkAllCheckboxes");
    let userIds;

    if (checkAllCheckbox.checked) {
        
        userIds = Array.from(document.querySelectorAll('.user-checkbox')).map(cb => cb.value);
    } else {
        
        userIds = Array.from(document.querySelectorAll('.user-checkbox:checked')).map(cb => cb.value);
    }

    if (userIds.length === 0) {
        alert("Please select at least one user to delete.");
        return;
    }

    if (confirm("Are you sure you want to delete the selected users?")) {
        fetch('/FashionWebsite/admin/statistic', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
            },
            body: 'userIds=' + encodeURIComponent(userIds.join(','))
        })
            .then(response => {
                if (response.ok) {
                    alert("Selected users deleted successfully.");
                    location.reload(); 
                } else {
                    return response.text().then(text => {
                        throw new Error(text || "An unexpected error occurred.");
                    });
                }
            })
            .catch(error => {
                console.error("Error deleting users:", error);
                alert("An error occurred while deleting users: " + error.message);
            });
    }
});
</script>
<script
	src="${pageContext.request.contextPath}/Template/assets/js/theme.bundle.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Template/assets/css/theme.bundle.css"
	id="stylesheetLTR">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Template/assets/css/theme.rtl.bundle.css"
	id="stylesheetRTL">

<%@ include file="/commons/admin/footer.jsp"%>
</body>