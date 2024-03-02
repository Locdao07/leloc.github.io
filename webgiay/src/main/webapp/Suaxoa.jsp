<%@page import="bo.Giohangbo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
Giohangbo gh=(Giohangbo)session.getAttribute("gio");
if(request.getParameter("butcheck")!=null){
	String[] c=request.getParameterValues("check");
	if(c!=null)
	for(String st:c)
		gh.Xoa(st);
}
if(request.getParameter("butsua")!=null){
	String mg=request.getParameter("butsua");
	String tendksl="txt"+mg;
	long sl=Long.parseLong(request.getParameter(tendksl));
	gh.Them(mg, "", 0, sl);
}else
	if(request.getParameter("butxoa")!=null){
		String mg=request.getParameter("butxoa");
		gh.Xoa(mg);
	}
session.setAttribute("gio", gh);//Luu lai session
if(gh.ds.size()==0)//Neu trong gio het hang
	   response.sendRedirect("Htgiay.jsp");
else
	   response.sendRedirect("Htgio.jsp");
%>


/*String ms=request.getParameter("ms");
   giohangbo gh=(giohangbo)session.getAttribute("gio");
   //Neu kich vao nut Update
   if(request.getParameter("butsua")!=null){
	    long sl=Long.parseLong(request.getParameter("txtsl"));
	    gh.Them(ms, "" , 0, sl);
	}else
		gh.Xoa(ms);
     session.setAttribute("gio", gh);
     if(gh.ds.size()==0)
    	 response.sendRedirect("htsach.jsp");
     else 
    	 response.sendRedirect("htgio.jsp");*/
    %>
</body>
</html>