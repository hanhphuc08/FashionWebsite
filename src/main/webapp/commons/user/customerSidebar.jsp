<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="col-xl-3 col-lg-4 mb-5">
	<div class="customer-sidebar card border-0">
		<div class="customer-profile">
			<a class="d-inline-block" href="#"><img
				class="img-fluid rounded-circle customer-image shadow"
				src="https://d19m59y37dris4.cloudfront.net/sell/2-0-1/img/photo/kyle-loftus-589739-unsplash-avatar.jpg"
				alt=""></a>
			<h5>${user.fullname}</h5>
			<p class="text-muted text-sm mb-0">ở nhà</p>
		</div>
		<nav class="list-group customer-nav">
			<a
				class="list-group-item d-flex justify-content-between align-items-center text-decoration-none"
				href="${pageContext.request.contextPath}/user/orders"><span>
					<svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#paper-bag-1"> </use>
                    </svg>Đơn hàng
			</span>
				<div class="badge rounded-pill bg-dark fw-normal px-3">5</div></a>
				<a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="${pageContext.request.contextPath}/user/UserAccount">
				<span>
					<svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#male-user-1"> </use>
                    </svg>Hồ sơ của tôi
			</span>
			
				<a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="${pageContext.request.contextPath}/user/forgotPassword">
				<span>
					<svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#male-user-1"> </use>
                    </svg>Quên mật khẩu
			</span>
			<a class="list-group-item d-flex justify-content-between align-items-center text-decoration-none" href="${pageContext.request.contextPath}/login">
			<span>
					<svg class="svg-icon svg-icon-heavy me-2">
                      <use xlink:href="#exit-1"> </use>
                    </svg>Đăng xuất
			</span></a>
		</nav>
	</div>
</div>
</html>