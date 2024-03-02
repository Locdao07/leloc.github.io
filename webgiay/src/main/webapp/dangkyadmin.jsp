<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%@include file="css/allcss.jsp"%>
</head>
<body>
<!-- NAV -->
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-3">
				<h3>LOGO</h3>
			</div>

			<div class="col-md-6">
				<form class="form-inline" action="Htgiay">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Tìm Kiếm" aria-label="Search" name="txttim">
					<button class="btn btn-primary my-2 my-sm-0" type="submit"
						name="th">Tìm Kiếm</button>
				</form>
			</div>

			<div class="col-md-3">
				<a href="dangnhapadminController" class="btn btn-success">Đăng Nhập</a> <a
					href="dangkyCadmin" class="btn btn-primary">Đăng Ký</a>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="Htgiay">Trang Chủ <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="#">Giỏ
						Hàng</a></li>
				<li class="nav-item active"><a class="nav-link" href="#">Lịch
						Sử Mua Hàng</a></li>
			</ul>
		</div>
	</nav> 

		<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Đăng Ký Admin</h3>
						<form action="dangkyadmin" method="post">
							<div class="form-group">
							<input
									type="text" class="form-control" id="exampleInputText" placeholder="Nhập Tài Khoản"
									name="tentk" required>
							</div>
							<div class="form-group">
								 <input
									type="password" class="form-control" id="exampleInputText" placeholder="Nhập Mật Khẩu"
									name="mk" required>
							</div>
							<div class="form-group">
								 <input
									type="password" class="form-control" id="exampleInputText" placeholder="Nhập Mật Khẩu Lại "
									name="mklai" required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Đăng Ký</button>

							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%
        String mess = (String) request.getAttribute("mess");
        if (mess != null) {
    %>
    <script>
        window.onload = function() {
            alert('Đăng Ký Không Thành Công');
        }
    </script>
    <%
            // Xóa thông báo lỗi sau khi đã hiển thị
            request.removeAttribute("mess");
        }
    %>
</body>
</html>