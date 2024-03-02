
<%@page import="bean.admindangnhapbean"%>
<%@page import="bean.Giaybean"%>
<%@page import="bean.Khachhangbean"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="css/allcss.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
		body {
	  	  padding-top: 56px; 
		}
		img{
		max-width: 100%;
		}
		.btnadd{
			margin-top: 10px;
			margin-left: 500px;
			margin-bottom: 20px;
		}
	</style>

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
				<a href="dangxuatController" class="btn btn-primary"
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

<%		String tb = (String)request.getAttribute("tb");
		if(tb!=null)
			out.print("<script>alert('Thêm Thành Công');</script>");
%>

<div class="container">
  <h2>Xin Chào Admin</h2>
  <!-- Button to Open the Modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    Thêm Sản Phẩm 
  </button>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Thêm Sản Phẩm</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
          <form action="themsanphamController" method="post" enctype="multipart/form-data">
			<h2>Thông tin</h2>
				<table class="table table-hover">
					<tr>
						<td width="200"><span>Mã sản phẩm</span></td>
						<td width="300"><input type="text" name="masanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Tên sản phẩm</span></td>
						<td width="300"><input type="text" name="tensanpham" size="50"></td>
					</tr>
					<tr>
						<td width="200"><span>Số Lượng</span></td>
						<td width="300"><input type="number" name="soLuong" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Giá</span></td>
						<td width="300"><input type="number" name="gia" size="50" min="0"></td>
					</tr>
					<tr>
						<td width="200"><span>Mã loại</span></td>
						<%ArrayList<loaibean> dsloai =(ArrayList<loaibean>)request.getAttribute("dsloai");%>
						  <td width="300"><select name ="maloai" >
						  <%for(loaibean loai: dsloai) {%>
						  <option value="<%=loai.getMaloai()%>"><%=loai.getTenloai()%></option>
						  <%} %>
						  </select>
						  </td>
					<!-- <td width="300"><input type="text" name="maloai" size="50"></td> -->
					</tr>
					<tr>
						<td width="200"><span>Ảnh</span></td>
						<td width="300"><input type="file" name="anh" size="50" placeholder="Ảnh sản phẩm"></td>
						
					</tr>
					<!-- <tr>
						<td width="200"><span>Ngày nhập</span></td>
						<td width="300"><input type="date" name="ngaynhap" size="50"></td>
					</tr> -->
					<tr>
						<td width="200"><span>Hang giày</span></td>
						<td width="300"><input  type="text" name="Hang giay" size="50"></td>
					</tr>
				</table>
			<button type="submit" class="btnadd">Thêm</button>
		</form>
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
  
</div>

<div class="addProduct">	
	
    <td width="800" valign="top">
		<table class="table table-hover">
			<tr>
				<td width="150"><b>Mã giay</b></td>
				<td width="150"><b>Tên giay</b></td>
				<td width="150"><b>Số lượng</b></td>
				<td width="150"><b>Giá</b></td>
				<td width="150"><b>Mã loại</b></td>
				<td width="150"><b>Ảnh </b></td>
				<td width="150"><b>hang giay</b></td>
				
				
			</tr>
			<%
					ArrayList<Giaybean> dsgiay = new ArrayList<>();
					if (request.getAttribute("dsgiay") != null) {
						dsgiay = (ArrayList<Giaybean>)request.getAttribute("dsgiay");
					}
					if (dsgiay != null) {
					  for (Giaybean s : dsgiay) {
					%>
			<tr>
				<td width="150"><b><%=s.getMagiay() %></b></td>
				<td width="150"><b><%=s.getTengiay() %></b></td>
				<td width="150"><b><%=s.getSoluong()%></b></td>
				<td width="150"><b><%=s.getGia() %></b></td>
				<td width="150"><b><%=s.getMaloai() %></b></td>
				<td width="150" ><img style="width: 150px;" alt="" src="<%=s.getAnh() %>"></td>
				<td width="150"><b><%=s.gethanggiay() %></b></td>
				<td><a
					href="adminxoagiayController?ms=<%=s.getMagiay()%>">
					<button>Xóa</button></a>
					<a
					href="adminsuagiayController?ms=<%=s.getMagiay()%>&tab=select">
					<button>Sửa</button></a>
					</td>
				
			</tr>
			<%} %>
			<%} %>
		</table>
	</td>
</body>
</html>