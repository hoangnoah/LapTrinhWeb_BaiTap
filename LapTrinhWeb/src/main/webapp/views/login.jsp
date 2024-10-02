<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html lang="en">
<head>
<title>Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="${contextPath}/templates/login/css/style.css">

</head>
<%
String username = "";
Cookie[] cookies = request.getCookies();
if (cookies != null) {
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("username")) {
	username = cookie.getValue();
		}
	}
}
%>
<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-12 col-lg-10">
					<div class="wrap d-md-flex">
						<div class="img"
							style="background-image: url('${contextPath}/templates/login/images/bg-1.jpg');">
						</div>
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">Login</h3>
								</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a> <a href="#"
											class="social-icon d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a>
									</p>
								</div>
							</div>
							<form action="/LapTrinhWeb/login" method="post" class="signin-form">
								<c:if test="${alert !=null}">
									<h3 class="alert alert-danger">${alert}</h3>
								</c:if>
								<div class="form-group mb-3">
									<label class="label" for="username">User Name</label> <input
										id="username" name="username" type="text" class="form-control"
										value="<%=username%>" placeholder="User name" required>
								</div>
								<div class="form-group mb-3">
									<label class="label" for="password">Password</label> <input
										type="password" id="password" name="password"
										class="form-control" placeholder="Password" required>
								</div>
								<!-- <div class="form-group d-md-flex">
									<div class="w-50 text-left">
										<label class="checkbox-wrap checkbox-primary mb-0">Remember
											Me <input type="checkbox" checked> <span
											class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
								</div> -->
								<div class="row mb-4">
									<div class="col d-flex justify-content-center">
										<!-- Checkbox -->
										<div class="form-check">
											<input class="form-check-input" type="checkbox"
												id="rememberme" name="remember" /> <label
												class="form-check-label" for="rememberme"> Remember
												me </label>
										</div>
									</div>

									<div class="col">
										<a
											href="${pageContext.request.contextPath }/views/resetpassword.jsp"
											class="text-decoration-none">Forgot password?</a>
									</div>
								</div>

								<div class="form-group">
									<button type="submit"
										class="form-control btn btn-primary rounded submit px-3">Sign
										In</button>
								</div>
							</form>
							<p class="text-center">
								Not a member? <a data-toggle="tab" href="#signup">Sign Up</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="${contextPath}/templates/login/js/jquery.min.js"></script>
	<script src="${contextPath}/templates/login/js/popper.js"></script>
	<script src="${contextPath}/templates/login/js/bootstrap.min.js"></script>
	<script src="${contextPath}/templates/login/js/main.js"></script>

</body>
</html>
