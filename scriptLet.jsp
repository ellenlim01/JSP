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
	int a = 10;
	int b = 20;
	int c = a+b;
	out.print("<div>");
	out.print(c+2);
	out.print("</div>");
	%>
</body>
</html>