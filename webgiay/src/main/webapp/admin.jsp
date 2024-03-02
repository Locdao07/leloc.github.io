<%@page import="java.util.ArrayList"%>
<%@page import="bean.admindangnhapbean"%>
<%@page import="bean.Xacnhanbean"%>

<%@page import="bean.Khachhangbean"%>


<%@page import="bean.loaibean"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="css/allcss.jsp" %>
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

	<div class="p-3"> </div>
	<div class=" border " style ="border:5px">
	<table class="table table-hover table-bordered">
		<%-- <%
			ArrayList<adminxacnhanbean> ds = 
				(ArrayList<adminxacnhanbean>)request.getAttribute("ds");
			for (adminxacnhanbean xn: ds){
		%>
		<tr>
			<td><%=xn.getHoten() %></td>
			<td><%=xn.getTensach() %></td>
			<td><%=xn.getSoLuongMua() %></td>
			<td><%=xn.getGia() %></td>
			<td><%=xn.getThanhtien() %></td>
			<td><a href="adminxacnhanController?mact=<%=xn.getMaChiTietHD() %>">
					Xác nhận
			</a></td>
		</tr>
		<%} %> --%>
		<tr  class="info">
			<td>Họ tên</td>
			<td>Tên giày</td>
			<td>Ngay mua</td>
			<td>Số lượng mua</td>
			<td>Giá</td>
			<td>Thành tiền</td>
			<td>Hành động</td>
			
		</tr>
		
		<c:forEach var="xn" items="${ds}">
		<tr>
			<td>${xn.getHoten()}</td>
			<td>${xn.getTengiay()}</td>
			<td>${xn.getNgaymua()}</td>
			<td>${xn.getSoLuongMua()}</td>
			<td>${xn.getGia()}</td>
			<td>${xn.getThanhtien()}</td>
			<td><a href="adminxacnhanController?mact=${ xn.getMaChiTietHD()}">
					Xác nhận
			</a></td>
			
		</tr>
		</c:forEach>
	</table>
</div>
<div  style="margin-top: 250px">
 <footer class="bg-secondary text-center text-white" >
  <!-- Grid container -->
 <div class="row mt-3">

                <!--First column-->
                <div class="col-md-3 col-lg-4 col-xl-3 mb-4">
                    <h6 class="text-uppercase font-weight-bold m-5"><strong>Tiệm bán Giay</strong></h6>
                    <hr class="blue mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    
                </div>
                <!--/.First column-->

               

                <!--Fourth column-->
                <div class="col-md-4 col-lg-3 col-xl-3">
                    <h6 class="text-uppercase font-weight-bold p-3"><strong>Liên hệ</strong></h6>
                    <hr class="blue mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                    <p><i class="fas fa-home mr-3"></i> Phú Mậu, Phú Vàng, T-T-Huế</p>
                    <p><i class="fas fa-envelope mr-3"></i> 20T1020446@husc.edu.vn</p>
                    <p><i class="fas fa-phone mr-3"></i> +84 3 445 699 877</p>
                </div>
                <!--/.Fourth column-->

            </div>
</footer>
</div>
</body>
</html>