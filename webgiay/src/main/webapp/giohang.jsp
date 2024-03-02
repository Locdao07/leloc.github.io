<%@page import="bo.Giohangbo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String magiay =request.getParameter("mg");
	String tengiay =request.getParameter("tg");
	long gia=Long.parseLong(request.getParameter("gia"));
	Giohangbo gh=null;
	//Neu mua lan dau thi tao cho kh 1 gio: session
	if(session.getAttribute("gio")==null){
		gh=new Giohangbo();//Cap phat vung nho de luu gio
		session.setAttribute("gio", gh);//Tao session
	}
	//b1: Luu session ra bien
	gh=(Giohangbo)session.getAttribute("gio");
	//b2: Thay doi bien
	gh.Them(magiay, tengiay, gia, (long)1);
	//b3: Luu Lại session
	session.setAttribute("gio", gh);
	//Hien thi gio
	response.setCharacterEncoding("Htgio.jsp");
	
%>
</body>
</html>