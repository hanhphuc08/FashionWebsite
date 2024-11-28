<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<header class="header">
	<!-- Top Bar-->
	<div class="top-bar">
		<div class="container-fluid">
			<div class="row d-flex align-items-center">
				<div class="col-sm-7 d-none d-sm-block">
					<ul class="list-inline topbar-text mb-0">
						<li class="list-inline-item pe-3 me-0"><svg
								class="svg-icon me-2">
                    <use xlink:href="#calls-1"> </use>
                  </svg>0362 980 918</li>
						<li
							class="list-inline-item px-3 border-start d-none d-lg-inline-block">Miễn
							phí vận chuyển cho đơn hàng từ $300</li>
					</ul>
				</div>
				<div class="col-sm-5 d-flex justify-content-end">
					<!-- Language Dropdown-->
					<div class="dropdown border-end px-3">
						<a class="dropdown-toggle topbar-link" id="langsDropdown" href="#"
							data-bs-toggle="dropdown" data-bs-display="static"
							aria-haspopup="true" aria-expanded="false"><img
							class="topbar-flag"
							src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/gb.svg"
							alt="english">English</a>
						<div
							class="dropdown-menu dropdown-menu-end dropdown-menu-animated"
							aria-labelledby="langsDropdown">
							<a class="dropdown-item text-sm" href="#"><img
								class="topbar-flag"
								src="https://st.quantrimang.com/photos/image/2021/09/05/Co-Vietnam.png"
								alt="vietnam">VietNam</a><a class="dropdown-item text-sm"
								href="#"> <img class="topbar-flag"
								src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/flag/fr.svg"
								alt="french">French
							</a>
						</div>
					</div>
					<!-- Currency Dropdown-->
					<div class="dropdown ps-3 ms-0">
						<a class="dropdown-toggle topbar-link" id="currencyDropdown"
							href="#" data-bs-toggle="dropdown" data-bs-display="static"
							aria-haspopup="true" aria-expanded="false"> <i
							class="fas fa-dollar-sign text-xs align-middle mt-n1 me-2"> </i>USD
						</a>
						<div
							class="dropdown-menu dropdown-menu-end dropdown-menu-animated"
							aria-labelledby="currencyDropdown">
							<a class="dropdown-item text-sm" href="#"> <i
								class="fas fa-euro-sign text-xs align-middle mt-n1 me-2"> </i>EUR
							</a><a class="dropdown-item text-sm" href="#"><i> <span>₫</span>
							</i> VND</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Top Bar End-->
	<!-- Navbar-->
	<nav
		class="navbar navbar-expand-lg navbar-sticky navbar-airy navbar-light bg-white bg-fixed-white">
		<div class="container-fluid">
			<!-- Navbar Header  -->
			<a class="navbar-brand" href="home"><svg class="navbar-brand-svg"
					viewBox="0 0 231 77" width="231" height="77" fill="none"
					xmlns="http://www.w3.org/2000/svg">
<path class="navbar-brand-svg-text"
						d="M217 613 c-4 -3 -7 -94 -7 -200 l0 -194 43 3 42 3 3 63 3 62 43 0 c83 0 156 80 142 155 -9 47 -50 92 -94 105 -41 11 -165 14 -175 3z m171 -95 c7 -7 12 -21 12 -33 0 -31 -19 -45 -62 -45 l-38 0 0 45 0 45 38 0 c21 0 43 -5 50 -12z M720 601 c-38 -20 -85 -80 -73 -92 19 -18 69 -13 91 9 15 15 34 22 60 22 43 0 62 -14 62 -47 0 -18 -14 -30 -77 -60 -72 -35 -80 -42 -105 -92 -16 -30 -28 -70 -28 -88 l0 -34 148 3 147 3 0 40 0 40 -92 3 c-51 1 -93 6 -93 11 0 14 34 38 75 52 21 8 57 31 78 51 37 35 39 40 35 83 -3 25 -14 55 -24 67 -44 48 -142 63 -204 29z M1100 575 l0 -45 50 0 50 0 0 -156 0 -155 43 3 42 3 3 152 3 152 47 3 47 3 0 40 0 40 -142 3 -143 3 0 -46z M1593 604 c-40 -20 -67 -74 -59 -118 8 -43 39 -70 111 -100 71 -29 89 -50 61 -72 -29 -21 -61 -17 -93 10 l-29 24 -32 -20 c-39 -25 -40 -32 -4 -68 28 -27 86 -50 127 -50 38 1 103 38 119 69 39 75 2 138 -105 181 -49 19 -64 30 -64 45 0 27 55 33 80 9 15 -16 19 -16 51 -1 40 19 43 36 12 64 -51 46 -115 56 -175 27z M1980 279 c-9 -16 -8 -26 5 -45 8 -13 22 -24 30 -24 19 0 45 28 45 49 0 41 -61 57 -80 20z"
						transform="translate(0 77) scale(0.1,-0.1)" fill="#212529" />

</svg></a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<!-- Navbar Collapse -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/admin/home">Trang chủ</a>
					</li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/admin/statistic">Quản
							lý</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/admin/categories">Sản
							phẩm</a></li>

					<li class="nav-item"><a class="nav-link" href="#">Giới
							thiệu</a></li>

					<li class="nav-item"><a class="nav-link" href="#">Liên hệ</a>
					</li>

				</ul>
				<div
					class="d-flex align-items-center justify-content-between justify-content-lg-end mt-1 mb-2 my-lg-0">
					<!-- Search Button-->
					<div class="nav-item navbar-icon-link" data-bs-toggle="search">
						<svg class="svg-icon">
                  <use xlink:href="#search-1"> </use>
                </svg>
					</div>

					<!-- Notification-->
					<!-- Notification Bell Button -->
					<div class="nav-item navbar-icon-link mx-3" id="notificationButton"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">
						<i class="fas fa-bell"></i>
					</div>

					<!-- Notification Dropdown (when clicked on bell icon) -->
					<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated"
						aria-labelledby="notificationButton">
						<div class="notification-header">
							<h6 class="dropdown-header">Thông báo</h6>
						</div>
						<div class="notification-list">
							<!-- Example notifications -->
							<a class="dropdown-item d-flex align-items-center"
								href="${pageContext.request.contextPath}/admin/manageOrders">
								<i class="fas fa-comment-alt text-primary"></i>
								<div class="ms-2">
									<p class="mb-0">Bạn có một tin nhắn mới.</p>
									<small class="text-muted">5 phút trước</small>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center"
								href="${pageContext.request.contextPath}/admin/manageOrders">
								<i class="fas fa-cart-plus text-success"></i>
								<div class="ms-2">
									<p class="mb-0">Đơn hàng của bạn đã được xác nhận.</p>
									<small class="text-muted">10 phút trước</small>
								</div>
							</a> <a class="dropdown-item d-flex align-items-center"
								href="${pageContext.request.contextPath}/admin/manageOrders">
								<i class="fas fa-gift text-warning"></i>
								<div class="ms-2">
									<p class="mb-0">Bạn nhận được một món quà!</p>
									<small class="text-muted">1 giờ trước</small>
								</div>
							</a>
						</div>
						<div class="dropdown-footer text-center">

<<<<<<< HEAD
=======
							<a class="dropdown-item text-muted" href="${pageContext.request.contextPath}/admin/manageOrders">Xem tất cả thông
								báo</a>

>>>>>>> 55e117a0d68896061770e2a6339ee489118d4b9e
							<a class="dropdown-item text-muted"
								href="${pageContext.request.contextPath}/admin/manageOrders">Xem
								tất cả thông báo</a>

						</div>
					</div>
					<!-- User Not Logged - link to login page-->
					<div class="nav-item dropdown">
						<a class="navbar-icon-link" id="userdetails" href="#"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <svg class="svg-icon">
                    <use xlink:href="#male-user-1"> </use>
                  </svg></a>
						<div
							class="dropdown-menu dropdown-menu-animated dropdown-menu-end"
							aria-labelledby="userdetails">


							<div class="dropdown-divider my-0"></div>
							<a class="dropdown-item"
								href="${pageContext.request.contextPath}/home">Đăng xuất</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- /Navbar -->
	<!-- Fullscreen search area-->
	<div class="search-area-wrapper">
		<div
			class="search-area d-flex align-items-center justify-content-center">
			<div class="close-btn">
				<svg class="svg-icon svg-icon-light w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
            </svg>
			</div>
			<form class="search-area-form"
				action="${pageContext.request.contextPath}/admin/categories"
				method="GET" onsubmit="return cleanForm();">
				<div class="mb-4 position-relative">
					<input class="search-area-input" type="search" name="searchQuery"
						id="search" placeholder="What are you looking for?"
						value="${not empty searchQuery ? searchQuery : ''}">
					<button class="search-area-button" type="submit">
						<svg class="svg-icon">
                        <use xlink:href="#search-1"> </use>
                    </svg>
					</button>
				</div>
				<!-- Hidden inputs -->
				<input type="hidden" name="typeCategoryCode"
					value="${not empty typeCategoryCode ? typeCategoryCode : ''}" /> <input
					type="hidden" name="categoryCode"
					value="${not empty categoryCode ? categoryCode : ''}" /> <input
					type="hidden" name="page" value="${currentPage}" /> <input
					type="hidden" name="orderby" value="${orderby}" />
			</form>
		</div>
	</div>
	<!-- /Fullscreen search area-->
</header>
</html>