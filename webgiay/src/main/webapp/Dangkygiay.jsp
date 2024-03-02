<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.Giaybean"%>
<%@page import="bean.Khachhangbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.Giaybo"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.khachhangbo"%>
<%@page import="dao.loaidao"%>
<%@page import="dao.Giaydao"%>
<%@page import="dao.Khachhangdao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bán giay Online</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
      		Hi: <%Khachhangbean kh=(Khachhangbean)session.getAttribute("dn");
      		               out.print(kh.getHoten()); %>
      </a></li>
      <%} %>
    </ul>
  </div>
</nav>
<div>


                    <h2 style="text-align:center">ĐĂNG KÝ KHÁCH HÀNG</h2><table border="1" width="400" height="500" align="center">

                        <form action="Ktdk" method="post">
                        <tbody>
                            <tr style="height:50px">
                                <td> Họ tên khách hàng:</td>
                                <td>
                                    <input id="HotenKH" name="HotenKH" type="text" value="">

                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td> Tên đăng nhập:</td>
                                <td>
                                    <input id="TenDN" name="TenDN" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td>  Mật khẩu:</td>
                                <td>
                                    <input id="Matkhau" name="Matkhau" type="password">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td>Mật khẩu nhập lại: </td>
                                <td>
                                    <input id="Matkhaunhaplai" name="Matkhaunhaplai" type="password">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td> Email:</td>
                                <td>
                                    <input id="Email" name="Email" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td> Địa chỉ:</td>
                                <td>
                                    <input id="Diachi" name="Diachi" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td>Điện thoại:</td>
                                <td>
                                    <input id="Dienthoai" name="Dienthoai" type="text" value="">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td> Ngày sinh :</td>
                                <td>
                                    <input type="date" name="Ngaysinh">
                                </td>
                            </tr>
                            <tr style="height:50px">
                                <td></td>
                                <td>
                                    <input type="Submit" value="Đăng ký">
                                </td>
                            </tr>
                        </tbody>
                        </form>
                    </table>
                </div>
                <%
		if (request.getParameter("kt") != null)
			out.print("<script>alert('mat khau nhap vao khong khop');</script>");
		%>
</body>
</html>