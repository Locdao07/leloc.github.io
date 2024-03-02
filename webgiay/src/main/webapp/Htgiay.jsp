
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
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="Htgiay">Trang chủ</a></li>
      <li><a href="Htgio">Giỏ hàng </a></li>
        <li><a href="ThanhtoanController">Thanh toán</a></li>
          <li><a href="Lichsumuahangcontroller">Lịch sử mua hàng: <%=session.getAttribute("ss") %></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Dangkygiay"><span class="glyphicon glyphicon-user"></span> Đăng Ký</a></li>
      <li><a href="thoat"><span class="glyphicon glyphicon-user"></span> Đăng Xuất</a></li>
      <%if(session.getAttribute("dn")==null){ %>
      
      <li><a href="Ktdn">
      <span class="glyphicon glyphicon-log-in"></span> Đăng nhập </a></li>
      <%}else{ %>
      <li><a href="#">
      <span class="glyphicon glyphicon-log-in"></span> 
      		chào:  <%Khachhangbean kh=(Khachhangbean)session.getAttribute("dn");
      		               out.print(kh.getHoten()); %>
      </a></li>
      <%} %>
    </ul>
  </div>
</nav>

<%loaibo lbo = new loaibo();
Giaybo sbo = new Giaybo();
ArrayList<loaibean> dsgiay1 = (ArrayList<loaibean>)request.getAttribute("dsgiay1");
ArrayList<Giaybean> dsgiay = (ArrayList<Giaybean>)request.getAttribute("dsgiay");
int n=dsgiay.size();
int st = (n/10 == 0) ? 1 : n/10;
if(n/10 != 0) st++;
%>


<table width ="1000" align="center">
   <tr>
     <td width ="200" valign="top">
       <table class="table table-hover">
         <%for(loaibean l: dsgiay1){ %>
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
      <table class="table table-hover">
	     <%
	    
	     int trang = (int)request.getAttribute("trang");
		    int start = (trang-1)*10;
		    int end = (trang)*10;
		 if(trang  == n/10 +1){
				if(n%10 != 0)end = (trang -1)*10 + n%10;
			} 
		    for(int i=start;i<end;i++){
		    	Giaybean s = dsgiay.get(i);
		%>
           <tr>
            <td>
                     <img src="<%=s.getAnh() %>"><br>
                               <%=s.getTengiay() %> <br>
                               <%=s.gethanggiay() %> <br>
                               <%=s.getGia() %> <br>
                     <a href="Giohang?mg=<%=s.getMagiay()%>&tg=<%=s.getTengiay()%>&gia=<%=s.getGia()%>">
                     <img src="datmua1.jpg" width='100'>
                     </a> 


	          </td>
	          <%i++;
	          if(i<n){
	          s=dsgiay.get(i);
	          %>
	          <td>
	            <img src="<%=s.getAnh() %>"><br>
	              <%=s.getTengiay() %> <br>
	              <%=s.gethanggiay() %> <br>
	              <%=s.getGia() %> <br>
	          <a href="Giohang?mg=<%=s.getMagiay()%>&tg=<%=s.getTengiay()%>&gia=<%=s.getGia()%>">
	              <img src="datmua1.jpg" width='100'>
	            </a> 

	          </td>
	          <%} %>
	          
	          </tr>
	          <%} %>
     </table>
     <nav aria-label="Page navigation example">
				  <ul class="pagination">
						<%                //Button Previous
					        int back = 0;
					        if (trang == 0 || trang == 1) {
					            back = 1;//Luon la page 1
					        } else {
					            back = trang - 1;//Neu pages tu 2 tro len thi back tru 1
					        }
					    %>
				<li class="page-item"><a class="page-link" href="Htgiay?trang=<%=back%>">Trang</a></li>
				    	<%for(int i = 1; i<= st; i++){%>
				 		<li class="page-item"><a class="page-link" href="Htgiay?trang=<%=i %>"><%=i %></a></li>
				    <%} %>
				    
							     <%                //Button Previous
						        int next = 0;
						        if(trang == st){
						        	next= st;
						        }else{
						        	next = trang + 1;
						        }
						   
						    %>
				    <li class="page-item"><a class="page-link" href="Htgiay?trang=<%=next%>">Next</a></li>
				  </ul>
				</nav>
     </td>
      <td width ="200" valign="top">
      <form action="Htgiay" method="post">
 		 <input  class="form-control"  name="txttk" type="text" value="" placeholder="Tim kiếm hàng"> <br>
  		 <input class="btn-primary"  name="butt" type="submit" value="Tìm kiếm ">
		</form>
     </td>
   </tr>
</table>
</body>
</html>