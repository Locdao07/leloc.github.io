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
      <li><a href="thoat"><span class="glyphicon glyphicon-user"></span>Đăng xuất</a></li>
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

			
 
<table width ="1000" align="center">
   <tr>
     <td width ="200" valign="top">
       <table class="table table-hover">
         <%loaibo lbo=new loaibo();
        ArrayList<loaibean> dsgiay1=lbo.getloai();
        for(loaibean l: dsgiay1){
      %>
         <tr><td>
           <a href="Htgiay?ml=<%=l.getMaloai()%>">
               <%=l.getTenloai() %>
            </a>
           </td>
           </tr>
           <%} %>
       </table>
     </td>
      <td width="600" valign="top"> 
         <table> 
       <form action="Ktdn" method="post" id="form">
          Tên Đăng Nhập: <input name="txtun" type="text"><br><br>
          Mật Khẩu:      <input name="txtpass" type="password"><br><br>
          <input name="but1" type="submit" value="Đăng nhập"><br>
          <div class="g-recaptcha" data-sitekey="6LdFKBMjAAAAADCYVmxuxZooLabzQ9tYmiGjONxi"></div>
          <div id="error"></div>
          Bạn chưa có tài khoản ?<a href="Dangkygiay">Đăng Ký</a>
       </form>
          <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        
             <script>
			    window.onload = function (){
				let isValid = false;
				const form = document.getElementById("form");
				const error = document.getElementById("error");
				
				form.addEventListener("submit", function (event){
					event.preventDefault();
					const response = grecaptcha.getResponse();
					if (response){
						form.submit();
					} else {
						error.innerHTML = "Xin hãy ấn check ";
					}
				});
			}
		</script>
		 <%String tb = (String)request.getAttribute("error");
           if(tb!= null){ %>
               <h5 style="color: red">thông tin nhập không hợp lệ</h5>   
         <% }%> 
   </tr>
</table>
</body>

</html>