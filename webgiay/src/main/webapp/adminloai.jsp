<%@page import="bean.admindangnhapbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<%@include file="css/allcss.jsp"%>
<title>Insert title here</title>

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
					Nhập</a> <a href="dangkyadminController" class="btn btn-primary">Đăng
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
			<% String ml = (String)request.getAttribute("maloai");
				String tenloai = (String)request.getAttribute("tenloai");
			%>

			<form action="adminLoaiController" method ="post">
					Mã Loại : <input type="text" name ="txtmaloai" value="<%=(ml==null)?"":ml %>"> <br>
					Tên Loại : <input type = "text" name ="txttenloai" value="<%=(tenloai==null)?"":tenloai %>"><br>
					<input type="submit" name = "butadd" value = "Add" class="btn-primary">
					<input type = "submit" name = "butupdate" value = "Update" class = "btn-primary">
					
				
			</form>
			<table class = "table table-hover">
		<%
		
		ArrayList<loaibean> ds = (ArrayList<loaibean>) request.getAttribute("ds");
		for(loaibean loai:ds){
		%>	
				<tr><td><%=loai.getMaloai() %></td>
					<td><%=loai.getTenloai() %></td>
			<td>	<a href="adminLoaiController?ml=<%=loai.getMaloai()%>&tab=select">Select</a></td>
			<td>	<a href="adminLoaiController?ml=<%=loai.getMaloai()%>&tab=delete">Delete</a></td>
				</tr>
				
		<%} %>
		</table>
			
</body>
</html>