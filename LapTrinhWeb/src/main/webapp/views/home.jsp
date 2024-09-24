<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/templates/web" var="URL"></c:url>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
	<div class="offcanvas__option">
		<div class="offcanvas__links">
			<a href="#">Sign in</a> <a href="#">FAQs</a>
		</div>
		<div class="offcanvas__top__hover">
			<span>Usd <i class="arrow_carrot-down"></i></span>
			<ul>
				<li>USD</li>
				<li>EUR</li>
				<li>USD</li>
			</ul>
		</div>
	</div>
	<div class="offcanvas__nav__option">
		<a href="#" class="search-switch"><img
			src="${URL}/img/icon/search.png" alt=""></a> <a href="#"><img
			src="${URL}/img/icon/heart.png" alt=""></a> <a href="#"><img
			src="${URL}/img/icon/cart.png" alt=""> <span>0</span></a>
		<div class="price">$0.00</div>
	</div>
	<div id="mobile-menu-wrap"></div>
	<div class="offcanvas__text">
		<p>Free shipping, 30-day return or refund guarantee.</p>
	</div>
</div>
<!-- Offcanvas Menu End -->

<!-- Slider Section Begin -->
<%@ include file="/common/web/slider.jsp"%>
<!-- Slider Section End -->

<!-- Banner Section Begin -->
<%@ include file="/common/web/banner.jsp"%>
<!-- Banner Section End -->

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="filter__controls">
					<li class="active" data-filter="*">Best Sellers</li>
					<li data-filter=".new-arrivals">New Arrivals</li>
					<li data-filter=".hot-sales">Hot Sales</li>
				</ul>
			</div>
		</div>
		<div class="row product__filter">
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-1.jpg">
						<span class="label">New</span>
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Piqué Biker Jacket</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$67.24</h5>
						<div class="product__color__select">
							<label for="pc-1"> <input type="radio" id="pc-1">
							</label> <label class="active black" for="pc-2"> <input
								type="radio" id="pc-2">
							</label> <label class="grey" for="pc-3"> <input type="radio"
								id="pc-3">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-2.jpg">
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Piqué Biker Jacket</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$67.24</h5>
						<div class="product__color__select">
							<label for="pc-4"> <input type="radio" id="pc-4">
							</label> <label class="active black" for="pc-5"> <input
								type="radio" id="pc-5">
							</label> <label class="grey" for="pc-6"> <input type="radio"
								id="pc-6">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
				<div class="product__item sale">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-3.jpg">
						<span class="label">Sale</span>
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Multi-pocket Chest Bag</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$43.48</h5>
						<div class="product__color__select">
							<label for="pc-7"> <input type="radio" id="pc-7">
							</label> <label class="active black" for="pc-8"> <input
								type="radio" id="pc-8">
							</label> <label class="grey" for="pc-9"> <input type="radio"
								id="pc-9">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-4.jpg">
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Diagonal Textured Cap</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$60.9</h5>
						<div class="product__color__select">
							<label for="pc-10"> <input type="radio" id="pc-10">
							</label> <label class="active black" for="pc-11"> <input
								type="radio" id="pc-11">
							</label> <label class="grey" for="pc-12"> <input type="radio"
								id="pc-12">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-5.jpg">
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Lether Backpack</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$31.37</h5>
						<div class="product__color__select">
							<label for="pc-13"> <input type="radio" id="pc-13">
							</label> <label class="active black" for="pc-14"> <input
								type="radio" id="pc-14">
							</label> <label class="grey" for="pc-15"> <input type="radio"
								id="pc-15">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
				<div class="product__item sale">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-6.jpg">
						<span class="label">Sale</span>
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Ankle Boots</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$98.49</h5>
						<div class="product__color__select">
							<label for="pc-16"> <input type="radio" id="pc-16">
							</label> <label class="active black" for="pc-17"> <input
								type="radio" id="pc-17">
							</label> <label class="grey" for="pc-18"> <input type="radio"
								id="pc-18">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-7.jpg">
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>T-shirt Contrast Pocket</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$49.66</h5>
						<div class="product__color__select">
							<label for="pc-19"> <input type="radio" id="pc-19">
							</label> <label class="active black" for="pc-20"> <input
								type="radio" id="pc-20">
							</label> <label class="grey" for="pc-21"> <input type="radio"
								id="pc-21">
							</label>
						</div>
					</div>
				</div>
			</div>
			<div
				class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix hot-sales">
				<div class="product__item">
					<div class="product__item__pic set-bg"
						data-setbg="${URL}/img/product/product-8.jpg">
						<ul class="product__hover">
							<li><a href="#"><img src="${URL}/img/icon/heart.png"
									alt=""></a></li>
							<li><a href="#"><img src="${URL}/img/icon/compare.png"
									alt=""> <span>Compare</span></a></li>
							<li><a href="#"><img src="${URL}/img/icon/search.png"
									alt=""></a></li>
						</ul>
					</div>
					<div class="product__item__text">
						<h6>Basic Flowing Scarf</h6>
						<a href="#" class="add-cart">+ Add To Cart</a>
						<div class="rating">
							<i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<h5>$26.28</h5>
						<div class="product__color__select">
							<label for="pc-22"> <input type="radio" id="pc-22">
							</label> <label class="active black" for="pc-23"> <input
								type="radio" id="pc-23">
							</label> <label class="grey" for="pc-24"> <input type="radio"
								id="pc-24">
							</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->

<!-- Categories Section Begin -->
<section class="categories spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-3">
				<div class="categories__text">
					<h2>
						Clothings Hot <br /> <span>Shoe Collection</span> <br />
						Accessories
					</h2>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="categories__hot__deal">
					<img src="${URL}/img/product-sale.png" alt="">
					<div class="hot__deal__sticker">
						<span>Sale Of</span>
						<h5>$29.99</h5>
					</div>
				</div>
			</div>
			<div class="col-lg-4 offset-lg-1">
				<div class="categories__deal__countdown">
					<span>Deal Of The Week</span>
					<h2>Multi-pocket Chest Bag Black</h2>
					<div class="categories__deal__countdown__timer" id="countdown">
						<div class="cd-item">
							<span>3</span>
							<p>Days</p>
						</div>
						<div class="cd-item">
							<span>1</span>
							<p>Hours</p>
						</div>
						<div class="cd-item">
							<span>50</span>
							<p>Minutes</p>
						</div>
						<div class="cd-item">
							<span>18</span>
							<p>Seconds</p>
						</div>
					</div>
					<a href="#" class="primary-btn">Shop now</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Categories Section End -->

<!-- Instagram Section Begin -->
<%@ include file="/common/web/instagram.jsp"%>
<!-- Instagram Section Begin -->

<!-- Latest Blog Section Begin -->
<%@ include file="/common/web/blog.jsp"%>
<!-- Latest Blog Section Begin -->


<!-- Search Begin -->
<div class="search-model">
	<div class="h-100 d-flex align-items-center justify-content-center">
		<div class="search-close-switch">+</div>
		<form class="search-model-form">
			<input type="text" id="search-input" placeholder="Search here.....">
		</form>
	</div>
</div>
<!-- Search End -->

