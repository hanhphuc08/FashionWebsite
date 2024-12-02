<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<style>
	body {
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
		background-color: #f8f9fa;
		margin: 0;
	}

	.card {
		width: 400px;
		height:350px
	}
</style>
<body>
	<div id="step1">
	<form id="emailForm">
		<div class="card text-center" style="width: 400px;height:350px">
			<div class="card-header h5 text-bg-dark ">Password
				Reset</div>
			<div class="card-body px-5">
				<p class="card-text py-2">Nhập email để xác thực.</p>
				<div data-mdb-input-init class="form-outline">
					<input type="email" id="email" class="form-control my-3" required>
					
					<div id="error-message" class="text-danger" style="display: none;">
						<span class="icon-warning" style="color: orange;">⚠️</span> Vui
						lòng nhập địa chỉ email hợp lệ
					</div>
					<button type="button" class="btn text-bg-dark w-100" onclick="sendEmail()">Gửi mã xác nhận</button>
					<div class="d-flex justify-content-between mt-4">
						<a class="text-dark" href="${pageContext.request.contextPath}/login">Login</a> <a class="text-dark" href="${pageContext.request.contextPath}/register">Register</a>
					</div>
				</div>
			</div>
		</div>
		</form>
		</div>
		<div id="step2" style="display: none;">
		<form id="codeForm">
			<div class="card text-center" style="width: 400px;height:350px">
				<div class="card-header h5 text-bg-dark">Password
					Reset</div>
				<div class="card-body px-5">
				<p class="card-text py-2">Nhập mã xác nhận</p>
					<div data-mdb-input-init class="form-outline">
						<input type="text" id="code" class="form-control my-3" /> 
					</div>
					<button type="button" class="btn text-bg-dark w-100"
						onclick="verifyCode()">Xác nhận mã</button>
				</div>
			</div>
			</form>
		</div>
		<div id="step3" style="display: none;">
		<form id="resetPasswordForm"></form>
		<div class="card text-center" style="width: 400px; height:350px">
				<div class="card-header h5 text-bg-dark">Password
					Reset</div>
				<div class="card-body px-5">
					<label class="form-label" for="newPassword">Mật khẩu mới</label>
					<div data-mdb-input-init class="form-outline">
						<input type="password" id="newPassword" class="form-control my-3" required>
						<label class="form-label" for="newPassword">Nhập lại mật khẩu</label>
					<div data-mdb-input-init class="form-outline">
						<input type="password" id="confirmPassword" class="form-control my-3" required>  
					</div>
					<button type="submit" class="btn text-bg-dark w-100"
						onclick="verifyCode()">Đặt lại mật khẩu</button>
				</div>
			</div>
			</div>
			</div>
		<!-- JavaScript -->
		<script>
			function sendEmail() {
				const emailInput = document.getElementById('email');
				const errorMessage = document.getElementById('error-message');

				// Kiểm tra xem ô nhập liệu có trống không hoặc không hợp lệ
				if (emailInput.value.trim() === ''
						|| !validateEmail(emailInput.value)) {
					errorMessage.style.display = 'block'; // Hiển thị thông báo lỗi
				} else {
					errorMessage.style.display = 'none'; // Ẩn thông báo lỗi
					// Tiến hành gửi mã xác nhận
					console.log('Gửi mã xác nhận tới:', emailInput.value);
					// Thay đổi bước từ nhập email sang nhập mã xác nhận
					document.getElementById('step1').style.display = 'none';
					document.getElementById('step2').style.display = 'block';
				}
			}

			function validateEmail(email) {
				// Kiểm tra định dạng email
				const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
				return re.test(String(email).toLowerCase());
			}

			function verifyCode() {
				// Xác minh mã xác nhận
				const code = document.getElementById('code').value;
				// Thực hiện yêu cầu xác minh mã tới server (sử dụng AJAX hoặc fetch)
				// Giả sử yêu cầu thành công
				console.log('Xác minh mã:', code);
				document.getElementById('step2').style.display = 'none';
				document.getElementById('step3').style.display = 'block';
			}

			document.getElementById('resetPasswordForm').onsubmit = function(
					event) {
				event.preventDefault();
				// Xử lý đặt lại mật khẩu
				const newPassword = document.getElementById('newPassword').value;
				const confirmPassword = document
						.getElementById('confirmPassword').value;
				if (newPassword === confirmPassword) {
					// Gửi yêu cầu đặt lại mật khẩu tới server (sử dụng AJAX hoặc fetch)
					alert('Mật khẩu đã được đặt lại thành công!');
				} else {
					alert('Mật khẩu xác nhận không khớp!');
				}
			};
		</script>
		
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
					document.body
							.insertBefore(div, document.body.childNodes[0]);
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