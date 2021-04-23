<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>스클립트릿 이해 미션</div>
	<div>for문을 이용해 1~10까지 세로 방향으로</div>

	<%	
		for(int i = 1; i < 11; i++) {
		out.print("<div>");
		out.print(i);
		out.print("</div>");
		}
	%>
	<hr>
	<% for(int i=1; i<=10; i++) { %>
		<div><%=i %></div>
	<% } %>
</body>
</html>