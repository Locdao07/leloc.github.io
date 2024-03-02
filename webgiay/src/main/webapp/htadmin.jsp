<%@page import="bean.admindangnhapbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-	8">
<title>Insert title here</title>
<%@include file="css/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid p-3">
		<div class="row">
			<div class="col-md-3">
				<h3>LOGO</h3>
			</div>

			<div class="col-md-4">
				<form class="form-inline" action="Htgiay">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Tìm Kiếm" aria-label="Search" name="txttim">
					<button class="btn btn-primary my-2 my-sm-0" type="submit"
						name="th">Tìm Kiếm</button>
				</form>
			</div>

			<div class="col-md-5">
				<%
					admindangnhapbean dn = (admindangnhapbean) session.getAttribute("admin");
					if (dn == null) {
				%>
				<a href="dangnhapadminController" class="btn btn-success">Đăng
					Nhập</a> <a href="dangkyadmin" class="btn btn-primary">Đăng
					Ký</a>
				<%
					} else {
				%>
				<p class="btn btn-success">
					xin chào:
					<%=dn.getTendangnhap()%></p>
				<a href="thoat" class="btn btn-primary"
					style="margin-bottom: 18.5px; height: 37.9px"> Dang xuat</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary ">
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="adminController">Trang Chủ <span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>
	</nav>

	<div class="container">
			<div class="row p-5">
			<!-- P1 -->
				<div class="col-md-3">
				<a href="adminsanphamController">
				<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x text-primary"></i><br>
					<h4>Thêm Sản Phẩm</h4>
					-------------------
				</div>
				</div>
				</a>
				</div>	
				<!-- P2 -->
				<div class="col-md-3">
				<a href="adminLoaiController">
				<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x text-danger"></i><br>
					<h4>Thêm Loại</h4>
					-------------------
				</div>
				</div>
				</a>
				</div>	
				<!-- P3 -->
				<div class="col-md-3">
				<a href="adminxacnhanController">
				<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x text-warning"></i><br>
					<h4>Xác Nhận</h4>
					-------------------
				</div>
				</div>
				</a>
				</div>	
				<!-- P4 -->
				<div class="col-md-3">
				<a href="Htgiay">
				<div class="card">
				<div class="card-body text-center">
					<i class="fas fa-plus-square fa-3x text-primary"></i><br>
					<h4>WEB</h4>
					-------------------
				</div>
				</div>
				</a>
				</div>	
			</div>
		</div>
</body>
</html>