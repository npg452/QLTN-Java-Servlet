
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

<title>Đăng nhập</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts1/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css1/style.css">
</head>
<body>
<!--<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">-->
	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">Tạo tài khoản</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Đăng nhập</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Tên của bạn" required="required"/>
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Mật khẩu" required="required"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Nhớ tôi
									</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Đăng nhập" />
							</div>
						</form>
						<div class="social-login">
							<span class="social-label">Hoặc đăng nhập với</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js1/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status =="failed"){
			swal("Sorry", "Wrong Username or Password","error");
		}
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>