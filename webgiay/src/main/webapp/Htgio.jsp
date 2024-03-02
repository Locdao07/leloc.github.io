<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="bean.Giohangbean"%>
<%@page import="bo.Giohangbo"%>
<%@page import="bean.Giaybean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.loaibean"%>
<%@page import="bo.Giaybo"%>
<%@page import="bo.loaibo"%>
<%@page import="bean.Khachhangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Web bán giày</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
if(session.getAttribute("dem")==null) {	
	long dem=0;
	session.setAttribute("dem", dem);
}

long dem=0;
if(session.getAttribute("dem")!=null)
	{dem = (long) session.getAttribute("dem");}


%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="Htgiay">Trang chủ</a></li>
      <li><a href="Htgio">Giỏ hàng <%if(dem>0){ %><span class="slmua"><%=dem%></span><%}%></a></li>
        <li><a href="Thanhtoancontroller">Thanh toán</a></li>
          <li><a href="Lichsumuahangcontroller">Lịch sử mua hàng: <%=session.getAttribute("ss") %></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="thoat"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>
      <%if(session.getAttribute("dn")==null){ %>
      <li><a href="Ktdn">
      <span class="glyphicon glyphicon-log-in"></span> 
      		Đăng nhập
      </a></li>
      <%}else{ %>
      <li><a href="#">
      <span class="glyphicon glyphicon-log-in"></span> 
      		Chào: <%Khachhangbean kh=(Khachhangbean)session.getAttribute("dn");
      		               out.print(kh.getHoten()); %>
      </a></li>
      <%} %>
    </ul>
  </div>
</nav>


<table width ="1000" align="center">
   <tr>
     <td width ="200" valign="top">
       <table class="table table-hover">
         <%
         ArrayList<loaibean> dsgiay3 = (ArrayList<loaibean>)request.getAttribute("dsgiay3");
         for(loaibean l: dsgiay3){ %>
         <tr><td>
           <a href="Htgiay?ml=<%=l.getMaloai()%>">
               <%=l.getTenloai() %>
            </a>
           </td>
           </tr>
           <%} %>
       </table>
     </td>
      <td width ="600" valign="top">
      <form action="Suaxoa" method="post">
      <table class="table table-hover">
	    <%
	   Giohangbo gh=(Giohangbo)session.getAttribute("gio");
	   if(gh!=null){
		   for(Giohangbean h: gh.ds){%>
		   	<tr>
		   	<td>
		   	<input type="checkbox" name="check" value="<%=h.getMagiay() %>">
		   	</td>
		   	<td> <%=h.getMagiay() %> 	</td>
		   	<td> <%=h.getTengiay() %> 	</td>
		   	<td> <%=h.getSoluong() %> 	</td>
		   	<td> <%=h.getGia() %> 	</td>
		   	<td>
		   	
		   	   <input type="number" min="1" name="txt<%=h.getMagiay()%>">
		   	    <button type="submit" name="butsua" value="<%=h.getMagiay()%>">
		   	     Sửa</button>
		   	    <button type="submit" name="butxoa" value="<%=h.getMagiay()%>"> 
		   	   Xoa</button>
		   	
		   	</td>
            <td> <%=h.getThanhtien() %> 	</td>
		   <td>Size:<select name="s1"> 
                    <option>40</option>
                    <option>41</option></td>
		   	
		   	</tr>
			   
		<% } }%>
      </table>
     <button type="submit" name="butcheck"> 
		   	    xoa check</button> 
	 <a href="Dathang"><button type="button" name="but1"> 
		   	   Xác nhận đặt mua
		  </button> </a>
		   	
      <div>	
				<p>Số lượng: <%try{%>
					<% long sum = 0;
					for(Giohangbean h : gh.ds){
						sum += h.getSoluong();%>
					<%}%>
					<span style="font-weight: 600; font-size: 20px"><%=sum %></span>
				 <% }
				 catch(Exception e){
				 }%>
				</p>
				<p>Thành tiền:
				<%try{%>
					<% long tong = 0;
					for(Giohangbean h : gh.ds){
						tong += h.getThanhtien();%>
					<%}%>
					<span style="font-weight: 600; font-size: 20px"><%=tong %></span>
				 <% }
				 catch(Exception e){
				 	
				 }%>
				 <a href="xoaAllcontroller" class="btn btn-default">Xóa toàn bộ hàng</a>
				 <a href="Htgiay" class="btn btn-default">Tiếp Tục Mua </a>
				</p>
			</div>
					   	    
  
			
     </td>
      <td width ="200" valign="top">
      <form action="Htgiay" method="post">
 		 <input  class="form-control"  name="txttk" type="text" value="" placeholder="Tìm kiếm hàng"> <br>
  		 <input class="btn-primary"  name="butt" type="submit" value="Tìm kiếm">
		</form>
     </td>
   </tr>
</table>
</body>
</html>