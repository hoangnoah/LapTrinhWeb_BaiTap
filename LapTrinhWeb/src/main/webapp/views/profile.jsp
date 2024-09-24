<%@page import="vn.iotstar.models.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<!-- Profile Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form">
			<form action="${pageContext.request.contextPath}/profile"
				method="post" enctype="multipart/form-data">
				<c:if test="${alert != null}">
					<h6 class="alert alert-danger">${alert}</h6>
				</c:if>
				<div class="row">
					<div class="col-lg-8 col-md-6">
						<h6 class="checkout__title">Hồ sơ cá nhân</h6>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										User Name<span>*</span>
									</p>
									<input type="text" value="${user.username}" id="username" name="username">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Full Name<span>*</span>
									</p>
									<input type="text" value="${user.fullname}" id="fullname" name="fullname">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Phone<span>*</span>
									</p>
									<input type="text" value="${user.phone}" id="phone" name="phone">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Email<span>*</span>
									</p>
									<input type="text" value="${user.email}" id="email" name="email">
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="form-group mb-3">
							<label for="image">Image:</label> <input type="file" id="images"
								name="images" class="form-control" accept="image/*"
								onchange="previewImage(event)" /> <img id="imagePreview"
								src="#" alt="Image preview"
								style="display: none; margin-top: 10px; max-width: 100%;" />
						</div>
					</div>
					<div class="form-group mt-3" align="center">
						<button type="submit" class="btn btn-primary">Cập nhật</button>
						<button type="button" class="btn btn-secondary"
							onclick="window.location.href='/Login_Register/waiting'">Quay
							lại</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Profile Section End -->

<script>
	function previewImage(event) {
		const input = event.target;
		const file = input.files[0];
		const preview = document.getElementById('imagePreview');

		if (file) {
			const reader = new FileReader();
			reader.onload = function(e) {
				preview.src = e.target.result;
				preview.style.display = 'block';
			}
			reader.readAsDataURL(file);
		} else {
			preview.src = '#';
			preview.style.display = 'none';
		}
	}
</script>