<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.Khachhangbean"%>
<%@page import="bean.Lichsumuahangbean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dao.Lichsumuahangdao"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.Giaybo"%>
<%@page import="bean.Giaybean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.Giaydao"%>
<%@page import="dao.loaidao"%>
<%@page import="bean.loaibean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>  
<title>Bootstrap Example</title>
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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="./assets/font/themify-icons-font/themify-icons/themify-icons.css"> 
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="Htgiay">Trang chủ</a></li>
      <li><a href="Htgio">Giỏ hàng</a></li>
        <li><a href="Thanhtoancontroller">Thanh toán</a></li>
           <li><a href="Lichsumuahangcontroller">Lịch Sử Mua Hàng </a></li>
        
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoat"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
      <li><a href="Dangkygiay"><span class="glyphicon glyphicon-user"></span> Đăng kí</a></li>
      <%if(session.getAttribute("dn")==null){ %>
      <li><a href="Dangnhapcontroller">
      <span class="glyphicon glyphicon-log-in"></span> 
      		Đăng nhập
      </a></li>
      <%}else{ %>
      <li><a href="#">
      <span class="glyphicon glyphicon-log-in"></span> 
      		chào: <%Khachhangbean kh=(Khachhangbean)session.getAttribute("dn");
      		               out.print(kh.getHoten()); %>
      </a></li>
      <%} %>
    </ul>
  </div>
</nav>
			
		<table border="1" width="800" valign="top" class="table table-light">
						
                   <thead>
						<tr><th scope="col">STT</th>
							<th scope="col">Mã Khách Hàng</th>
							<th scope="col">Tên Giày</th>
							<th scope="col">Giá</th>
							<th scope="col">Số Lượng Mua</th>
							<th scope="col">Thành Tiền</th>
							<th scope="col">Đã Mua</th>
						</tr>
					</thead>
					<tbody>
						 <%  if (request.getAttribute("dslichsu") != null){
			   		    ArrayList<Lichsumuahangbean> ls=(ArrayList<Lichsumuahangbean>)request.getAttribute("dslichsu");
						int n = ls.size();
						int i=1;
						for (Lichsumuahangbean s : ls) {
							%>
							<tr>
									<td><%=i++%></td>
									<td><%=s.getMakh()%></td>							
									<td><%=s.getTengiay()%></td>
									<td><%=s.getGia() %> </td>
									<td><%=s.getSoluong()%></td>
									<td><%=s.getThanhtien()%></td>
									<td><%=(s.isDamua()?"Da xac nhan thanh toan":"chua xac nhan thanh toan")%></td>
							</tr>
							<%}%>
							<%i++; %>
							<%}else{%>
							Bạn chưa có đơn hàng, mời bạn vào :	 <a href="Htgiay">Đặt mua hàng</a>
							<% }%>
					</tbody>
				</table>
			
		<td valign="top" width="100">
			<form action="Htgiay" method="post">
				 <input name="txttk" type="text" value="" style="float: right;" placeholder="Tìm kiếm" > 
      			<button style="float: right;" name="butdn" type="submit" class="btn btn-primary active"  value="Tìm kiếm">
      			<i class="ti-search"></i>
      			Tìm Kiếm</button> 
			</form>
		</td>
		
		</tr>
	</table>
</body>
</html>
