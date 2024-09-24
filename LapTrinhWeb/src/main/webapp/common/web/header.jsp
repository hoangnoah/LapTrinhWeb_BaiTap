<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Header Section Begin -->
<header class="header">
	<div class="header__top">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-7">
					<div class="header__top__left">
						<p>Free shipping, 30-day return or refund guarantee.</p>
					</div>
				</div>
				<div class="col-lg-6 col-md-5">
					<div class="header__top__right">
						<div class="header__top__links">
							<c:choose>
								<c:when test="${sessionScope.account == null}">
									<a href="${pageContext.request.contextPath}/login">Login</a>
                                | <a
										href="${pageContext.request.contextPath}/register">Register</a>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/member/myaccount">${sessionScope.account.fullname}</a>
                                | <a
										href="${pageContext.request.contextPath}/logout">Logout</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3">
				<div class="header__logo">
					<a href="./index.html"><img src="${URL}/img/logo.png" alt=""></a>
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<nav class="header__menu mobile-menu">
					<ul>
						<li class="active"><a href="./index.html">Home</a></li>
						<li><a href="./shop.html">Shop</a></li>
						<li><a href="#">Pages</a>
							<ul class="dropdown">
								<li><a href="./about.html">About Us</a></li>
								<li><a href="./shop-details.html">Shop Details</a></li>
								<li><a href="./shopping-cart.html">Shopping Cart</a></li>
								<li><a href="./checkout.html">Check Out</a></li>
								<li><a href="./blog-details.html">Blog Details</a></li>
							</ul></li>
						<li><a href="./blog.html">Blog</a></li>
						<li><a href="./contact.html">Contacts</a></li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-3 col-md-3">
				<div class="header__nav__option">
					<a href="#" class="search-switch"><img
						src="${URL}/img/icon/search.png" alt=""></a> <a href="#"><img
						src="${URL}/img/icon/heart.png" alt=""></a> <a href="#"><img
						src="${URL}/img/icon/cart.png" alt=""> <span>0</span></a>
					<div class="price">$0.00</div>
				</div>
			</div>
		</div>
		<div class="canvas__open">
			<i class="fa fa-bars"></i>
		</div>
	</div>
</header>
<!-- Header Section End -->