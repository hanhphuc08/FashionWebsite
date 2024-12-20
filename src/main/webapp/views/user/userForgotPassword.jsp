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
</head>
<body>

	<!--  Begin Header -->
	<%@ include file="/commons/user/headerUser.jsp"%>
	<!-- End Header -->

	<!-- Hero Section-->
    <section class="hero">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb justify-content-center">
          <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/user/UserAccount">Hồ sơ của tôi</a></li>
          <li class="breadcrumb-item active">Quên mật khẩu</li>
        </ol>
        <!-- Hero Content-->
        <div class="hero-content pb-5 text-center">
          <h1 class="hero-heading"><!-- Hero Section-->
          		Quên mật khẩu
   			</h1>
          <div class="row">   
            <div class="col-xl-8 offset-xl-2"><p class="lead text-muted">Vui lòng nhập địa chỉ email của bạn để đặt lại mật khẩu</p></div>
          </div>
        </div>
      </div>
    </section>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-xl-9">
					<div class="block mb-5">
						<div class="block-header">
							<strong class="text-uppercase">Đặt lại mật khẩu</strong>
						</div>
						<div class="block-body">
							<!-- Bước 1: Nhập địa chỉ email -->
							<div id="step1" <% if(request.getAttribute("step") != null && (int)request.getAttribute("step") == 1) { %> style="display:block;" <% } else { %> style="display:none;" <% } %> >
							    <form action="/user/sendResetCode" method="post">
							        <div class="mb-4">
							            <label class="form-label" for="email">Nhập địa chỉ email của bạn:</label>
							            <input class="form-control" id="email" name="email" type="email" required>
							            <div id="error-message" class="text-danger" style="display: none;">
							                <%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>
							            </div>
							        </div>
							        <button type="submit" class="btn btn-outline-dark">Gửi mã xác nhận</button>
							    </form>
							</div>
							<!-- Bước 2: Nhập mã xác nhận -->
							<div id="step2" <% if(request.getAttribute("step") != null && (int)request.getAttribute("step") == 2) { %> style="display:block;" <% } else { %> style="display:none;" <% } %> >
							    <form action="/user/verifyCode" method="post">
							        <div class="mb-4">
							            <label class="form-label" for="code">Nhập mã xác nhận đã gửi đến email:</label>
							            <input class="form-control" id="code" name="code" type="text">
							        </div>
							        <button type="submit" class="btn btn-outline-dark">Xác nhận mã</button>
							    </form>
							</div>
							<!-- Bước 3: Đặt lại mật khẩu -->
							<div id="step3" <% if(request.getAttribute("step") != null && (int)request.getAttribute("step") == 3) { %> style="display:block;" <% } else { %> style="display:none;" <% } %> >
							    <form action="/user/resetPassword" method="post">
							        <div class="mb-4">
							            <label class="form-label" for="newPassword">Mật khẩu mới:</label>
							            <input class="form-control" id="newPassword" name="newPassword" type="password" required>
							        </div>
							        <div class="mb-4">
							            <label class="form-label" for="confirmPassword">Xác nhận mật khẩu mới:</label>
							            <input class="form-control" id="confirmPassword" name="confirmPassword" type="password" required>
							        </div>
							        <button type="submit" class="btn btn-outline-dark">Đặt lại mật khẩu</button>
							    </form>
							</div>
						</div>
					</div>
				</div>
				<!-- Begin Customer Sidebar-->
          <%@include file="/commons/user/customerSidebar.jsp" %>;
          <!-- End Customer Sidebar-->
			</div>
		</div>
	</section>
	<!-- JavaScript -->
	<!-- <script>
		function sendResetCode() {
		    const email = document.getElementById('email').value.trim();
		    if (!validateEmail(email)) {
		        document.getElementById('error-message').style.display = 'block';
		        return;
		    }
		    document.getElementById('error-message').style.display = 'none';
	
		    // Gửi email xác nhận
		    fetch('/user/send-reset-code', {
		        method: 'POST',
		        headers: { 'Content-Type': 'application/json' },
		        body: JSON.stringify({ email: email })
		    })
		    .then(response => response.json())
		    .then(data => {
		        if (data.success) {
		            alert('Mã xác nhận đã được gửi về email!');
		            document.getElementById('step1').style.display = 'none';
		            document.getElementById('step2').style.display = 'block';
		        } else {
		            alert('Email không tồn tại!');
		        }
		    });
		}
	
		function verifyCode() {
		    const code = document.getElementById('code').value.trim();
		    fetch('/user/verify-code', {
		        method: 'POST',
		        headers: { 'Content-Type': 'application/json' },
		        body: JSON.stringify({ code: code })
		    })
		    .then(response => response.json())
		    .then(data => {
		        if (data.success) {
		            alert('Mã xác nhận đúng!');
		            document.getElementById('step2').style.display = 'none';
		            document.getElementById('step3').style.display = 'block';
		        } else {
		            alert('Mã xác nhận không đúng!');
		        }
		    });
		}
	
		document.getElementById('resetPasswordForm').onsubmit = function(event) {
		    event.preventDefault();
		    const newPassword = document.getElementById('newPassword').value.trim();
		    const confirmPassword = document.getElementById('confirmPassword').value.trim();
	
		    if (newPassword !== confirmPassword) {
		        alert('Mật khẩu xác nhận không khớp!');
		        return;
		    }
	
		    fetch('/user/reset-password', {
		        method: 'POST',
		        headers: { 'Content-Type': 'application/json' },
		        body: JSON.stringify({ newPassword: newPassword })
		    })
		    .then(response => response.json())
		    .then(data => {
		        if (data.success) {
		            alert('Đặt lại mật khẩu thành công!');
		            window.location.href = '/user/login';
		        } else {
		            alert('Đặt lại mật khẩu thất bại!');
		        }
		    });
		};
	
		function validateEmail(email) {
		    const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
		    return re.test(email);
		}
</script> -->
	<!--  Begin Footer -->
	<%@ include file="/commons/web/footer.jsp"%>
	<!-- End Footer -->
	
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
</body>
</html>