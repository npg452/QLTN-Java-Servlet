
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

<title>Đăng ký </title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts1/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css1/style.css">
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Đăng ký</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Tên của bạn" required="required"/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Email của bạn" required="required"/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Mật khẩu" required="required"/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Nhập lại mật khẩu" required="required"/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="text" name="contact" id="contact"
									placeholder="Liên hệ" required="required"/>
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>Tôi đồng ý với chính sách <a href="#" class="term-service">dịch vụ của bạn</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Đăng ký" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Bạn đã có tài khoản
							</a>
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
		if(status =="success"){
			swal("Congrats", "Account Created Successfully","success");
		}
	</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>