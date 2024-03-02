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
  String un=request.getParameter("txtun");
  String pass=request.getParameter("txtpass");
  if(!un.equals("")&&!pass.equals("")){
	  session.setAttribute("dn", un);
	 response.sendRedirect("htsach.jsp"); 
  }
  else
	  response.sendRedirect("formdangnhap.jsp?kt=1");
%>
</body>
</html>