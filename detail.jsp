<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cm.koreait.board.BoardVO" %>
<% 
	String no = request.getParameter("no"); //return type: String
	BoardVO vo = (BoardVO) request.getAttribute("data");//return type: Object
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
</head>
<body>
	<h1>Detail <%=no %></h1>
	<div><%=request.getParameter("no")%></div>
	<div>
		<form action="/del" method="post">
			<input type="hidden" name="no" value="">
			<input type="submit" value="삭제">
		</form>
		<a href="/del?no=<%=no %>"><button>삭제</button></a>
		
	</div>
	<div>제목: <%=vo.getTitle() %></div>
	<div><%=vo.getCtnt() %> </div>
</body>
</html>