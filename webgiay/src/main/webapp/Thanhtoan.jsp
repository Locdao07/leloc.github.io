<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>

	body{
		width: 100vw;
		overflow-x: hidden;
	}
	*{
		box-sizing: border-box;
	}

	.box{
		display: flex;
	}
	
	.box__item{
		display: flex;
		flex-direction: column;
	}
	.img{
		margin-right: 16px;
	}
	
	.header{
		position: fixed;
		top: 0;
		right: 0;
		left: 0;
		border-top-left-radius: 0;
		border-top-right-radius: 0;
	}
	
	.table{
		width: 100vw;
	}
	
	.table__item{
		margin-top: 40px;
	}
	
	.paddingBottom{
		padding-bottom: 8px;
	}
	
	.container{
		display: flex;
		width: 100vw;
	}
	
	.containerItem{
		width: 200px;
		
	}
	
	.containerItem.maxWidth{
		flex: 1;
	}
	.pagination {
	  display: flex;
	  justify-content: center;
	  width: 100%;
	}
	
	.pagination a {
	  color: black;
	  float: left;
	  padding: 8px 16px;
	  border-radius: 5px;
	  transition: background-color .3s;
	  border: 1px solid #ddd; /* Gray */
	  margin: 0 2px;
	  cursor: pointer;
	  text-align: center;
	  text-decoration: none;
	}
	.pagination a.active {
	  background-color: #4CAF50;
	  color: white;
	}
	
	.pagination a:hover:not(.active) {background-color: #ddd;}
	.navContent{
		display: flex;
		flex-direction: column;
	}
	
	.box{
		display: flex;
		
	}
	
	.navItem{
		width: 100%;
		padding: 8px 0;
		border-bottom: 1px solid #ccc;
		text-decoration: none;
		text-transform: none;
	}
	
	a:hover{
		color: #23527c;
    	text-decoration: none;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li><a href="Htgiay">Trang chủ</a></li>

				<li><a href="Giohang">Giỏ hàng</a></li>
				<li><a href="Thanhtoancontroller">Thanh toán</a></li>
				<li  class="active"><a href="Lichsumuahangcontroller">Lịch sử mua hàng</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Ktdk"><span
						class="glyphicon glyphicon-user"></span> Đang kí</a></li>
				<c:choose>
					<c:when test="${dn == null}">
						<li><a href="Ktdn"><span
								class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="#"><span></span>Hi: ${dn} </a></li>
						<li><a href="Ktdn"><span
								class="glyphicon glyphicon-log-out"></span> Đăng xuất</a></li>

					</c:otherwise>
				</c:choose>



				

			</ul>
		</div>
	</nav>	
	<table align="center" class='table table__item'>
		
		<tr class='container'>
			<td valign="top" class='containerItem navContent'>
					<c:forEach var="l" items="${dsloai}">
						<div class='box'>
							<a class='navItem' href="Htgiay?ml=${l.getMaloai()}">${l.getTenloai()}</a>
						</div>
					</c:forEach>
			</td>
			
			<td valign="top" class='containerItem maxWidth'>	
			<c:choose>
				<c:when test="${dslichsu != null}">			
				<table class="table table-hover">
					<tr>
						<th>Mã hóa đơn</th>
					    <th>Tên Giày</th>
					    <th>Ngày mua</th>
						<th>Số lượng</th>
					    <th>Giá</th>
					    <th>Thanh tiền</th>
						<th>Tình trạng</th>
					</tr>
					
						<c:forEach var="item" items="${dslichsu}">
							<tr>
								<td>${item.getMaHoaDon() }</td>
								<td>${item.getTenGiay() }</td>
								<td>${item.getNgayMua() }</td>
								<td>${item.getSoLuongMua() }</td>
								<td>${item.getGia() }</td>
								<td>${item.getThanhTien() }</td>
								<td>${item.isDaMua() ? "Đã thanh toán" : "Chưa thanh toán" }</td>
							</tr>
						</c:forEach>		
				</table>
				</c:when>
				<c:otherwise>
					 Bạn chưa có đơn hàng, mời bạn <a href="Giohang">Đặt mua hàng</a>
				</c:otherwise>
			</c:choose>
			</td>
			<td width="200" valign="top">
				<form action="Htgiay" method="post">
					<input class="form-control" name="txttk" type="text" value=""
						placeholder="Tìm kiếm hàng"> <br> <input
						class="btn btn-primary" name="butt" type="submit" value="Tìm kiếm">
				</form>

			</td>
		</tr>
	</table>
</body>
</html>