<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/
bootstrap.min.css"
	rel="stylesheet"">
<title>Đăng kí tài khoản</title>
</head>
<body>
	<main class="container">
		<header class="row">
			<div class="col">
				<div class="alert alert-success col">
					<h1>Đăng ký tài khoản</h1>
				</div>
			</div>
		</header>
		<section class="row">
			<div class="col-7">
				<div class="row">
					<div class="col">
						<form action="/LapTrinhWeb/register" method="post">
							<div class="form-group">
								<label for="fullname">Họ và tên:</label> <input type="text"
									id="fullname" name="fullname" class="form-control" />
							</div>
							<div class="form-group">
								<label for="username">Tên đăng nhập:</label> <input type="text"
									id=" username" name="username" class="form-control" />
							</div>
							<div class="form-group">
								<label for="email">Email:</label> <input type="text" id="email"
									name="email" class="form-control" />
							</div>
							<div class="form-group">
								<label for="password">Mật khẩu: </label> <input type="password"
									id="password" name="password" class="form-control" />
							</div>
							<div class="mb-3">
								<label for="avatar" class="form-label">Ảnh đại diện:</label>
								<div class="d-flex align-items-center">
									<!-- Khung chứa ảnh -->
									<div class="border" id="image-preview"
										style="width: 150px; height: 150px; background-color: #f0f0f0; margin-right: 10px;"></div>
									<!-- Nút tải ảnh lên -->
									<input type="file" class="form-control-file" id="avatar" name="images"
										accept="image/*">
								</div>
							</div>
							<div class="form-group mt-3">
								<button type="submit" class="btn btn-primary">Đăng ký</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>