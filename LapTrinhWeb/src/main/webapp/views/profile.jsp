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
					<div class="col-lg-3 col-md-5">
						<div class="form-group mb-3">
							<!-- File input hidden -->
							<input type="file" id="images" name="images" class="form-control"
								accept="image/*" style="display: none;"
								onchange="previewImage(event)" />

							<!-- Label clickable that will trigger file input -->
							<label for="images"> <!-- Image preview (circular shape) -->
								<img id="imagePreview" src="${uploadPath}/${images}"
								alt="Image preview"
								style="display: block; width: 250px; height: 250px; border-radius: 50%; object-fit: cover; opacity: 0.8; cursor: pointer; border: 2px solid #ccc;" />
							</label>
						</div>
					</div>
					<div class="col-lg-9 col-md-7">
						<div class="row">
							<div class="col-lg-6">
								<h6 class="checkout__title">Hồ sơ cá nhân</h6>
							</div>
							<div class="col-lg-6">
								<div class="form-group mt-3" align="right">
									<button type="submit" class="btn btn-outline-primary">Cập
										nhật</button>
									<button type="button" class="btn btn-secondary"
										onclick="window.location.href='/Login_Register/waiting'">Quay
										lại</button>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										User Name<span>*</span>
									</p>
									<input type="text" value="${user.username}" id="username"
										name="username">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Full Name<span>*</span>
									</p>
									<input type="text" value="${user.fullname}" id="fullname"
										name="fullname">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Phone<span>*</span>
									</p>
									<input type="text" value="${user.phone}" id="phone"
										name="phone">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Email<span>*</span>
									</p>
									<input type="text" value="${user.email}" id="email"
										name="email">
								</div>
							</div>
						</div>
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
        const reader = new FileReader();
        
        reader.onload = function(){
            const imgElement = document.getElementById('imagePreview');
            imgElement.src = reader.result;
            imgElement.style.display = 'block'; // Show the image
        };
        
        reader.readAsDataURL(input.files[0]); // Convert image file to base64 string
    }
</script>