<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="cm.koreait.board.*" %>
<%
	List<BoardVO> list = (List<BoardVO>) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>리스트</h1>
	<div>
		<a href="/write">글쓰기</a>
	</div>
	<div>
		<% 
			for(int i=0; i<list.size(); i++) {
				BoardVO vo = list.get(i);
		%>
			<div><%=i  %>, <%=vo.getTitle() %>, <%=vo.getCtnt() %></div>
		<% } %>
	</div>
</body>
</html>